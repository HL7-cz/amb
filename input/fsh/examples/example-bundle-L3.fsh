/// Bundle ///
Instance: OutpatientBundle-Mracena-L3
InstanceOf: CZ_BundleAmb
Description: "Example Bundle for Outpatient Report for patient Mrakomorová Mračena - L3"
Usage: #example

* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:d535d449-d00c-4acb-8624-6fa9a08966dd"
* type = #document
* timestamp = "2026-01-29T09:50:08+01:00"

* entry[composition][0].fullUrl = "urn:uuid:418da506-19c3-4e00-94d5-31a15f8c7860"
* entry[composition][=].resource = OutpatientComposition-Mracena-L3

* entry[patient][+].fullUrl = "urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590"
* entry[patient][=].resource = Patient-Mracena-L3

* entry[practitioner][+].fullUrl = "urn:uuid:77fa78d2-154c-4d38-824e-3c38b39c6a42"
* entry[practitioner][=].resource = Practitioner-Jansky

* entry[consent][+].fullUrl = "urn:uuid:64054bb3-093f-4b94-aa58-17940bc4d3ad"
* entry[consent][=].resource = AdvanceDirective-Mracena-L3

* entry[allergyIntolerance][+].fullUrl = "urn:uuid:ad596f22-799b-4cdb-b8f2-6198a6d0a53c"
* entry[allergyIntolerance][=].resource = AllergyIntolerance-Penicilin
* entry[allergyIntolerance][+].fullUrl = "urn:uuid:a1de206e-b7dc-4d63-9efc-6b3d4913822f"
* entry[allergyIntolerance][=].resource = AllergyIntolerance-Latex
* entry[allergyIntolerance][+].fullUrl = "urn:uuid:0711ad77-bbd4-4242-9e82-4d612a8cfda8"
* entry[allergyIntolerance][=].resource = AllergyIntolerance-Nuts

* entry[flag][+].fullUrl = "urn:uuid:90482ba4-9384-428a-a384-5b09f1293a0e"
* entry[flag][=].resource = Alert-Anticoagulation

/// Composition ///
Instance: OutpatientComposition-Mracena-L3
InstanceOf: CZ_CompositionAmb
Description: "Example Composition for Outpatient Report for patient Mrakomorová Mračena - L3"
Usage: #example
* id = "418da506-19c3-4e00-94d5-31a15f8c7860"
* status = #final
* type.coding[0].system = $loinc
* type.coding[0].code = #34108-1
* type.coding[0].display = "Outpatient Note"
* subject = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* date = "2026-01-29T09:50:08+01:00"
* author[+] = Reference(urn:uuid:77fa78d2-154c-4d38-824e-3c38b39c6a42) // Reference to Practitioner-Janský
* title = "Ambulantní zpráva - L3 composition"

// Sekce Dříve vyslovaná přání
* section[sectionAdvanceDirectives].title = "Dříve vyslovaná přání"
* section[sectionAdvanceDirectives].code.coding[0].system = $loinc
* section[sectionAdvanceDirectives].code.coding[0].code = #42348-3 // Advance directives
* section[sectionAdvanceDirectives].code.coding[0].display = "Advance healthcare directives"
* section[sectionAdvanceDirectives].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient si nepřeje být resuscitován.</div>"
* section[sectionAdvanceDirectives].text.status = #additional
* section[sectionAdvanceDirectives].entry[0] = Reference(urn:uuid:64054bb3-093f-4b94-aa58-17940bc4d3ad) // Reference to AdvanceDirective instance

* section[sectionAllergies].title = "Alergie a intolerance"
* section[sectionAllergies].code.coding[0].system = $loinc
* section[sectionAllergies].code.coding[0].code = #48765-2 // Allergies and adverse reactions
* section[sectionAllergies].code.coding[0].display = "Allergies and adverse reactions Document"
* section[sectionAllergies].text.status = #additional
* section[sectionAllergies].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <ul>
    <li>Penicilin – anafylaktická reakce (2018)</li>
    <li>Latex – kontaktní dermatitida</li>
    <li>Ořechy – kopřivka, otok rtů (dětský věk)</li>
  </ul>
