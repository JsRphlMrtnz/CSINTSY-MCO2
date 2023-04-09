:- dynamic has/2.

% all symptoms
has(coughing, null).
has(chest_pains, null).
has(unintended_weight_loss, null).
has(fever, null).
has(loss_of_appetite, null).
has(fatigue, null).
has(joint_damage, null).
has(lung_damage, null).
has(bn_sc_br_ln, null).
has(liver_problems, null).
has(kidney_problems, null).
has(inf_tis_ht, null).
has(vomiting, null).
has(poor_reflexes, null).
has(abdominal_cramps, null).
has(bloating, null).
has(nausea, null).
has(bloody_stool, null).
has(mucus_in_the_stool, null).
has(um_st, null).
has(ubm, null).
has(dehydration, null).
has(abdominal_pain, null).
has(rectal_pain, null).
has(rash, null).
has(eye_pain, null).
has(muscle_pain, null).
has(headaches, null).
has(belly_pain, null).
has(nose_bleed, null).
has(bleeding_gums, null).
has(easy_bruising, null).
has(shaking_chills, null).
has(profuse_sweating, null).
has(anemia, null).
has(seizures, null).
has(coma, null).
has(jaundice, null).
has(confusion, null).
has(s_bv_b, null).
has(pulmonary_edema, null).
has(of_kd_lv_sp, null).
has(low_blood_sugar, null).
has(phlegm, null).
has(lo_bdy_tmp, null).
has(cough_blood, null).
has(shortness_of_breath, null).
has(fast_breathing, null).
has(fast_heartbeat, null).
has(body_pain, null).
has(electrolyte_imbalance, null).
has(low_blood_pressure, null).
has(loose_skin, null).
has(dry_mouth, null).
has(dry_mu_mb, null).
has(muscle_cramps, null).
has(swelling_in_abdomen, null).
has(gray_colored_stool, null).
has(dark_urine, null).
has(joint_pain, null).
has(intense_itching, null).
has(runny_nose, null).
has(sore_throat, null).
has(conjunctivitis, null).
has(kopliks_spots, null).
has(sensitivity_to_light, null).
has(bloody_diarrhea, null).
has(nrw_rec_co, null).
has(irritation_in_the_bladder, null).
has(pn_urin_si, null).
has(frequent_urination, null).
has(blood_in_urine, null).

% all diseases
disease_requires(tuberculosis, [coughing, chest_pain, unintended_weight_loss, fever, profuse_sweating, loss_of_appetite, fatigue, joint_damage, lung_damage, bn_sc_br_ln, liver_problems, kidney_problems, inf_tis_ht, vomiting, poor_reflexes]).
disease_requires(diarrhea , [abdominal_cramps, abdominal_pain, bloating, nausea, vomiting, fever, bloody_stool, mucus_in_the_stool, ubm, dehydration, rectal_pain]).
disease_requires(dengue_fever , [fever, nausea, vomiting, rash, eye_pain, muscle_pain, headaches, belly_pain, nose_bleed, bleeding_gums, easy_bruising, bloody_stool, fatigue]).
disease_requires(malaria ,[shaking_chills, fever, profuse_sweating, headaches, nausea, vomiting, abdominal_pain, anemia, muscle_pain, seizures, coma, bloody_stool, fatigue, jaundice, confusion, s_bv_b, pulmonary_edema, of_kd_lv_sp, low_blood_sugar]).
disease_requires(pneumonia, [chest_pains, confusion, phlegm, fatigue, fever, profuse_sweating, shaking_chills, lo_bdy_tmp, nausea, vomiting, shortness_of_breath, fast_breathing, fast_heartbeat, body_pain, loss_of_appetite, cough_blood]).
disease_requires(cholera ,[fatigue, nausea, vomiting, dehydration, electrolyte_imbalance, low_blood_pressure, loose_skin, dry_mouth, fast_heartbeat, unintended_weight_loss,  dry_mu_mb, muscle_cramps, bloating, um_st]).
disease_requires(typhoid_fever ,[fever, headaches, body_pain, unintended_weight_loss, loss_of_appetite, coughing, profuse_sweating, abdominal_pain, swelling_in_abdomen, rash, intense_itching]).
disease_requires(hepatitis_a, [fatigue, nausea, abdominal_pain, gray_colored_stool, fever, dark_urine, joint_pain, jaundice, intense_itching]).
disease_requires(measles ,[fever, coughing, runny_nose, sore_throat, conjunctivitis, kopliks_spots, rash, fatigue, sensitivity_to_light]).
disease_requires(schistosomiasis , [fever, bloody_diarrhea, body_pain, abdominal_pain, anemia, nrw_rec_co, liver_problems, irritation_in_the_bladder, pn_urin_si, frequent_urination, blood_in_urine]).

