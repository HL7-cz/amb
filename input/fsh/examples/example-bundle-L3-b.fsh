/// Bundle ///
Instance: OutpatientBundle-Novak-L3
InstanceOf: CZ_BundleAmb
Description: "Example Bundle for Outpatient Report for patient Novák Jan - L3"
Usage: #example

* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:c1e2f3a4-b5c6-47d8-a9e0-f0a1b2c3d4e5"
* type = #document
* timestamp = "2026-02-15T14:30:45+01:00"

* entry[composition][0].fullUrl = "urn:uuid:d2f3a4b5-c6d7-48e9-ab01-a1b2c3d4e5f6"
* entry[composition][=].resource = OutpatientComposition-Novak-L3

* entry[patient][+].fullUrl = "urn:uuid:a62559b6-14bc-4bc6-ae50-a0eb75357e63"
* entry[patient][=].resource = Patient-Novak-L3

* entry[practitioner][+].fullUrl = "urn:uuid:a47ac10b-58cc-4372-a567-0e02b2c3d479"
* entry[practitioner][=].resource = Practitioner-Svoboda-L3

* entry[consent][+].fullUrl = "urn:uuid:e3a4b5c6-d7e8-49fa-ac12-b2c3d4e5f6a7"
* entry[consent][=].resource = AdvanceDirective-Novak-L3

* entry[allergyIntolerance][+].fullUrl = "urn:uuid:f4b5c6d7-e8f9-40ab-ad23-c3d4e5f6a7b8"
* entry[allergyIntolerance][=].resource = AllergyIntolerance-Aspirin
* entry[allergyIntolerance][+].fullUrl = "urn:uuid:a5c6d7e8-f9a0-41bc-ae34-d4e5f6a7b8c9"
* entry[allergyIntolerance][=].resource = AllergyIntolerance-Penicillin
* entry[allergyIntolerance][+].fullUrl = "urn:uuid:b6d7e8f9-a0b1-42cd-af45-e5f6a7b8c9da"
* entry[allergyIntolerance][=].resource = AllergyIntolerance-Shellfish

* entry[flag][+].fullUrl = "urn:uuid:c7e8f9a0-b1c2-43de-a056-f6a7b8c9deb1"
* entry[flag][=].resource = Alert-Diabetes

/// Composition ///
Instance: OutpatientComposition-Novak-L3
InstanceOf: CZ_CompositionAmb
Description: "Example Composition for Outpatient Report for patient Novák Jan - L3"
Usage: #example
* id = "d2f3a4b5-c6d7-48e9-ab01-a1b2c3d4e5f6"
* status = #final
* type.coding[0].system = $loinc
* type.coding[0].code = #34108-1
* type.coding[0].display = "Outpatient Note"
* subject = Reference(urn:uuid:a62559b6-14bc-4bc6-ae50-a0eb75357e63) // Reference to Patient-Novak-L3
* date = "2026-02-15T14:30:45+01:00"
* author[+] = Reference(urn:uuid:a47ac10b-58cc-4372-a567-0e02b2c3d479) // Reference to Practitioner-Svoboda-L3
* title = "Ambulantní zpráva - L3 composition"

// Sekce Dříve vyslovaná přání
* section[sectionAdvanceDirectives].title = "Dříve vyslovaná přání"
* section[sectionAdvanceDirectives].code.coding[0].system = $loinc
* section[sectionAdvanceDirectives].code.coding[0].code = #42348-3 // Advance directives
* section[sectionAdvanceDirectives].code.coding[0].display = "Advance healthcare directives"
* section[sectionAdvanceDirectives].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient si žádá, aby byl informován před jakoukoliv hospitalizací.</div>"
* section[sectionAdvanceDirectives].text.status = #additional
* section[sectionAdvanceDirectives].entry[0] = Reference(urn:uuid:e3a4b5c6-d7e8-49fa-ac12-b2c3d4e5f6a7) // Reference to AdvanceDirective instance

* section[sectionAllergies].title = "Alergie a intolerance"
* section[sectionAllergies].code.coding[0].system = $loinc
* section[sectionAllergies].code.coding[0].code = #48765-2 // Allergies and adverse reactions
* section[sectionAllergies].code.coding[0].display = "Allergies and adverse reactions Document"
* section[sectionAllergies].text.status = #additional
* section[sectionAllergies].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <ul>
    <li>Aspirin – gastrointestinální nesnášenlivost</li>
    <li>Penicilin – kopřivka</li>
    <li>Mořské krevety – anafylaktická reakce</li>
  </ul>
