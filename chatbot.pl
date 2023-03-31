:- dynamic has/2.

/*all symptoms*/
has(headache, false).
has(kulang_sa_lambing, false).
has(fever, false).
has(cough, false).
has(di_mapakali, false).

/*all diseases*/
/*migraine symptoms*/
disease_requires(migraine, headache).
disease_requires(migraine, kulang_sa_lambing).

/*flu symptoms*/
disease_requires(flu, fever).
disease_requires(flu, cough).

/*horny symptoms*/
disease_requires(horny, kulang_sa_lambing).
disease_requires(horny, di_mapakali).

/*all classifications*/
classification(head_disease).
classification(body_disease).

/*all diseases classifications*/

/*head diseases*/
classification_disease(head_disease, migraine).
classification_disease(head_disease, horny).

/*body diseases*/
classification_disease(body_disease, flu).

/*all classification questions*/
classification_question(head_disease, "Are you experiencing head pains?").
classification_question(body_disease, "Does your whole body hurt?").

/*all symptom questions*/
symptom_question(headache, "Do you have a headache?").
symptom_question(kulang_sa_lambing, "Do you feel a lack of affection?").
symptom_question(fever, "Do you have a fever?").
symptom_question(cough, "Do you have a cough?").
symptom_question(di_mapakali, "Do you feel like you can't stay still?").

ask_classification(Classification) :-
    classification_question(Classification, Question),
    format("~w (yes/no): ", [Question]),
    read(Answer),
    (Answer = yes ->
        true
    ;
        fail
    ).

ask_symptom(Symptom) :-
    symptom_question(Symptom, Question),
    format("~w (yes/no): ", [Question]),
    read(Answer),
    (Answer = yes ->
        HasSymptom = true
    ;
        HasSymptom = false
    ),
    retract(has(Symptom, _)),
    assert(has(Symptom, HasSymptom)).

subset([], _).
subset([Head|Tail], List) :-
    member(Head, List),
    subset(Tail, List).

check_disease_exact(Disease) :-
    bagof(Symptom, disease_requires(Disease, Symptom), RequiredSymptoms),
    maplist(has_true, RequiredSymptoms).

check_disease(Disease) :-
    once((disease_requires(Disease, _), check_disease_exact(Disease))).

has_true(Symptom) :-
    has(Symptom, true).

remove_subsets([], []).
remove_subsets([Disease-Symptoms | Rest], Filtered) :-
    remove_subsets(Rest, FilteredRest),
    (subset(Symptoms, FilteredRest) ->
        Filtered = FilteredRest
    ;
        Filtered = [Disease-Symptoms | FilteredRest]
    ).


check_all_diseases :-
    findall(Disease-Symptoms, distinct(Disease, (check_disease(Disease), bagof(Symptom, disease_requires(Disease, Symptom), Symptoms))), DiagnosedDiseaseSymptoms),
    remove_subsets(DiagnosedDiseaseSymptoms, FilteredDiagnosedDiseaseSymptoms),
    findall(Disease, member(Disease-_, FilteredDiagnosedDiseaseSymptoms), DiagnosedDiseases),
    (DiagnosedDiseases = [] ->
        writeln('We could not determine your disease. Please consult a doctor.')
    ;
        format('You have been diagnosed with: ~w.\n', [DiagnosedDiseases])
    ).

main :-
    writeln("Select the classification of the disease you think you might have:"),
    findall(Classification, classification(Classification), Classifications),
    member(SelectedClassification, Classifications),
    ask_classification(SelectedClassification),
    !,
    findall(Disease, classification_disease(SelectedClassification, Disease), Diseases),
    findall(Symptom, (member(Disease, Diseases), disease_requires(Disease, Symptom)), DiseaseSymptoms),
    list_to_set(DiseaseSymptoms, UniqueDiseaseSymptoms),
    maplist(ask_symptom, UniqueDiseaseSymptoms),
    check_all_diseases.

list_to_set(List, Set) :-
    list_to_set_helper(List, [], Set).

list_to_set_helper([], Acc, Acc).
list_to_set_helper([Head | Tail], Acc, Set) :-
    (member(Head, Acc) ->
        list_to_set_helper(Tail, Acc, Set)
    ;
        list_to_set_helper(Tail, [Head | Acc], Set)
    ).