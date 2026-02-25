Instance: Patient-Novak
InstanceOf: CZ_PatientCore
Usage: #example
Description: "Patient, contact information and practitioner"

* id = "a62559b6-14bc-4bc6-ae50-a0eb75357e63"

* identifier[RC][+].system = "https://ncez.mzcr.cz/fhir/sid/rcis"
* identifier[RC][=].value = "8742518639"
* identifier[RC][=].use = #official
* identifier[RID][+].system = "https://ncez.mzcr.cz/fhir/sid/rid"
* identifier[RID][=].value = "5194827361"
* identifier[PAS][+].system = "http://terminology.hl7.org/NamingSystem/passportNumNS-CZE"
* identifier[PAS][=].value = "51892374"
* identifier[PAS][=].use = #official
* identifier[PAS][=].type = $v2-0203#PPN
* identifier[PAS][=].assigner.display = "Ministerstvo vnitra České republiky"

* name.use = #usual
* name.family = "Novák"
* name.given = "Jan"
* birthDate = "1968-03-15"

// * telecom.system = #phone
// * telecom.value = "+420 728 456 123"
// * telecom.use = #home
// * gender = #male

// * address[+].use = #home
// * address[=].type = #physical
// * address[=].text = "Lesná ulica 22, 641 00, Brno"
// * address[=].line[+] = "Lesná ulica 22"
// * address[=].line[=].extension[streetName].valueString = "Lesná ulica"
// * address[=].line[=].extension[houseNumber].valueString = "22"
// * address[=].city = "Brno"
// * address[=].postalCode = "64100"
// * address[=].country = "CZ"
//   * extension[countryCode].valueCoding = urn:iso:std:iso:3166#CZ "Czechia"

// * communication[+].language = urn:ietf:bcp:47#cs
// * communication[=].preferred = true

// * generalPractitioner.identifier.system = "https://ncez.mzcr.cz/fhir/sid/krzp"
// * generalPractitioner.identifier.value = "987654321"
// * generalPractitioner.display = "MUDr. Jan Svoboda"
