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

* identifier 0..1
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

* section 0..*
* section ^slicing.discriminator[0].type = #pattern
* section ^slicing.discriminator[0].path = "code"
* section ^slicing.rules = #open
* section ^slicing.ordered = false

* section contains
  sectionAdvanceDirectives 0..1 and
  sectionAllergies 0..1 and
  sectionAlerts 0..1 and
  // sectionEncounter 1..1 and - není samostatná sekce je obsaženo v .encounter
  sectionAdmissionEvaluation 0..1 and
  sectionPatientHistory 0..1 and
  sectionEncounterSummary 0..1 and
  sectionMedicationSummary 0..1 and
  sectionPlanOfCare 0..1 and
  sectionAttachments 0..1

// -------------------------------
// Advance Directives
// -------------------------------
* section[sectionAdvanceDirectives].title 1..
* section[sectionAdvanceDirectives].code 1..
* section[sectionAdvanceDirectives].code = $loinc#42348-3 "Advance healthcare directives"
* section[sectionAdvanceDirectives].text 1..
* section[sectionAdvanceDirectives].entry 0..*
* section[sectionAdvanceDirectives].entry only Reference(CZ_ConsentHdr or Consent or DocumentReference)

// -------------------------------
// Allergies and Intolerances
// -------------------------------
* section[sectionAllergies].title 1..
* section[sectionAllergies].code 1..
* section[sectionAllergies].code = $loinc#48765-2 "Allergies and adverse reactions Document"
* section[sectionAllergies].text 1..
* section[sectionAllergies].entry 0..*
* section[sectionAllergies].entry only Reference(CZ_AllergyIntoleranceAmb or CZ_AllergyIntolerance or AllergyIntolerance or DocumentReference)

// -------------------------------
// Alerts
// -------------------------------
* section[sectionAlerts].title 1..
* section[sectionAlerts].code 1..
* section[sectionAlerts].code = $loinc#104605-1 "Alert"
* section[sectionAlerts].text 1..
* section[sectionAlerts].entry 0..*
* section[sectionAlerts].entry only Reference(CZ_FlagAmb or Flag or DocumentReference)

// -------------------------------
// Admission Evaluation
// -------------------------------
* section[sectionAdmissionEvaluation].title 1..
* section[sectionAdmissionEvaluation].code 1..
* section[sectionAdmissionEvaluation].code = $loinc#67851-6 "Admission evaluation note"
* section[sectionAdmissionEvaluation].text 1..
* section[sectionAdmissionEvaluation].entry 0..*
* section[sectionAdmissionEvaluation].entry only Reference($vitalsigns or CZ_ObservationBMIHdr or CZ_ObservationWeightHdr or Observation or DocumentReference) 

// -------------------------------
// Patient History
// -------------------------------
* section[sectionPatientHistory].title 1..
* section[sectionPatientHistory].code 1..
* section[sectionPatientHistory].code = $loinc#35090-0 "Patient history"

// SLICING PRO VNOŘENÉ SECTION
* section[sectionPatientHistory].section ^slicing.discriminator[0].type = #pattern
* section[sectionPatientHistory].section ^slicing.discriminator[0].path = "code"
* section[sectionPatientHistory].section ^slicing.rules = #open
* section[sectionPatientHistory].section ^slicing.ordered = false

* section[sectionPatientHistory].section contains
      PastIllnessHx 0..1 and
      HistoryMedicalDevices 0..1 and
      ProceduresHx 0..1 and
      ImmunizationHx 0..* and
      InfectiousContacts 0..* and
      TravelHx 0..* and
      FamilyHistory 0..* and
      SocialHistory 0..1 and
      AlcoholUse 0..1 and
      TobaccoUse 0..1 and
      DrugUse 0..1 and 
      SubstanceUse 0..1

* section[sectionPatientHistory].section[PastIllnessHx]
  * title = "Past illness history"
  * code = $loinc#11348-0 "History of Past illness note"
  * text 1..1
  * entry 0..*
  * entry only Reference(CZ_ConditionHdr or DocumentReference)

