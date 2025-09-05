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
    encounter 0..* and
    practitioner 0..* and
    practitionerRole 0..* and
    organization 0..*
  
* entry[composition].resource only CZ_CompositionAmb
* entry[patient].resource only CZ_PatientCore
* entry[encounter].resource only CZ_Encounter
* entry[practitioner].resource only CZ_PractitionerCore
* entry[practitionerRole].resource only CZ_PractitionerRoleCore
* entry[organization].resource only CZ_OrganizationCore

* signature ^short = "Report Digital Signature"
  * type ^short = "Digital Signature Purposes"
  * when ^short = "When was signed"
  * who ^short = "Who signed."
  * data ^short = "Signature content"

Invariant: bdl-amb-1
Description: "A document must have no additional Composition (including Composition subclass) resources besides the first."
Severity: #error
Expression: "entry.tail().where(resource is Composition).empty()"

