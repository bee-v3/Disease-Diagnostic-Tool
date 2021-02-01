/**
 * locale(Term1 : atom, Term2 : atom).
 *
 * Describes the locales in which diseases are found.
 *
 * @param Term1 Disease name.
 * @param Term2 Location disease is found in.
 */
locale(bacterial_vaginosos, all).
locale(cholera, africa).
locale(cholera, haiti).
locale(cholera, southeast_asia).
locale(cholera, united_states).
locale(coccidioidomycosis, north_america).
locale(csd, all).
locale(dengue, south_africa).
locale(dengue, south_america).
locale(dengue, southeast_asia).
locale(diptheria,_).
locale(ehrlichiosis, north_america).
locale(gonorrhea, all).
locale(heartland_virus, united_states).
locale(isosporiasis,all).
locale(leprosy,all).
locale(leptospirosis,all).
locale(listeriosis, all).
locale(lyme, united_states).
locale(malaria, africa).
locale(malaria, asia).
locale(malaria, south_america).
locale(meningococcal_disease, all).
locale(pertussis, all).
locale(pneumonia,all).
locale(powassan, canada).
locale(powassan, north_america).
locale(powassan, russia).
locale(psittacosis,all).
locale(q_fever, all).
locale(rabies, all).
locale(rheumatic_fever, all).
locale(sepsis,all).
locale(severe_acute_respiratory_syndrome, all).
locale(shingles,all).
locale(smallpox, africa).
locale(smallpox, africa).
locale(smallpox, europe).
locale(smallpox, united_states).
locale(toxic_shock_syndrome,all).
locale(vibriosis, all).
locale(zika_virus, central_america).
locale(zika_virus, south_america).

/**
 * symptom(Term1 : atom, Term2 : atom).
 *
 * Describes the symptoms associated with each disease.
 *
 * @param Term1 Disease name.
 * @param Term2 Disease symptom.
 */