% all classifications
classification(infectious, [measles, tuberculosis, dengue_fever, malaria, schistosomiasis]).
classification(waterborne, [hepatitis_a, diarrhea, cholera, typhoid_fever]).
classification(respiratory, [pneumonia]).

% classification questions
classification_question(infectious, 'Have you recently been exposed to someone with an infectious disease?').
classification_question(waterborne, 'Have you recently drank or been in contact with contaminated water?').
classification_question(respiratory, 'Have you noticed differences in your breathing?').

% symptom questions
symptom_question(chest_pains, 'chest pains').
symptom_question(coughing, 'coughing').
symptom_question(unintended_weight_loss, 'unintended weight loss').
symptom_question(fever, 'fever').
symptom_question(loss_of_appetite, 'loss of appetite').
symptom_question(fatigue, 'fatigue').
symptom_question(joint_damage, 'joint damage').
symptom_question(lung_damage, 'lung damage').
symptom_question(bn_sc_br_ln, 'infection or damage of your bones, spinal cord, brain, or lymph nodes').
symptom_question(liver_problems, 'liver problems').
symptom_question(kidney_problems, 'kidney problems').
symptom_question(inf_tis_ht, 'inflammation of the tissues around heart').
symptom_question(vomiting, 'vomiting').
symptom_question(poor_reflexes, 'poor reflexes').
symptom_question(abdominal_cramps, 'abdominal cramps').
symptom_question(bloating, 'bloating').
symptom_question(nausea, 'nausea').
symptom_question(bloody_stool, 'bloody stool').
symptom_question(mucus_in_the_stool, 'mucus in the stool').
symptom_question(um_st, 'undigested materials in the stool').
symptom_question(ubm, 'urgent need to have a bowel movement').
symptom_question(dehydration, 'dehydration').
symptom_question(abdominal_pain, 'abdominal pain').
symptom_question(rectal_pain, 'rectal pain').
symptom_question(rash, 'rash').
symptom_question(eye_pain, 'eye pain').
symptom_question(muscle_pain, 'muscle pain').
symptom_question(headaches, 'headaches').
symptom_question(belly_pain, 'belly pain').
symptom_question(nose_bleed, 'nose bleed').
symptom_question(bleeding_gums, 'bleeding gums').
symptom_question(easy_bruising, 'easy_bruising').
symptom_question(shaking_chills, 'shaking chills').
symptom_question(profuse_sweating, 'profuse sweating').
symptom_question(diarrhea, 'diarrhea').
symptom_question(anemia, 'anemia').
symptom_question(seizures, 'seizures').
symptom_question(coma, 'coma').
symptom_question(jaundice, 'jaundice').
symptom_question(confusion, 'confusion').
symptom_question(s_bv_b, 'swelling of the blood vessels of the brain').
symptom_question(pulmonary_edema, 'pulmonary edema').
symptom_question(of_kd_lv_sp, 'organ failure of the kidneys, liver, or spleen').
symptom_question(low_blood_sugar, 'low blood sugar').
symptom_question(phlegm, 'phlegm').
symptom_question(lo_bdy_tmp, 'lower than normal body temperature').
symptom_question(cough_blood, 'coughing blood').
symptom_question(shortness_of_breath, 'shortness of breath').
symptom_question(fast_breathing, 'fast breathing').
symptom_question(fast_heartbeat, 'fast heartbeat').
symptom_question(body_pain, 'body pain').
symptom_question(electrolyte_imbalance, 'electrolyte imbalance').
symptom_question(low_blood_pressure, 'low blood pressure').
symptom_question(loose_skin, 'loose skin').
symptom_question(dry_mouth, 'dry mouth').
symptom_question(dry_mu_mb, 'dry mucous membranes').
symptom_question(muscle_cramps, 'muscle cramps').
symptom_question(swelling_in_abdomen, 'swelling in abdomen').
symptom_question(gray_colored_stool, 'gray colored stool').
symptom_question(dark_urine, 'dark urine').
symptom_question(joint_pain, 'joint pain').
symptom_question(intense_itching, 'intense itching').
symptom_question(runny_nose, 'runny nose').
symptom_question(sore_throat, 'sore throat').
symptom_question(conjunctivitis, 'conjunctivitis').
symptom_question(kopliks_spots, 'kopliks spots').
symptom_question(sensitivity_to_light, 'sensitivity to light').
symptom_question(bloody_diarrhea, 'bloody diarrhea').
symptom_question(nrw_rec_co, 'narrowing of rectum or colon').
symptom_question(irritation_in_the_bladder, 'irritation in the bladder').
symptom_question(pn_urin_si, 'pain during urination and sexual intercourse').
symptom_question(frequent_urination, 'frequent urination').
symptom_question(blood_in_urine, 'blood in urine').

