//==========================
// PROFILE
//==========================
Profile: CZ_CompositionAmb
Parent: Composition
Id: cz-compositionAmb
Title: "Composition: Outpatient Encounter Report (CZ)"
Description: "Clinical document used to represent an Outpatient Encounter Report for the scope of this guide."
* ^purpose = "Outpatient Encounter Report composition is an electronic health record extract containing Outpatient Encounter Report."
* ^publisher = "HL7 CZ"
* ^copyright = "HL7 CZ"
* . ^short = "Outpatient Encounter Report Composition"
* . ^definition = "Outpatient Encounter Report Composition. \r\n\r\n A composition is a set of healthcare-related information that is assembled together into a single logical document that provides a single coherent statement of meaning, establishes its own context and that has clinical attestation with regard to who is making the statement. \r\nWhile a Composition defines the structure, it does not actually contain the content: rather the full content of a document is contained in a Bundle, of which the Composition is the first resource contained."

* insert SetFmmandStatusRule ( 0, draft )

* meta
  * security 0..* MS

* identifier
  * ^short = "Report identifier"
  * ^definition = "Identifiers assigned to this report by the performer or other systems. It shall be common to several report versions"
  * ^comment = "Composition.identifier SHALL be equal to one of the OrderInformation.identifier, if at least one exists"

* status
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

* date
  * ^short = "Date the order was created."



* extension contains $artifact-relatedArtifact named relatedArtifact 0..*
* extension[relatedArtifact]
  * ^short = "Related artefacts: e.g. presented form"
* extension[relatedArtifact].valueRelatedArtifact.type
  * ^example[0].label = "presented form"
  * ^example[0].valueCodeableConcept  = http://hl7.org/fhir/related-artifact-type#documentation
  // ItT seems not appropriate as code... to be changed if this solution is used
* extension[relatedArtifact].valueRelatedArtifact.document