symptom(bacterial_vaginosos,asymptomatic).
symptom(bacterial_vaginosos,fishy_smell).
symptom(bacterial_vaginosos,itching).
symptom(bacterial_vaginosos,vaginal_discharge).
symptom(cholera, acute_renal_failure).
symptom(cholera, coma).
symptom(cholera, dry_mucous_membranes).
symptom(cholera, low_blood_pressure).
symptom(cholera, muscle_cramps).
symptom(cholera, rapid_heart_rate).
symptom(cholera, restlessness).
symptom(cholera, skin_elasticity).
symptom(cholera, thirst).
symptom(cholera, vomiting).
symptom(cholera, watery_diarrhea).
symptom(coccidioidomycosis,cough).
symptom(coccidioidomycosis,fever).
symptom(coccidioidomycosis,headache).
symptom(coccidioidomycosis,joint_pain).
symptom(coccidioidomycosis,muscle_pain).
symptom(coccidioidomycosis,rash).
symptom(coccidioidomycosis,tiredness).
symptom(csd, chills).
symptom(csd, decreased_appetite).
symptom(csd, headache).
symptom(csd, lymphadenopathy).
symptom(csd, malaise).
symptom(csd, seizures).
symptom(dengue, headache).
symptom(dengue, skin_rash).
symptom(dengue, sudden_fever).
symptom(diptheria,fever).
symptom(diptheria,sore_throat).
symptom(diptheria,swollen_glands_in_neck).
symptom(diptheria,weakness).
symptom(ehrlichiosis, confusion).
symptom(ehrlichiosis, fever).
symptom(ehrlichiosis, muscle_ache).
symptom(ehrlichiosis, vomiting).
symptom(gonnorhea, aysmptomatic).
symptom(gonorrhea, cervicitis).
symptom(gonorrhea, pharyngitis).
symptom(gonorrhea, salpingitis).
symptom(gonorrhea, urethritic).
symptom(heartland_virus, diarrhea).
symptom(heartland_virus, fever).
symptom(heartland_virus, headache).
symptom(heartland_virus, joint_pain).
symptom(heartland_virus, lethargy).
symptom(heartland_virus, loss_of_appetite).
symptom(heartland_virus, low_white_blood_cell_count).
symptom(heartland_virus, muscle_pain).
symptom(heartland_virus, nausea).
symptom(heartland_virus, weight_loss).
symptom(isosporiasis, abdominal_cramps).
symptom(isosporiasis, diarrhea).
symptom(leprosy,joint_deformity).
symptom(leprosy,nerve_problems).
symptom(leprosy,numbness).
symptom(leprosy,patches).
symptom(leprosy,tissue_loss).
symptom(leptospirosis,abdominal_pain).
symptom(leptospirosis,chills).
symptom(leptospirosis,diarrhea).
symptom(leptospirosis,fever).
symptom(leptospirosis,headache).
symptom(leptospirosis,jaundice).
symptom(leptospirosis,muscle_aches).
symptom(leptospirosis,rash).
symptom(leptospirosis,red_eyes).
symptom(leptospirosis,vomiting).
symptom(listeriosis, confusion).
symptom(listeriosis, convulsions).
symptom(listeriosis, diarrhea).
symptom(listeriosis, fever).
symptom(listeriosis, headache).
symptom(listeriosis, loss_of_balance).
symptom(listeriosis, muscle_aches).
symptom(listeriosis, stiff_neck).
symptom(lyme, arthritis).
symptom(lyme, chills).
symptom(lyme, erythema_migrains_rash).
symptom(lyme, facial_palsy).
symptom(lyme, fever).
symptom(lyme, headache).
symptom(lyme, memory_loss).
symptom(lyme, neck_stiffness).
symptom(lyme, nerve_pain).
symptom(lyme, swollen_nodes).
symptom(malaria,  chills).
symptom(malaria,  muscle_pain).
symptom(malaria,  nausea).
symptom(malaria, fever).
symptom(malaria, headache).
symptom(meningococcal_disease, blood_clotting).
symptom(meningococcal_disease, bruising).
symptom(meningococcal_disease, meningeal_inflammation).
symptom(meningococcal_disease, rash).
symptom(pertussis, fainting).
symptom(pertussis, inspiratory_whoop).
symptom(pertussis, paroxysmal_cough).
symptom(pertussis, vomiting).
symptom(pneumonia,chest_pain).
symptom(pneumonia,chills).
symptom(pneumonia,difficulty_breathing).
symptom(pneumonia,fever).
symptom(pneumonia,rapid_breathing).
symptom(powassan, confusion).
symptom(powassan, encephalitis).
symptom(powassan, fever).
symptom(powassan, meningitis).
symptom(powassan, seizures).
symptom(powassan, vomiting).
symptom(psittacosis,chills).
symptom(psittacosis,dry_cough).
symptom(psittacosis,fever).
symptom(psittacosis,headache).
symptom(psittacosis,myalgia).
symptom(q_fever, chills).
symptom(q_fever, confusion).
symptom(q_fever, diarrhea).
symptom(q_fever, dry_cough).
symptom(q_fever, fever).
symptom(q_fever, joint_pain).
symptom(q_fever, loss_of_appetite).
symptom(q_fever, malaise).
symptom(q_fever, muscle_pain).
symptom(q_fever, nausea).
symptom(q_fever, pleuritic_pain).
symptom(q_fever, profuse_perspiration).
symptom(q_fever, severe_headache).
symptom(q_fever, upper_respiratory).
symptom(q_fever, vomiting).
symptom(rabies,  headache).
symptom(rabies,  loss_of_appetite).
symptom(rabies,  muscle_ache).
symptom(rabies, fever).
symptom(rabies, tingling_around_bite).
symptom(rheumatic_fever, arthritis).
symptom(rheumatic_fever, nausea).
symptom(rheumatic_fever, nosebleed).
symptom(rheumatic_fever, swollen_lymphnodes).
symptom(rheumatic_fever, swollen_tonsils).
symptom(sepsis,confusion).
symptom(sepsis,edema).
symptom(sepsis,fever).
symptom(sepsis,high_blood_sugar).
symptom(sepsis,low_body_temperature).
symptom(sepsis,rapid_blood_rate).
symptom(severe_acute_respiratory_syndrome, body_aches).
symptom(severe_acute_respiratory_syndrome, difficulty_breathing).
symptom(severe_acute_respiratory_syndrome, fever).
symptom(severe_acute_respiratory_syndrome, malaise).
symptom(shingles, fever).
symptom(shingles, headache).
symptom(shingles, headache).
symptom(shingles, hyperesthesia).
symptom(shingles, itching).
symptom(shingles, malaise).
symptom(shingles, paresthesia).
symptom(smallpox, fever).
symptom(smallpox, rash).
symptom(toxic_shock_syndrome,desquamation).
symptom(toxic_shock_syndrome,diarrhea).
symptom(toxic_shock_syndrome,disorientation).
symptom(toxic_shock_syndrome,fever).
symptom(toxic_shock_syndrome,hyperemia).
symptom(toxic_shock_syndrome,hypotension).
symptom(toxic_shock_syndrome,myalgia).
symptom(toxic_shock_syndrome,rash).
symptom(toxic_shock_syndrome,vomiting).
symptom(vibriosis, abdominal_cramps).
symptom(vibriosis, chills).
symptom(vibriosis, diarrhea).
symptom(vibriosis, fever).
symptom(vibriosis, nausea).
symptom(vibriosis, vomiting).
symptom(zika_virus, fever).
symptom(zika_virus, headache).
symptom(zika_virus, itching).
symptom(zika_virus, muscle_pain).
symptom(zika_virus, rash).