* section[sectionPatientHistory].section[HistoryMedicalDevices]
  * title = "History of medical devices"
  * code = $loinc#46264-8 "History of medical device use"
  * text 1..1
  * entry 0..*
  * entry only Reference(CZ_MedicalDevice or DeviceUseStatement or DocumentReference)

* section[sectionPatientHistory].section[ProceduresHx]
  * title = "Procedures history"
  * code = $loinc#47519-4 "History of Procedures Document"
  * text 1..1
  * entry 0..*
  * entry only Reference(CZ_ProcedureHdr or DocumentReference)

* section[sectionPatientHistory].section[ImmunizationHx]
  * title = "Immunizations"
  * code = $loinc#11369-6 "History of Immunization note"
  * text 1..1
  * entry 0..*
  * entry only Reference(CZ_ImmunizationHdr or DocumentReference)

* section[sectionPatientHistory].section[InfectiousContacts]
  * title = "Infectious contacts"
  // * code = $loinc#56838-6 "History of Infectious disease Narrative"
  * code = TemporaryHDRSystem#infection-contact "Infectious contacts"
  * text 1..1
  * entry 0..*
  * entry only Reference(CZ_ObservationInfectiousContactHdr or DocumentReference)

* section[sectionPatientHistory].section[TravelHx]
  * title = "Travel history"
  * code = $loinc#10182-4 "History of Travel note"
  * text 1..1
  * entry 0..*
  * entry only Reference(CZ_ObservationTravelHdr or DocumentReference)


* section[sectionPatientHistory].section[FamilyHistory]
  * title = "Family history"
  * code = $loinc#10157-6 "History of family member diseases note"
  * text 1..1
  * entry 0..*
  * entry only Reference(FamilyMemberHistory or DocumentReference)

* section[sectionPatientHistory].section[SocialHistory]
  * title = "Sociální anamnéza"
  * code = $loinc#29762-2 "Social history note"
  * text 1..1
  * entry 0..*
  * entry only Reference(CZ_ObservationSdohHdr or DocumentReference)

* section[sectionPatientHistory].section[AlcoholUse]
  * title = "Alcohol use"
  * code = $loinc#11331-6 "History of Alcohol use"
  * text 1..1
  * entry 0..*
  * entry only Reference(Observation or DocumentReference)

* section[sectionPatientHistory].section[TobaccoUse]
  * title = "Tobacco use"
  * code = $loinc#11367-0 "History of Tobacco use"
  * text 1..1
  * entry 0..*
  * entry only Reference(Observation or DocumentReference)

* section[sectionPatientHistory].section[DrugUse]
  * title = "Drug use"
  * code = $loinc#11343-1 "History of Other nonmedical drug use"
  * text 1..1
  * entry 0..*
  * entry only Reference(Observation or DocumentReference)

* section[sectionPatientHistory].section[SubstanceUse]
  * title = "Other addictions"
  * code = $loinc#108229-6 "Use of substance note"
  * text 1..1
  * entry 0..*
  * entry only Reference(Observation or DocumentReference)
     
// -------------------------------
// Encouter Summary
// -------------------------------
// --- container section
* section[sectionEncounterSummary].title 1..
* section[sectionEncounterSummary].code 1..
* section[sectionEncounterSummary].code = $loinc#67781-5 "Summarization of encounter note"

// SLICING PRO VNOŘENÉ SECTION
* section[sectionEncounterSummary].section ^slicing.discriminator[0].type = #pattern
* section[sectionEncounterSummary].section ^slicing.discriminator[0].path = "code"
* section[sectionEncounterSummary].section ^slicing.rules = #open
* section[sectionEncounterSummary].section ^slicing.ordered = false

* section[sectionEncounterSummary].section contains
      ProblemList 0..1 and
      ProceduresAndTreatments 0..1 and
      MedicalDevices 0..1 and
      MedicationDuring 0..* and
      Results 0..* and
      ClinicalSummary 0..*

