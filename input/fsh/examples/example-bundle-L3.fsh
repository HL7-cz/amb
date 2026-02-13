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

* section[sectionAlerts].title = "Varování"
* section[sectionAlerts].code.coding[0].system = $loinc
* section[sectionAlerts].code.coding[0].code = #104605-1 // Alert
* section[sectionAlerts].code.coding[0].display = "Alert"
* section[sectionAlerts].text.status = #additional
* section[sectionAlerts].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient na dlouhodobé antikoagulační léčbě.</div>"
* section[sectionAlerts].entry[0] = Reference(urn:uuid:90482ba4-9384-428a-a384-5b09f1293a0e) // Reference to Flag instance




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