/**
 * test(Term1 : atom, Term2 : atom).
 *
 * Describes tests used to diagnose each disease.
 *
 * @param Term1 Disease name.
 * @param Term2 Test used to diagnose disease.
 */
test(bacterial_vaginosos,arnsel_criteria).
test(bacterial_vaginosos,gram_stain).
test(bacterial_vaginosos,nugent_score).
test(cholera, vibrio_cholerae_o1).
test(coccidioidomycosis,chest_x_ray).
test(coccidioidomycosis,pcr).
test(csd, warthin_starry_stain).
test(csd, polymerase_chain_reaction).
test(dengue, pcr).
test(dengue, viral_antigen_detection).
test(diptheria,nose_swab).
test(diptheria,throat_swab).
test(ehrlichiosis, blood_test).
test(ehrlichiosis, liver_test).
test(gonorrhea, gram_negative).
test(heartland_virus, antibody_titer).
test(isosporiasis, biopsy).
test(isosporiasis, stool).
test(isosporiasis, string_epifluorescence).
test(leprosy,biopsy).
test(leprosy,pcr).
test(leptospirosis,mat).
test(leptospirosis,sold_phase_assay).
test(listeriosis, blood_test).
test(listeriosis, cerebrospinal_fluid).
test(lyme, eia).
test(lyme, tick_exposure).
test(lyme, western_blot).
test(malaria, infected_blood_cell_percentage).
test(malaria, pcr).
test(malaria, rdt).
test(meningococcal_disease, glass_test).
test(meningococcal_disease, gram_negative).
test(pertussis, nasopharyngeal_swab).
test(pneumonia,blood_test).
test(pneumonia,chest_x_ray).
test(powassan, cerebrospinal_fluid).
test(psittacosis,cft).
test(q_fever, blood_test).
test(rabies, direct_flourescent_antibody_test).
test(rabies, ifa).
test(rabies, isolation_of_virus).
test(rabies, rna_detection).
test(rheumatic_fever, echocardiography).
test(rheumatic_fever, ekg).
test(sepsis,blood_cultures).
test(sepsis,measuring_serum_lactate).
test(sepsis,pcr).
test(sepsis,white_blood_cell_counts).
test(severe_acute_respiratory_syndrome, antibody_test).
test(severe_acute_respiratory_syndrome, pcr).
test(shingles, igm_antibody_present).
test(shingles, pcr).
test(smallpox, isolation_of_variola).
test(smallpox, pcr).
test(toxic_shock_syndrome,blood_culture).
test(toxic_shock_syndrome,serology_test).
test(vibriosis, vibrio).
test(zika_virus, culture_from_bodily_fluid).
test(zika_virus, detection_of_zikv_antigen).
test(zika_virus, lgm_antibody_test).