// ------------------------------------------------------------
// A.2.7.1 Diagnostický souhrn (problémy/diagnózy/příznaky)
// ------------------------------------------------------------
* section[sectionEncounterSummary].section[ProblemList]
  * title = "Diagnostický souhrn"
  * code = $loinc#11450-4 "Problem list - Reported"
  * text 1..1
  * entry 0..*
  * entry only Reference(Condition or ClinicalImpression)

// ------------------------------------------------------------
// A.2.7.2 Výkony
// ------------------------------------------------------------
* section[sectionEncounterSummary].section[ProceduresAndTreatments]
  * title = "Výkony"
  * code = $loinc#29554-3 "Procedure Narrative"
  * text 1..1
  * entry 0..*
  * entry only Reference(Procedure or MedicationAdministration)

// ------------------------------------------------------------
// A.2.7.3 Zdravotní pomůcky a implantáty
// ------------------------------------------------------------
* section[sectionEncounterSummary].section[MedicalDevices]
  * title = "Zdravotní pomůcky a implantáty"
  * code = $loinc#57080-4 "Implanted medical device Narrative"
  * text 1..1
  * entry 0..*
  * entry only Reference(Device or DeviceUseStatement)

// ------------------------------------------------------------
// A.2.7.4 Další významná léčba (chemo, radio, dialýza, transfúze…)
// ------------------------------------------------------------
//JE ZAHRNUTO V section[sectionEncounterSummary].section[Procedures]

// ------------------------------------------------------------
// A.2.7.5 Medikace během ambulantního kontaktu (vybraná)
// ------------------------------------------------------------
* section[sectionEncounterSummary].section[MedicationDuring]
  * title = "Medikace během ambulantního kontaktu"
  * code = $loinc#29549-3 "Medication administered Narrative"
  * text 1..1
  * entry 0..*
  * entry only Reference(MedicationAdministration or MedicationStatement)

// Pozn.: Medikace doporučená po propuštění patří typicky do bloku Medication Summary.

// ------------------------------------------------------------
// A.2.7.6 Výsledky vyšetření
// ------------------------------------------------------------
* section[sectionEncounterSummary].section[Results]
  * title = "Výsledky vyšetření"
  * code = $loinc#30954-2 "Relevant diagnostic tests/laboratory data note"
  * text 1..1
  * entry 0..*
  * entry only Reference(Observation or DiagnosticReport or ImagingStudy)

// ------------------------------------------------------------
// A.2.7.7 Klinické shrnutí
// ------------------------------------------------------------
* section[sectionEncounterSummary].section[ClinicalSummary]
  * title = "Klinické shrnutí"
  * code = $loinc#51848-0 "Evaluation note"
  * text 1..1
  * entry 0..*
  * entry only Reference(ClinicalImpression)


// -------------------------------
// Medication Summary
// -------------------------------
* section[sectionMedicationSummary].title 1..
* section[sectionMedicationSummary].code 1..
* section[sectionMedicationSummary].code = $loinc#10160-0 "History of Medication use Narrative"
* section[sectionMedicationSummary].text 1..
* section[sectionMedicationSummary].entry 0..*
* section[sectionMedicationSummary].entry only Reference(MedicationStatement or MedicationRequest or DocumentReference)

// -------------------------------
// Plan of Care
// -------------------------------
* section[sectionPlanOfCare].title 1..
* section[sectionPlanOfCare].code 1..
* section[sectionPlanOfCare].code = $loinc#18776-5 "Plan of care note"
* section[sectionPlanOfCare].text 1..
* section[sectionPlanOfCare].entry 0..*
* section[sectionPlanOfCare].entry only Reference(CarePlan or DocumentReference)

// -------------------------------
// Attachments
// -------------------------------
* section[sectionAttachments].title 1..
* section[sectionAttachments].code 1..
* section[sectionAttachments].code = $loinc#77599-9 "Additional documentation"
* section[sectionAttachments].text 1..
* section[sectionAttachments].entry 0..*
* section[sectionAttachments].entry only Reference(DocumentReference)



