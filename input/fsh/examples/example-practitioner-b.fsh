Instance: Practitioner-987654321
InstanceOf: CZ_PractitionerCore
Usage: #example
Description: "Practitioner id(KRZP)=987654321"
* id = "a47ac10b-58cc-4372-a567-0e02b2c3d479"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krzp"
* identifier[=].value = "987654321"
* name.use = #usual
* name.prefix = "MUDr."
* name.family = "Svoboda"
* name.given = "Jan"
* gender = #male
* telecom.system = #phone
* telecom.value = "+420 542 321 654"
* telecom.use = #work
* birthDate = "1972-05-18"
* address[+].use = #work
* address[=].type = #both
* address[=].text = "Nádražní 17, 602 00, Brno"
* address[=].line[+] = "Nádražní 17"
* address[=].line[=].extension[streetName].valueString = "Nádražní"
* address[=].line[+].extension[houseNumber].valueString = "17"
* address[=].city = "Brno"
* address[=].postalCode = "60200"
* address[=].country = "CZ"
* communication = urn:ietf:bcp:47#cs