/**
 * treatment(Term1 : atom, Term2 : atom).
 *
 * Describes treatments for each disease.
 *
 * @param Term1 Disease name.
 * @param Term2 Treatment for disease.
 */
treatment(powassan, corticosteroids).
treatment(bacterial_vaginosos,antibiotics).
treatment(bacterial_vaginosos,probiotics).
treatment(cholera, azithromycin).
treatment(cholera, doxycycline).
treatment(cholera, azithromycin).
treatment(cholera, rehydration_therapy).
treatment(cholera, zinc).
treatment(coccidioidomycosis,amphotericin_b).
treatment(coccidioidomycosis,anti_fungal_therapy).
treatment(coccidioidomycosis,fluconazole).
treatment(csd, azithromycin).
treatment(csd, doxycycline).
treatment(dengue, acetaminophen).
treatment(dengue, blood_transfusion).
treatment(diptheria,antibiotic).
treatment(diptheria,antitoxin).
treatment(diptheria,vaccine).
treatment(ehrlichiosis, doxycycline).
treatment(gonnorhea, azithromycin).
treatment(gonnorhea, ceftriaxone).
treatment(gonnorhea, doxycycline).
treatment(heartland_virus, pain_relief_medication).
treatment(isosporiasis, trimethorprim_sulfamethoxazole).
treatment(leprosy,clofazimine).
treatment(leprosy,dapsone).
treatment(leprosy,mdt).
treatment(leprosy,rifampicin).
treatment(leptospirosis,antibiotic).
treatment(listeriosis, ampicillin).
treatment(listeriosis, gentamicin).
treatment(lyme,amoxicillin).
treatment(lyme,cefuroxime_axetil).
treatment(lyme,doxycycline).
treatment(malaria, chloroquine).
treatment(malaria, primaquine).
treatment(malaria, quinine).
treatment(meningococcal_disease, benzylpenicillin).
treatment(meningococcal_disease, cefotaxime).
treatment(meningococcal_disease, ceftriaxone).
treatment(meningococcal_disease, vaccination).
treatment(pertussis, azithromycin).
treatment(pertussis, clarithromycin).
treatment(pertussis, erythromycin).
treatment(pneumonia,antibiotic).
treatment(powassan, intravenous_fluids).
treatment(psittacosis,antibiotic).
treatment(q_fever, chloramphenicol).
treatment(q_fever, ciprofloxacin).
treatment(q_fever, cotrimoxazole).
treatment(q_fever, doxycycline).
treatment(q_fever, hydroxychloroquine).
treatment(q_fever, ofloxacin).
treatment(q_fever, quinolones).
treatment(q_fever, tetracycline).
treatment(rabies, immune_globulin_injection).
treatment(rabies, preventative_vaccination).
treatment(rheumatic_fever, antibiotics).
treatment(sepsis,anesthesia).
treatment(sepsis,antibiotics).
treatment(sepsis,blood_products).
treatment(sepsis,intravenous_fluids).
treatment(sepsis,steroids).
treatment(sepsis,vasopressors).
treatment(severe_acute_respiratory_syndrome, oxygen_therapy).
treatment(severe_acute_respiratory_syndrome, tracheal_intubation).
treatment(shingles, aciclovir).
treatment(shingles, calamine).
treatment(shingles, corticosteroids).
treatment(shingles, famciclovir).
treatment(shingles, valaciclovir).
treatment(smallpox, preemptive_vaccination).
treatment(toxic_shock_syndrome,antibiotics).
treatment(toxic_shock_syndrome,intravenous_fluids).
treatment(toxic_shock_syndrome,respirator).
treatment(toxic_shock_syndrome,wound_cleaning).
treatment(vibriosis, hydration).
treatment(zika_virus, acetaminophen).
treatment(zika_virus, acute_symptom_treatment).
treatment(zika_virus, fluids).
treatment(zika_virus, rest).