</div>
"""
// Strukturované reference na AllergyIntolerance
* section[sectionAllergies].entry[0] = Reference(urn:uuid:ad596f22-799b-4cdb-b8f2-6198a6d0a53c)
* section[sectionAllergies].entry[1] = Reference(urn:uuid:a1de206e-b7dc-4d63-9efc-6b3d4913822f)
* section[sectionAllergies].entry[2] = Reference(urn:uuid:0711ad77-bbd4-4242-9e82-4d612a8cfda8)

// Varování
* section[sectionAlerts].title = "Varování"
* section[sectionAlerts].code.coding[0].system = $loinc
* section[sectionAlerts].code.coding[0].code = #104605-1 // Alert
* section[sectionAlerts].code.coding[0].display = "Alert"
* section[sectionAlerts].text.status = #additional
* section[sectionAlerts].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient na dlouhodobé antikoagulační léčbě.</div>"
* section[sectionAlerts].entry[0] = Reference(urn:uuid:90482ba4-9384-428a-a384-5b09f1293a0e) // Reference to Flag instance

// Admission Evaluation (stav při přijetí/příchodu)
* section[sectionAdmissionEvaluation].title = "Stav při přijetí/příchodu"
* section[sectionAdmissionEvaluation].code.coding[0].system = $loinc
* section[sectionAdmissionEvaluation].code.coding[0].code = #67851-6 // Admission evaluation (assessment at admission)
* section[sectionAdmissionEvaluation].code.coding[0].display = "Admission evaluation note"
* section[sectionAdmissionEvaluation].text.status = #additional
* section[sectionAdmissionEvaluation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient přichází do ambulance s bolestí na hrudi, dušností a kašlem. Při vyšetření je zjištěna tachykardie, hypotenze a cyanóza.</div>"

// Patient History (anamnéza)
* section[sectionPatientHistory].title = "Anamnéza"
* section[sectionPatientHistory].code.coding[0].system = $loinc
* section[sectionPatientHistory].code.coding[0].code = #35090-0
* section[sectionPatientHistory].code.coding[0].display = "Patient history"

* section[sectionPatientHistory].section[PastIllnessHx].title = "Historie zdravotních problémů"
* section[sectionPatientHistory].section[PastIllnessHx].code.coding[0].system = $loinc
* section[sectionPatientHistory].section[PastIllnessHx].code.coding[0].code = #11348-0
* section[sectionPatientHistory].section[PastIllnessHx].code.coding[0].display = "History of Past illness note"
* section[sectionPatientHistory].section[PastIllnessHx].text.status = #additional
* section[sectionPatientHistory].section[PastIllnessHx].text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
  <ul>
    <li>Hypertenze</li>
    <li>Fibrilace síní</li>
    <li>Astma bronchiale</li>
  </ul>
</div>
"""
* section[sectionPatientHistory].section[PastIllnessHx].entry[0] = Reference(urn:uuid:pastillnes0) 
* section[sectionPatientHistory].section[PastIllnessHx].entry[1] = Reference(urn:uuid:pastillnes1) 
* section[sectionPatientHistory].section[PastIllnessHx].entry[2] = Reference(urn:uuid:pastillnes2) 

// další subsekce
      // HistoryMedicalDevices 0..1 and
      // ProceduresHx 0..1 and
      // ImmunizationHx 0..* and
      // InfectiousContacts 0..* and
      // TravelHx 0..* and
      // FamilyHistory 0..* and
      // SocialHistory 0..1 and
      // AlcoholUse 0..1 and
      // TobaccoUse 0..1 and
      // DrugUse 0..1 and 
      // SubstanceUse 0..1

//sectionEncounterSummary
//subsekce
      // ProblemList 0..1 and
      // ProceduresAndTreatments 0..1 and
      // MedicalDevices 0..1 and
      // MedicationDuring 0..* and
      // Results 0..* and
      // ClinicalSummary 0..*

//sectionMedicationSummary
* section[sectionMedicationSummary].title = "Souhrn medikace"
* section[sectionMedicationSummary].code.coding[0].system = $loinc
* section[sectionMedicationSummary].code.coding[0].code = #10160-0
* section[sectionMedicationSummary].code.coding[0].display = "History of Medication use Narrative"
* section[sectionMedicationSummary].text.status = #additional
* section[sectionMedicationSummary].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient užívá následující medikaci: Warfarin 5 mg denně, Metoprolol 50 mg denně, Salbutamol inhalátor podle potřeby.</div>" 
* section[sectionMedicationSummary].entry[0] = Reference(urn:uuid:medication1) 
* section[sectionMedicationSummary].entry[1] = Reference(urn:uuid:medication2)
* section[sectionMedicationSummary].entry[2] = Reference(urn:uuid:medication3)