</div>
"""
// Strukturované reference na AllergyIntolerance
* section[sectionAllergies].entry[0] = Reference(urn:uuid:f4b5c6d7-e8f9-40ab-ad23-c3d4e5f6a7b8)
* section[sectionAllergies].entry[1] = Reference(urn:uuid:a5c6d7e8-f9a0-41bc-ae34-d4e5f6a7b8c9)
* section[sectionAllergies].entry[2] = Reference(urn:uuid:b6d7e8f9-a0b1-42cd-af45-e5f6a7b8c9da)

// Varování
* section[sectionAlerts].title = "Varování"
* section[sectionAlerts].code.coding[0].system = $loinc
* section[sectionAlerts].code.coding[0].code = #104605-1 // Alert
* section[sectionAlerts].code.coding[0].display = "Alert"
* section[sectionAlerts].text.status = #additional
* section[sectionAlerts].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient má diabetes mellitus typ 2 - vyžaduje monitorování hladiny glukózy.</div>"
* section[sectionAlerts].entry[0] = Reference(urn:uuid:c7e8f9a0-b1c2-43de-a056-f6a7b8c9deb1) // Reference to Flag instance

// Admission Evaluation (stav při přijetí/příchodu)
* section[sectionAdmissionEvaluation].title = "Stav při přijetí/příchodu"
* section[sectionAdmissionEvaluation].code.coding[0].system = $loinc
* section[sectionAdmissionEvaluation].code.coding[0].code = #67851-6 // Admission evaluation (assessment at admission)
* section[sectionAdmissionEvaluation].code.coding[0].display = "Admission evaluation note"
* section[sectionAdmissionEvaluation].text.status = #additional
* section[sectionAdmissionEvaluation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient přichází na kontrolu s mírnou únavou a lehkou bolestí v krku. Ostatní příznaky se nepředstavují. Fyzikální vyšetření je v normě, vitální funkce jsou stabilní.</div>"

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
    <li>Diabetes mellitus typu 2</li>
    <li>Hyperlipidémie</li>
    <li>Nadváha</li>
  </ul>
</div>
"""
* section[sectionPatientHistory].section[PastIllnessHx].entry[0] = Reference(urn:uuid:d8f9a0b1-c2d3-44ef-b167-a7b8c9daeb2)
* section[sectionPatientHistory].section[PastIllnessHx].entry[1] = Reference(urn:uuid:e9a0b1c2-d3e4-45f0-b278-b8c9daebf3)
* section[sectionPatientHistory].section[PastIllnessHx].entry[2] = Reference(urn:uuid:faa1b2c3-e4f5-4601-b389-c9daebf04)

//sectionMedicationSummary
* section[sectionMedicationSummary].title = "Souhrn medikace"
* section[sectionMedicationSummary].code.coding[0].system = $loinc
* section[sectionMedicationSummary].code.coding[0].code = #10160-0
* section[sectionMedicationSummary].code.coding[0].display = "History of Medication use Narrative"
* section[sectionMedicationSummary].text.status = #additional
* section[sectionMedicationSummary].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient užívá následující medikaci: Metformin 850 mg 3x denně, Atorvastatin 20 mg denně, Lisinopril 10 mg denně.</div>" 
* section[sectionMedicationSummary].entry[0] = Reference(urn:uuid:abc2c3d4-e5f6-4712-b49a-daebf04g05)
* section[sectionMedicationSummary].entry[1] = Reference(urn:uuid:bcd3d4e5-f6a7-4823-b5ab-ebf05h16)
* section[sectionMedicationSummary].entry[2] = Reference(urn:uuid:cde4e5f6-a7b8-4934-b6bc-f06i27)

//sectionPlanOfCare
* section[sectionPlanOfCare].title = "Plán péče"
* section[sectionPlanOfCare].code.coding[0].system = $loinc
* section[sectionPlanOfCare].code.coding[0].code = #18776-5
* section[sectionPlanOfCare].code.coding[0].display = "Plan of care note"
* section[sectionPlanOfCare].text.status = #additional
* section[sectionPlanOfCare].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacientovi bude doporučeno pokračovat v aktuální medikaci, zvýšit fyzickou aktivitu a provést lab testy za 3 měsíce. Doporučena kontrola dietou řízená specialistou.</div>"

//sectionAttachments
* section[sectionAttachments].title = "Přílohy"
* section[sectionAttachments].code.coding[0].system = $loinc
* section[sectionAttachments].code.coding[0].code = #77599-9
* section[sectionAttachments].code.coding[0].display = "Additional documentation"
* section[sectionAttachments].text.status = #additional
* section[sectionAttachments].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Neobsahuje přílohované dokumenty.</div>"


