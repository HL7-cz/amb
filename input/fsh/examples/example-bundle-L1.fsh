Instance: OutpatientBundle-Mracena
InstanceOf: CZ_BundleAmb
Description: "Example Bundle for Outpatient Report for patient Mrakomorová Mračena"
Usage: #example
* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:cc5b2f9b-dc18-40b3-a67a-ff1700c52405"
* type = #document
* timestamp = "2026-01-29T17:50:08+01:00"

* entry[composition][0].fullUrl = "urn:uuid:698056a8-57a6-49ed-909e-ea4216b18a6d"
* entry[composition][=].resource = OutpatientComposition-Mracena

* entry[patient][+].fullUrl = "urn:uuid:00d304b8-5839-43dd-9239-69aed544f7e1"
* entry[patient][=].resource = Patient-Mracena

* entry[practitioner][+].fullUrl = "urn:uuid:161dcf7e-928b-437a-a310-6c61038e6ff9"
* entry[practitioner][=].resource = Practitioner-123456789

Instance: OutpatientComposition-Mracena
InstanceOf: CZ_CompositionAmb
Description: "Example Composition for Outpatient Report for patient Mrakomorová Mračena"
Usage: #example
* id = "698056a8-57a6-49ed-909e-ea4216b18a6d"
* status = #final
* type.coding[0].system = $loinc
* type.coding[0].code = #34108-1
* type.coding[0].display = "Outpatient Note"
* subject = Reference(urn:uuid:00d304b8-5839-43dd-9239-69aed544f7e1) // Reference to Patient-Mracena
* date = "2026-01-29T17:50:08+01:00"
* author[+] = Reference(urn:uuid:161dcf7e-928b-437a-a310-6c61038e6ff9) // Reference to Practitioner-123456789
* title = "Ambulantní zpráva"
* extension[presentedForm].valueAttachment = cz-pdfamb-example


Instance: cz-pdfamb-example
InstanceOf: Attachment
Usage: #inline
Description: "Discharge Summary Document - PDF"
* contentType = #application/pdf
* language = #cs
// * data = "xxx"
* title = "Ambulantní zpráva"
* creation = "2026-01-29T17:50:08+01:00"