//sectionPlanOfCare
* section[sectionPlanOfCare].title = "Plán péče"
* section[sectionPlanOfCare].code.coding[0].system = $loinc
* section[sectionPlanOfCare].code.coding[0].code = #18776-5
* section[sectionPlanOfCare].code.coding[0].display = "Plan of care note"
* section[sectionPlanOfCare].text.status = #additional
* section[sectionPlanOfCare].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacientovi bude doporučeno sledování krevního tlaku, pravidelné kontroly u kardiologa a dodržování medikace na fibrilaci síní. Dále bude doporučena spirometrie pro posouzení astmatu.</div>"

//sectionAttachments
* section[sectionAttachments].title = "Přílohy"
* section[sectionAttachments].code.coding[0].system = $loinc
* section[sectionAttachments].code.coding[0].code = #77599-9
* section[sectionAttachments].code.coding[0].display = "Additional documentation"
* section[sectionAttachments].text.status = #additional
* section[sectionAttachments].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Neobsahuje žádné přílohy.</div>"


///// Other resources /////
/// Patient ///
Instance: Patient-Mracena-L3
InstanceOf: CZ_PatientCore
Usage: #inline
Description: "Patient, contact information and practitioner - L3"
* id = "f21b91f9-5e7a-47b9-a884-cbc720257590"
* identifier[RID][+].system = "https://ncez.mzcr.cz/fhir/sid/rid"
* identifier[RID][=].value = "2066425387"
* name.use = #usual
* name.family = "Mrakomorová"
* name.given = "Mračena"
* birthDate = "1971-11-26"
* gender = #female

/// Practitioner ///
Instance: Practitioner-Jansky
InstanceOf: CZ_PractitionerCore
Usage: #inline
Description: "Practitioner - L3"
* id = "77fa78d2-154c-4d38-824e-3c38b39c6a42"
* name.use = #usual
* name.prefix = "Prof. MUDr."
* name.family = "Jan"
* name.given = "Janský"

/// Advance Directive ///
Instance: AdvanceDirective-Mracena-L3
InstanceOf: CZ_ConsentHdr
Usage: #inline
Description: "Advance Directive for patient Mrakomorová Mračena - L3"
* id = "64054bb3-093f-4b94-aa58-17940bc4d3ad"
* status = #active

* scope.coding[0].system = $consentscope
* scope.coding[0].code = #adr
* scope.coding[0].display = "Advanced Care Directive"

* category.coding[0].system = $consent-category
* category.coding[0].code = #dnr
* category.coding[0].display = "Do Not Resuscitate"

* patient = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* dateTime = "2025-12-01T10:00:00+01:00"

/// AllergyIntolerance - Penicilin ///
Instance: AllergyIntolerance-Penicilin
InstanceOf: CZ_AllergyIntoleranceAmb
Usage: #inline
Description: "AllergyIntolerance resource for allergy to Penicilin for patient Mrakomorová Mračena - L3"
* id = "ad596f22-799b-4cdb-b8f2-6198a6d0a53c"
* identifier[+].system = "http://example.org/hospital/allergy-intolerances"
* identifier[=].value = "allergy-penicilin-001"
// * text.status = #additional
// * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient má alergii na penicilin.</div>"
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* type = #allergy
* code.coding[0].system = $sct
* code.coding[0].code = #91936005 "Allergy to penicillin"
* patient = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3

/// AllergyIntolerance - Latex ///
Instance: AllergyIntolerance-Latex
InstanceOf: CZ_AllergyIntoleranceAmb
Usage: #inline
Description: "AllergyIntolerance resource for intolerance to Latex for patient Mrakomorová Mračena - L3"
* id = "a1de206e-b7dc-4d63-9efc-6b3d4913822f"
* identifier[+].system = "http://example.org/hospital/allergy-intolerances"
* identifier[=].value = "intolerance-latex-001"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient má intoleranci na latex.</div>"
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* type = #intolerance
* code = $sct#111088007 "latex"
* patient = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3

