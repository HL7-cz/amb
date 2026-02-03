Logical: LogEnOutpatientEncounterReportCz
Id: OutpatientEncounterReportCz
Title: "A - Outpatient Encounter Report"
Description: """Outpatient Encounter Report"""

* header 1..1 HeaderAmbCz "A.1 - Outpatient Encounter Report header data element" """Outpatient Encounter Report header data element"""
* body 0..1 Base "A.2 - Outpatient Encounter Report body data element" """Outpatient Encounter Report body data element"""
* body.advanceDirectives 0..1 AdvanceDirectivesCz "A.2.1 - Advance directives" """Advance directives"""
* body.alerts 0..1 AlertsCz "A.2.2 - Alerts" """Alerts"""
* body.encounter 1..1 EncounterCz "A.2.3 - Encounter" """Encounter """
* body.clinicalStatusAtPresentation 0..1 ClinicalStatusAtPresentationCz "A.2.4 - Clinical Status At Presentation" """Clinical Status At Presentation - Clinical status should be reported exceptionally only if it is relevant to ensure continuity of care."""
* body.patientHistory 0..1 PatientHistoryCz "A.2.6 - Patient history" """Patient history (might include information about provenance of the information)"""
* body.outpatientStay 0..1 OutpatientStayCz "A.2.7 - Outpatient stay" """Outpatient stay"""
* body.medicationSummary 1..* MedicationSummaryCz "A.2.8 - Discharge details" """Discharge details (structured information should be provided, however if not available, at least a summary note should be present)."""
* body.recommendations 0..1 Base "A.2.9 - Care plan and other recommendations after discharge." """Care plan and other recommendations after discharge."""
* body.recommendations.carePlan 0..* PlanOfCareCz "A.2.9.1 - Care plan" """Care plan after discharge. Multiple care plans could be provided."""

* presentedForm 1..* PresentedFormCz "A.3 - Presented Form" """Entire order as issued. Various formats could be provided,  pdf format is recommended."""
* media 0..* AttachmentsCz "A.4 - Media Attachment" """Aditional media attachment"""