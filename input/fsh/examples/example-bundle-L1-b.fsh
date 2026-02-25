Instance: OutpatientBundle-Novak-L1
InstanceOf: CZ_BundleAmb
Description: "Example Bundle for Outpatient Report for patient Novák Jan"
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:dd6ed123-49f3-4b2e-b789-1f03c3d4e580"
* type = #document
* timestamp = "2026-02-15T14:30:45+01:00"

* entry[composition][0].fullUrl = "urn:uuid:a87fbcd9-68b7-50ce-010f-fb5d27c4e29e"
* entry[composition][=].resource = OutpatientComposition-Novak

* entry[patient][+].fullUrl = "urn:uuid:f47ac10b-58cc-4372-a567-0e02b2c3d479"
* entry[patient][=].resource = Patient-Novak

* entry[practitioner][+].fullUrl = "urn:uuid:a47ac10b-58cc-4372-a567-0e02b2c3d479"
* entry[practitioner][=].resource = Practitioner-987654321

Instance: OutpatientComposition-Novak
InstanceOf: CZ_CompositionAmb
Description: "Example Composition for Outpatient Report for patient Novák Jan"
Usage: #example
* id = "a87fbcd9-68b7-50ce-010f-fb5d27c4e29e"
* status = #final
* type.coding[0].system = $loinc
* type.coding[0].code = #34108-1
* type.coding[0].display = "Outpatient Note"
* subject = Reference(urn:uuid:a62559b6-14bc-4bc6-ae50-a0eb75357e63) // Reference to Patient-Novak
* date = "2026-02-15T14:30:45+01:00"
* author[+] = Reference(urn:uuid:a47ac10b-58cc-4372-a567-0e02b2c3d479) // Reference to Practitioner-987654321
* title = "Ambulantní zpráva - L1 composition"
* extension[presentedForm].valueAttachment = cz-pdfamb-example-aaa


Instance: cz-pdfamb-example-aaa
InstanceOf: Attachment
Usage: #inline
Description: "Ambulatory Report Document - PDF"
* contentType = #application/pdf
* language = #cs
// * data = "xxx"
* title = "Ambulantní zpráva"
* creation = "2026-02-15T14:30:45+01:00"