/// AllergyIntolerance - Nuts ///
Instance: AllergyIntolerance-Nuts
InstanceOf: CZ_AllergyIntoleranceAmb
Usage: #inline
Description: "AllergyIntolerance resource for allergy to Nuts for patient Mrakomorová Mračena - L3"
* id = "0711ad77-bbd4-4242-9e82-4d612a8cfda8"
* identifier[+].system = "http://example.org/hospital/allergy-intolerances"
* identifier[=].value = "allergy-nuts-001"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient má alergii na ořechy.</div>"
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* type = #allergy
* code.coding[0].system = $sct
* code.coding[0].code = #91934008 "Allergy to nut"
* patient = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3

/// Alert - Flag ///
Instance: Alert-Anticoagulation
InstanceOf: CZ_FlagAmb
Usage: #inline
Description: "Flag resource for alert about long-term anticoagulation treatment for patient Mrakomorová Mračena - L3"
* id = "90482ba4-9384-428a-a384-5b09f1293a0e"
* identifier[+].system = "http://example.org/hospital/flags"
* identifier[=].value = "flag-anticoagulation-001"
* status = #active
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient na dlouhodobé antikoagulační léčbě.</div>"
* code.coding[0].system = $sct 
* code.coding[0].code = #49436004 "Atrial fibrillation (disorder)"
* subject = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* period.start = "2020-01-01"
* extension[flagPriorityExt].valueCodeableConcept.coding[0].system = $flagPriority
* extension[flagPriorityExt].valueCodeableConcept.coding[0].code = #PH 
* extension[flagPriorityExt].valueCodeableConcept.coding[0].display = "High priority"      

// Entry pro past illness history v sekci Anamnéza
Instance: Condition-hypertenze
InstanceOf: CZ_ConditionHdr
Usage: #inline
Description: "Condition resource for past illness history - Hypertenze for patient Mrakomorová Mračena - L3"
* id = "pastillnes0"
* subject = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* code.coding[0].system = $sct
* code.coding[0].code = #38341003 "Hypertension (disorder)"

Instance: Condition-fibrilace
InstanceOf: CZ_ConditionHdr
Usage: #inline
Description: "Condition resource for past illness history - Fibrilace síní for patient Mrakomorová Mračena - L3"
* id = "pastillnes1"
* subject = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* code.coding[0].system = $sct
* code.coding[0].code = #49436004 "Atrial fibrillation (disorder)"

Instance: Condition-astma
InstanceOf: CZ_ConditionHdr
Usage: #inline
Description: "Condition resource for past illness history - Astma bronchiale for patient Mrakomorová Mračena - L3"
* id = "pastillnes2"
* subject = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* code.coding[0].system = $sct
* code.coding[0].code = #195967001 "Asthma (disorder)"

// Entry pro medication summary
Instance: Medication-Warfarin
InstanceOf: CZ_Medication
Usage: #inline
Description: "Medication resource for Warfarin for patient Mrakomorová Mračena - L3"
* id = "medication1"
* identifier[+].system = "http://example.org/medications"
* identifier[=].value = "medication-001"
* code.coding[0].system = "https://sukl.cz/terminology/CodeSystem/dlp-lecive-pripravky"
* code.coding[0].code = #0094113
* code.coding[0].display = "WARFARIN ORION 3MG TBL NOB 100"

Instance: Medication-Metoprolol
InstanceOf: CZ_Medication
Usage: #inline
Description: "Medication resource for Metoprolol for patient Mrakomorová Mračena - L3"
* id = "medication2"
* identifier[+].system = "http://example.org/medications"
* identifier[=].value = "medication-002"
* code.coding[0].system = "https://sukl.cz/terminology/CodeSystem/dlp-lecive-pripravky"
* code.coding[0].code = #0246762
* code.coding[0].display = "METOPROLOL MEDREG 100MG TBL FLM 50"

Instance: Medication-Salbutamol
InstanceOf: CZ_Medication
Usage: #inline
Description: "Medication resource for Salbutamol for patient Mrakomorová Mračena - L3"
* id = "medication3"
* identifier[+].system = "http://example.org/medications"
* identifier[=].value = "medication-003"
* code.coding[0].system = "https://sukl.cz/terminology/CodeSystem/dlp-lecive-pripravky"
* code.coding[0].code = #0269356
* code.coding[0].display = "SALBUTAMOL POLPHARMA 2MG TBL NOB 30"