% asking disease classification
ask_classification(Classification, Diseases) :-
    classification_question(Classification, Question),
    format('~w (yes/no): ', [Question]),
    read(Answer),
    (Answer = yes ->
        classification(Classification, Diseases)
    ;
        fail
    ).

% Ask symptom
ask_symptom(Symptom) :-
    symptom_question(Symptom, Question),
    format('~w (yes/no): ', [Question]),
    read(Input),
    (Input = yes ->
        retract(has(Symptom, null)),
        assert(has(Symptom, true))
    ;
        retract(has(Symptom, null)),
        assert(has(Symptom, false))
    ).

% asking disease symptoms
ask_disease(Disease) :-
    disease_requires(Disease, Symptoms),
    ask_symptoms_sequentially(Symptoms),
    disease_met(Disease).

% ask disease if not already asked
ask_symptom_if_no_answer(Symptom) :-
    (has(Symptom, null) ->
        ask_symptom(Symptom)
    ;
        true
    ).

% queue for asking symptoms
ask_symptoms_sequentially([]).
ask_symptoms_sequentially([Symptom|Symptoms]) :-
    ask_symptom_if_no_answer(Symptom),
    ask_symptoms_sequentially(Symptoms).

% Checking if a disease is met
disease_met(Disease) :-
    disease_requires(Disease, Symptoms),
    maplist(has_true, Symptoms).

% Checking if a symptom is true
has_true(Symptom) :-
    has(Symptom, true).

% no classification was found
ask_classifications_and_diagnose([]) :-
    writeln('We could not determine your disease. Please consult a doctor.').

% ask classification and ask symptoms of diseases in that classification
ask_classifications_and_diagnose([SelectedClassification|RemainingClassifications]) :-
    (
        ask_classification(SelectedClassification, Diseases),
        (
            print("Have you experienced or felt any of the following recently?"),
            nl,
            diagnose_in_diseases(Diseases),
            !
        )
    ;   
        ask_classifications_and_diagnose(RemainingClassifications)
    ).

% if no diagnosis was found, fail
diagnose_in_diseases([]) :-
    fail.

% if a diagnosis was found, print it and stop asking
diagnose_in_diseases([Disease|RemainingDiseases]) :-
    (   ask_disease(Disease),
        format('You have been diagnosed with: ~w.\n', [Disease]),
        !
    ;   diagnose_in_diseases(RemainingDiseases)
    ).

% main
run :-
    writeln('Select the classification of the disease you think you might have:'),
    findall(Classification, classification_question(Classification, _), Classifications),
    ask_classifications_and_diagnose(Classifications).