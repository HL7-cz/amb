Profile: CZ_BundleAmb
Parent: Bundle
Id: cz-bundle-amb
Title: "Bundle Outpatient Encounter Report (CZ)"
Description: "Clinical document used to represent a Outpatient Encounter Report for the scope of this guide."

* . ^short = "Outpatient Encounter Report bundle"
* . ^definition = "Outpatient Encounter Report bundle contains all resources that comprise content of the bundle."
* obeys bdl-amb-1

* identifier 1..
  * ^short = "Instance identifier"
* type = #document (exactly)
* timestamp 1..
  * ^short = "Instance identifier"
* link ..0
* entry ^slicing.discriminator[0].type = #type
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.discriminator[+].type = #profile
* entry ^slicing.discriminator[=].path = "resource"
* entry ^slicing.rules = #open
* entry ^slicing.ordered = false
* entry ^short = "Entry resources in the Outpatient Encounter Report bundle"
* entry ^definition = "An entry resource included in the Outpatient Encounter Report document bundle resource."
* entry ^comment = "Must contain the Composition as the first entry (only a single Composition resource instance may be included). Additional constraints are specified in the HDR Composition profile."
* entry 1..
  * link ..0
  * fullUrl 1..1
  * resource 1..
  * search ..0
  * request ..0
  * response ..0

* entry.resource 1..
* entry contains 
    composition 1..1 and
    patient 1..* and
    allergyIntolerance 0..* and
    condition 0..* and
    device 0..* and
    deviceUseStatement 0..* and
    diagnosticReport 0..* and
    encounter 0..* and
    imagingStudy 0..* and
    immunization 0..* and
    media 0..* and
    medication 0..* and
    medicationRequest 0..* and
    medicationStatement 0..* and
    practitioner 0..* and
    practitionerRole 0..* and
    procedure 0..* and
    organization 0..* and
    observation 0..* and
    specimen 0..* and
    medicationDispense 0..* and
    medicationAdministration  0..* and
    familyMemberHistory 0..* and
    documentReference 0..* and
    flag 0..* and
    carePlan 0..* and
    goal 0..* and
    consent 0..* and
    provenance 0..* and
    coverage 0..*
  
* entry[composition].resource only CZ_CompositionAmb
* entry[patient].resource only CZ_PatientCore
* entry[allergyIntolerance].resource only CZ_AllergyIntoleranceAmb
* entry[condition].resource only CZ_ConditionHdr //TODO to AMB?
* entry[device].resource only CZ_MedicalDevice
* entry[deviceUseStatement].resource only CZ_DeviceUseStatementHdr // TODO to AMB?
* entry[diagnosticReport].resource only CZ_DiagnosticReport
* entry[encounter].resource only CZ_EncounterHdr //TODO to AMB?
* entry[imagingStudy].resource only CZ_StudyImaging
* entry[immunization].resource only CZ_ImmunizationHdr // TODO to AMB?
* entry[media].resource only Media // $Media-observation-uv-ips
* entry[medication].resource only CZ_Medication
* entry[medicationRequest].resource only CZ_MedicationRequestHdr //TODO to AMB?
* entry[medicationStatement].resource only CZ_MedicationStatement
* entry[medicationAdministration].resource only MedicationAdministration
* entry[medicationDispense].resource only MedicationDispense
* entry[practitioner].resource only CZ_PractitionerCore
* entry[practitionerRole].resource only CZ_PractitionerRoleCore
* entry[procedure].resource only CZ_ProcedureHdr //TODO to AMB?
* entry[organization].resource only CZ_OrganizationCore
* entry[observation].resource only Observation // $Observation-results-uv-ips
* entry[specimen].resource only CZ_Specimen
* entry[flag].resource only CZ_FlagAmb
* entry[familyMemberHistory].resource only FamilyMemberHistory
* entry[documentReference].resource only DocumentReference
* entry[carePlan].resource only CZ_CarePlanHdr //TODO to AMB?
* entry[goal].resource only Goal
* entry[consent].resource only Consent
* entry[provenance].resource only CZ_Provenance
* entry[coverage].resource only CZ_Coverage

* signature ^short = "Report Digital Signature"
  * type ^short = "Digital Signature Purposes"
  * when ^short = "When was signed"
  * who ^short = "Who signed."
  * data ^short = "Signature content"

Invariant: bdl-amb-1
Description: "A document must have no additional Composition (including Composition subclass) resources besides the first."
Severity: #error
Expression: "entry.tail().where(resource is Composition).empty()"