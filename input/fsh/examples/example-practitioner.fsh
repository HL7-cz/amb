Instance: Practitioner-123456789
InstanceOf: CZ_PractitionerCore
Usage: #example
Description: "Practitioner id(KRZP)=123456789"
* id = "161dcf7e-928b-437a-a310-6c61038e6ff9"
* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/krzp"
* identifier[=].value = "123456789"
//* identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/clk"
//* identifier[=].value = "4567891230"
* name.use = #usual
* name.prefix = "MUDr."
* name.family = "Antonín"
* name.given = "Lékař"
* name.suffix = "PhD."
* gender = #male
* telecom.system = #phone
* telecom.value = "+420 212 345 678"
* telecom.use = #home
* birthDate = "1967-07-10"
* address[+].use = #work
* address[=].type = #both
* address[=].text = "Nová ulice 25, 130 00, Praha 3"
* address[=].line[+] = "Nová ulice 25"
* address[=].line[=].extension[streetName].valueString = "Nová ulice"
* address[=].line[+].extension[houseNumber].valueString = "25"
* address[=].city = "Praha 3"
* address[=].postalCode = "13000"
* address[=].country = "CZ"
* communication = urn:ietf:bcp:47#cs