Instance: Patient-Mracena
InstanceOf: CZ_PatientCore
Usage: #example
Description: "Patient, contact information and practitioner"

* id = "00d304b8-5839-43dd-9239-69aed544f7e1"

// * contained[+] = RegisteringProviderExample
* identifier[RC][+].system = "https://ncez.mzcr.cz/fhir/sid/rcis"
* identifier[RC][=].value = "7161264528"
* identifier[RC][=].use = #official
* identifier[RID][+].system = "https://ncez.mzcr.cz/fhir/sid/rid"
* identifier[RID][=].value = "2066425387"
* identifier[PAS][+].system = "http://terminology.hl7.org/NamingSystem/passportNumNS-CZE"
* identifier[PAS][=].value = "23476533"
* identifier[PAS][=].use = #official
* identifier[PAS][=].type = $v2-0203#PPN
* identifier[PAS][=].assigner.display = "Ministerstvo vnitra České republiky"
* identifier[PAS][+].system = "http://terminology.hl7.org/NamingSystem/passportNumNS-SVK"
* identifier[PAS][=].value = "88476522"
* identifier[PAS][=].use = #official
* identifier[PAS][=].type = $v2-0203#PPN

// * extension[nationality].extension[code].valueCodeableConcept = urn:iso:std:iso:3166#CZ
* name.use = #usual
* name.family = "Mrakomorová"
* name.given = "Mračena"
// * telecom.system = #phone
// * telecom.value = "+420 603 853 227"
// * telecom.use = #home
// * gender = #female
* birthDate = "1971-11-26"
// * address[+].use = #home
// * address[=].type = #physical
// * address[=].text = "Malé náměstí 13a, 150 00, Praha 5"
// * address[=].line[+] = "Malé náměstí 13a"
// * address[=].line[=].extension[streetName].valueString = "Malé náměstí"
// * address[=].line[=].extension[houseNumber].valueString = "13a"
// * address[=].city = "Praha"
// * address[=].postalCode = "15000"
// * address[=].country = "CZ"
//   * extension[countryCode].valueCoding = urn:iso:std:iso:3166#CZ "Czechia"

// * contact[+].relationship.coding[+] = $v3-RoleCode#MTH "matka"
// * contact[=].relationship.coding[+] = $v2-0131#N "Příbuzný"
// * contact[=].name.use = #usual
// * contact[=].name.family = "Mrakomorová"
// * contact[=].name.given[+] = "Biologická"
// * contact[=].name.given[+] = "Matka"
// * contact[=].telecom[+].use = #mobile
// * contact[=].telecom[=].system = #phone
// * contact[=].telecom[=].value = "+420 604 123 456"

// * contact[+].relationship.coding[+] = $v3-RoleCode#FRND "přítel/přítelkyně"
// * contact[=].relationship.coding[+] = $v2-0131#C "Emergentní kontakt"
// * contact[=].name.use = #usual
// * contact[=].name.family = "Dlouhá"
// * contact[=].name.given[0] = "Alena"
// * contact[=].telecom.system = #phone
// * contact[=].telecom.value = "+420 601 111 111"
// * contact[=].telecom.use = #home
// * contact[=].address[+].use = #home
// * contact[=].address[=].type = #physical
// * contact[=].address[=].text = "Horná ulica 18, 123 45, Trenčín, Slovensko"
// * contact[=].address[=].line[+] = "Horná ulica 18"
// * contact[=].address[=].line[=].extension[streetName].valueString = "Horná ulica"
// * contact[=].address[=].line[=].extension[houseNumber].valueString = "18"
// * contact[=].address[=].city = "Trenčín"
// * contact[=].address[=].postalCode = "12345"
// * contact[=].address[=].country = "Slovensko"
//   * extension[countryCode].valueCoding = urn:iso:std:iso:3166#SK "Slovakia"

// * communication[+].language = urn:ietf:bcp:47#cs
// * communication[=].preferred = true
// * communication[+].language = urn:ietf:bcp:47#en
// * communication[+].language = urn:ietf:bcp:47#de

// * generalPractitioner.identifier.system = "https://ncez.mzcr.cz/fhir/sid/krzp"
// * generalPractitioner.identifier.value = "123456789"
// * generalPractitioner.display = "MUDr. Josef Švejk"

// * extension[registeringProvider][+].extension[value].valueReference = Reference (RegisteringProviderExample)
// * extension[registeringProvider][=].extension[category].valueCodeableConcept = $sctCZ#700232004 "General medical service"
// * extension[registeringProvider][+].extension[value].valueReference = Reference (RegisteringProviderExample)
// * extension[registeringProvider][=].extension[category].valueCodeableConcept = $sctCZ#310061009 "Gynecology service"

// Instance: RegisteringProviderExample
// InstanceOf: CZ_OrganizationCore
// Title: "Organization: Registering healthcare provider example"
// Description: "Example of registering healthcare provider"
// Usage: #example //#inline

// * identifier[+].system = "https://ncez.mzcr.cz/fhir/sid/ico"
// * identifier[=].value = "123456789"
// * type[+] = $drzar#320 "Samost. ordinace všeob. prakt. lékaře"
// * name = "MUDr. Jaromír Doktor"