///// Other resources /////
/// Patient ///
Instance: Patient-Novak-L3
InstanceOf: CZ_PatientCore
Usage: #inline
Description: "Patient, contact information and practitioner - L3"
* id = "a62559b6-14bc-4bc6-ae50-a0eb75357e63"
* identifier[RID][+].system = "https://ncez.mzcr.cz/fhir/sid/rid"
* identifier[RID][=].value = "5194827361"
* name.use = #usual
* name.family = "Novák"
* name.given = "Jan"
* birthDate = "1968-03-15"
* gender = #male

/// Practitioner ///
Instance: Practitioner-Svoboda-L3
InstanceOf: CZ_PractitionerCore
Usage: #inline
Description: "Practitioner - L3"
* id = "a47ac10b-58cc-4372-a567-0e02b2c3d479"
* name.use = #usual
* name.prefix = "MUDr."
* name.family = "Svoboda"
* name.given = "Jan"

/// Advance Directive ///
Instance: AdvanceDirective-Novak-L3
InstanceOf: CZ_ConsentHdr
Usage: #inline
Description: "Advance Directive for patient Novák Jan - L3"
* id = "e3a4b5c6-d7e8-49fa-ac12-b2c3d4e5f6a7"
* status = #active

* scope.coding[0].system = $consentscope
* scope.coding[0].code = #adr
* scope.coding[0].display = "Advanced Care Directive"

* category.coding[0].system = $consent-category
* category.coding[0].code = #jpp
* category.coding[0].display = "Patient information rights"

* patient = Reference(urn:uuid:a62559b6-14bc-4bc6-ae50-a0eb75357e63) // Reference to Patient-Novak-L3
* dateTime = "2026-01-15T10:00:00+01:00"

/// AllergyIntolerance - Aspirin ///
Instance: AllergyIntolerance-Aspirin
InstanceOf: CZ_AllergyIntoleranceAmb
Usage: #inline
Description: "AllergyIntolerance resource for intolerance to Aspirin for patient Novák Jan - L3"
* id = "f4b5c6d7-e8f9-40ab-ad23-c3d4e5f6a7b8"
* identifier[+].system = "http://example.org/hospital/allergy-intolerances"
* identifier[=].value = "allergy-aspirin-001"
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* type = #intolerance
* code.coding[0].system = $sct
* code.coding[0].code = #387458008 "Aspirin (substance)"
* patient = Reference(urn:uuid:a62559b6-14bc-4bc6-ae50-a0eb75357e63) // Reference to Patient-Novak-L3

/// AllergyIntolerance - Penicillin ///
Instance: AllergyIntolerance-Penicillin
InstanceOf: CZ_AllergyIntoleranceAmb
Usage: #inline
Description: "AllergyIntolerance resource for allergy to Penicillin for patient Novák Jan - L3"
* id = "a5c6d7e8-f9a0-41bc-ae34-d4e5f6a7b8c9"
* identifier[+].system = "http://example.org/hospital/allergy-intolerances"
* identifier[=].value = "allergy-penicillin-001"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient má alergii na penicilin projevující se kopřivkou.</div>"
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* type = #allergy
* code.coding[0].system = $sct
* code.coding[0].code = #91936005 "Allergy to penicillin"
* patient = Reference(urn:uuid:a62559b6-14bc-4bc6-ae50-a0eb75357e63) // Reference to Patient-Novak-L3

/// AllergyIntolerance - Shellfish ///
Instance: AllergyIntolerance-Shellfish
InstanceOf: CZ_AllergyIntoleranceAmb
Usage: #inline
Description: "AllergyIntolerance resource for allergy to Shellfish for patient Novák Jan - L3"
* id = "b6d7e8f9-a0b1-42cd-af45-e5f6a7b8c9da"
* identifier[+].system = "http://example.org/hospital/allergy-intolerances"
* identifier[=].value = "allergy-shellfish-001"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient má vážnou alergii na mořské krevety s anafylaktickou reakcí.</div>"
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* type = #allergy
* code.coding[0].system = $sct
* code.coding[0].code = #227037002 "Shellfish (substance)"
* patient = Reference(urn:uuid:a62559b6-14bc-4bc6-ae50-a0eb75357e63) // Reference to Patient-Novak-L3

