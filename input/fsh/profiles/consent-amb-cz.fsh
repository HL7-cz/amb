Profile: CZ_ConsentAmb
Parent: Consent
Id: cz-consent-amb-cz
Title: "Consent  (Advance Directives) (AMB CZ)"
Description: """This profile constrains the Consent resource for the purpose of representing Advance Directives in this project."""
* ^purpose = "This profile constrains the Consent resource to model Advance Directives, documenting a patient's future medical decisions."

* patient only Reference(CZ_PatientCore)
* dateTime 1..1
* category 1..1 
  * ^binding.valueSet = "https://hl7.cz/fhir/hdr/ValueSet/cz-consent-category"
* status = #active
* text 0..1
* provision 0..0 