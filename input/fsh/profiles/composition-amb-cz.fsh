//==========================
// PROFILE
//==========================
Profile: CZ_CompositionAmb
Parent: Composition
Id: cz-composition-amb
Title: "Composition: Outpatient Encounter Report (CZ)"
Description: "Clinical document used to represent an Outpatient Encounter Report for the scope of this guide."
* ^purpose = "Outpatient Encounter Report composition is an electronic health record extract containing Outpatient Encounter Report."
* ^publisher = "HL7 CZ"
* ^copyright = "HL7 CZ"
* . ^short = "Outpatient Encounter Report Composition"
* . ^definition = "Outpatient Encounter Report Composition. \r\n\r\n A composition is a set of healthcare-related information that is assembled together into a single logical document that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. \r\nWhile a Composition defines the structure, it does not actually contain the content: rather the full content of a document is contained in a Bundle, of which the Composition is the first resource contained."

* extension contains $event-basedOn named basedOn 0..*
* extension[basedOn].valueReference only Reference (Resource or ServiceRequest) /// add profile

* extension contains DocumentPresentedForm named presentedForm 1..*
* extension[presentedForm] ^short = "Presented form"
* extension[presentedForm].valueAttachment
  * contentType
    * ^example[0].label = "pdf"
    * ^example[0].valueCode  = $mime#application/pdf
  * data ^short = "B64 in-line data"
  * url ^short = "URL of the document"

* insert SetFmmandStatusRule ( 0, draft )

* meta
  * security 0..* MS

* identifier 1..1
  * ^short = "Report identifier"
  * ^definition = "Identifiers assigned to this report by the performer or other systems. It shall be common to several report versions"
  * ^comment = "Composition.identifier SHALL be equal to one of the OrderInformation.identifier, if at least one exists"

* status 1..1
  * ^short = "Status of the Order"
  * ^comment = ""

* subject 1..1
* subject only Reference(CZ_PatientCore)

* custodian
* custodian only Reference(CZ_OrganizationCore)
  * ^short = "Organization that manages the Outpatient Encounter Report"

* encounter
* encounter only Reference(CZ_Encounter)
  * ^short = "Context that defines the Outpatient Encounter Report"

* author
* author only Reference(CZ_PractitionerCore or CZ_PractitionerRoleCore or CZ_DeviceObserver)
  * ^short = "Who and/or what authored the Outpatient Encounter Report"

* date 1..1
  * ^short = "Date the order was created."

// =======================================================
// SECTIONS)
// =======================================================

* section 1..*
* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[0].path = "code"
* section ^slicing.rules = #open
* section ^slicing.ordered = false

* section contains
  sectionAdvanceDirectives 0..1 and
  sectionAllergies 0..1 and
  sectionAlerts 0..1 and
  // sectionEncounter 1..1 and
  sectionAdmissionEval 0..1 and
  sectionPatientHistory 0..1 and
  sectionOutpatientStay 0..1 and
  sectionMedicationSummary 0..1 and
  sectionPlanOfCare 0..1 and
  sectionAttachments 0..1

// -------------------------------
// Advance Directives
// -------------------------------
* section[sectionAdvanceDirectives].title 1..
* section[sectionAdvanceDirectives].code 1..
* section[sectionAdvanceDirectives].code = $loinc#42348-3 "Advance directives"
* section[sectionAdvanceDirectives].text 1..
* section[sectionAdvanceDirectives].entry 0..*
* section[sectionAdvanceDirectives].entry only Reference(CZ_ConsentHdr or Consent or DocumentReference)

// -------------------------------
// Allergies and Intolerances
// -------------------------------
* section[sectionAllergies].title 1..
* section[sectionAllergies].code 1..
* section[sectionAllergies].code = $loinc#48765-2 "Allergies and intolerances"
* section[sectionAllergies].text 1..
* section[sectionAllergies].entry 0..*
* section[sectionAllergies].entry only Reference(CZ_AllergyIntoleranceAmb or AllergyIntolerance or DocumentReference)

// -------------------------------
// Alerts
// -------------------------------
* section[sectionAlerts].title 1..
* section[sectionAlerts].code 1..
* section[sectionAlerts].code = $loinc#104605-1 "Alerts"
* section[sectionAlerts].text 1..
* section[sectionAlerts].entry 0..*
* section[sectionAlerts].entry only Reference(CZ_FlagAmb or Flag or DocumentReference)

// -------------------------------
// Addmission Evaluation
// -------------------------------

// -------------------------------
// Encounter
// -------------------------------

// -------------------------------
// Patient History
// -------------------------------

// -------------------------------
// Outpatient Stay
// -------------------------------

// -------------------------------
// Medication Summary
// -------------------------------

// -------------------------------
// Plan of Care
// -------------------------------

// -------------------------------
// Attachments
// -------------------------------
* section[sectionAttachments].title 1..
* section[sectionAttachments].code 1..
* section[sectionAttachments].code = $loinc#77599-9 "Additional documentation"
* section[sectionAttachments].text 1..
* section[sectionAttachments].entry 0..*
* section[sectionAttachments].entry only Reference(DocumentReference)