/// Alert - Flag ///
Instance: Alert-Diabetes
InstanceOf: CZ_FlagAmb
Usage: #inline
Description: "Flag resource for alert about diabetes mellitus for patient Novák Jan - L3"
* id = "c7e8f9a0-b1c2-43de-a056-f6a7b8c9deb1"
* identifier[+].system = "http://example.org/hospital/flags"
* identifier[=].value = "flag-diabetes-001"
* status = #active
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient má diabetes mellitus typu 2 - vyžaduje pravidelné monitorování glukózy.</div>"
* code.coding[0].system = $sct
* code.coding[0].code = #44054006 "Diabetes mellitus type 2 (disorder)"
* subject = Reference(urn:uuid:a62559b6-14bc-4bc6-ae50-a0eb75357e63) // Reference to Patient-Novak-L3
* period.start = "2015-01-01"
* extension[flagPriorityExt].valueCodeableConcept.coding[0].system = $flagPriority
* extension[flagPriorityExt].valueCodeableConcept.coding[0].code = #PH
* extension[flagPriorityExt].valueCodeableConcept.coding[0].display = "High priority"

// Entry pro past illness history v sekci Anamnéza
Instance: Condition-diabetes
InstanceOf: CZ_ConditionHdr
Usage: #inline
Description: "Condition resource for past illness history - Diabetes mellitus for patient Novák Jan - L3"
* id = "d8f9a0b1-c2d3-44ef-b167-a7b8c9daeb2"
* subject = Reference(urn:uuid:a62559b6-14bc-4bc6-ae50-a0eb75357e63) // Reference to Patient-Novak-L3
* code.coding[0].system = $sct
* code.coding[0].code = #44054006 "Diabetes mellitus type 2 (disorder)"

Instance: Condition-hyperlipidemia
InstanceOf: CZ_ConditionHdr
Usage: #inline
Description: "Condition resource for past illness history - Hyperlipidemia for patient Novák Jan - L3"
* id = "e9a0b1c2-d3e4-45f0-b278-b8c9daebf3"
* subject = Reference(urn:uuid:a62559b6-14bc-4bc6-ae50-a0eb75357e63) // Reference to Patient-Novak-L3
* code.coding[0].system = $sct
* code.coding[0].code = #55822004 "Hyperlipidemia (disorder)"

Instance: Condition-obesity
InstanceOf: CZ_ConditionHdr
Usage: #inline
Description: "Condition resource for past illness history - Overweight for patient Novák Jan - L3"
* id = "faa1b2c3-e4f5-4601-b389-c9daebf04"
* subject = Reference(urn:uuid:a62559b6-14bc-4bc6-ae50-a0eb75357e63) // Reference to Patient-Novak-L3
* code.coding[0].system = $sct
* code.coding[0].code = #408512008 "Overweight (finding)"

// Entry pro medication summary
Instance: Medication-Metformin
InstanceOf: CZ_Medication
Usage: #inline
Description: "Medication resource for Metformin for patient Novák Jan - L3"
* id = "abc2c3d4-e5f6-4712-b49a-daebf04g05"
* identifier[+].system = "http://example.org/medications"
* identifier[=].value = "medication-001"
* code.coding[0].system = "https://sukl.cz/terminology/CodeSystem/dlp-lecive-pripravky"
* code.coding[0].code = #0200150
* code.coding[0].display = "METFORMIN MEDREG 850MG TBL NOB 100"

Instance: Medication-Atorvastatin
InstanceOf: CZ_Medication
Usage: #inline
Description: "Medication resource for Atorvastatin for patient Novák Jan - L3"
* id = "bcd3d4e5-f6a7-4823-b5ab-ebf05h16"
* identifier[+].system = "http://example.org/medications"
* identifier[=].value = "medication-002"
* code.coding[0].system = "https://sukl.cz/terminology/CodeSystem/dlp-lecive-pripravky"
* code.coding[0].code = #0313509
* code.coding[0].display = "ATORVASTATIN KRKA 20MG TBL FLM 100"

Instance: Medication-Lisinopril
InstanceOf: CZ_Medication
Usage: #inline
Description: "Medication resource for Lisinopril for patient Novák Jan - L3"
* id = "cde4e5f6-a7b8-4934-b6bc-f06i27"
* identifier[+].system = "http://example.org/medications"
* identifier[=].value = "medication-003"
* code.coding[0].system = "https://sukl.cz/terminology/CodeSystem/dlp-lecive-pripravky"
* code.coding[0].code = #0263393
* code.coding[0].display = "LISINOPRIL SANDOZ 10MG TBL FLM 100"
