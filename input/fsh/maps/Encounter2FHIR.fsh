Instance: encounter2FHIR-cz-amb
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/amb/ConceptMap/encounter2FHIR-cz-amb"
* name = "Encounter2FHIRCzAmb"
* title = "CZ Encounter Model to this guide Map"
* status = #draft
* experimental = true
* description = """AMB Encounter Model to this guide mapping"""

* group[+].source = "https://hl7.cz/fhir/amb/StructureDefinition/logEncounterCz"
* group[=].target = "https://hl7.cz/fhir/amb/StructureDefinition/cz-composition-amb"
* group[=].element[+].code = #logEncounterCz
* group[=].element[=].display = "A.2.3 - Údaje o ambulantním kontaktu"
* group[=].element[=].target.code = #Composition.Encounter
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent


* group[+].source = "https://hl7.cz/fhir/amb/StructureDefinition/logEncounterCz"
* group[=].target = "https://hl7.cz/fhir/amb/StructureDefinition/cz-encounter-amb"
* group[=].element[+].code = #Typ
* group[=].element[=].display = "A.2.3.1 - Typ ambulantního kontaktu"
* group[=].element[=].target.code = #Encounter.class
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Poznamka
* group[=].element[=].display = "A.2.3.2 - Poznámka"
* group[=].element[=].target.code = #Encounter.extension:note
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Datum
* group[=].element[=].display = "A.2.3.3 - Datum a čas vyšetření"
* group[=].element[=].target.code = #Encounter.period.start
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Prijem.Urgentni
* group[=].element[=].display = "A.2.3.4.1 - Urgentnost ambulantního kontaktu"
* group[=].element[=].target.code = #Encounter.priority
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Prijem.DoporucujiciLekar.Id
* group[=].element[=].display = "A.2.3.4.2 - Doručující lékař ID"
* group[=].element[=].target.code = #Encounter.participant:referrer.individual.PractitionerRole.practitioner.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Prijem.DoporucujiciLekar.Jmeno
* group[=].element[=].display = "A.2.3.4.3 - Doručující lékař Jméno"
* group[=].element[=].target.code = #Encounter.participant:referrer.individual.PractitionerRole.practitioner.name
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Prijem.DoporucujiciOrganizace.Id
* group[=].element[=].display = "A.2.3.4.4 - Doručující organizace ID"
* group[=].element[=].target.code = #Encounter.participant:referrer.individual.PractitionerRole.organization.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #duvodPrijeti
* group[=].element[=].display = "A.2.3.5.1 - Důvod ambulantního kontaktu - kód"
* group[=].element[=].target.code = #Encounter.reasonCode
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "Kod - Encounter.reasonCode.coding[] /n Komentar - Encounter.reasonCode.text"

* group[=].element[+].code = #poskytovatel.od
* group[=].element[=].display = "A.2.3.6.1 - od do"
* group[=].element[=].target.code = #Encounter.location.period
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = ""

* group[=].element[+].code = #poskytovatel.id
* group[=].element[=].display = "A.2.3.6.2 - ID poskytovatele"
* group[=].element[=].target.code = #Encounter.location.location
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = ""

* group[=].element[+].code = #poskytovatel.nazev
* group[=].element[=].display = "A.2.3.6.3 - Název poskytovatele"
* group[=].element[=].target.code = #Encounter.location.location
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = ""

* group[=].element[+].code = #poskytovatel.kontakt
* group[=].element[=].display = "A.2.3.6.4 - Kontakt poskytovatele"
* group[=].element[=].target.code = #Encounter.location.location
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = ""


* group[+].source = "https://hl7.cz/fhir/amb/StructureDefinition/logEncounterCz"
* group[=].target = "https://hl7.cz/fhir/cz-core/StructureDefinition/cz-practitionerrole-core"
* group[=].element[+].code = #Prijem.DoporucujiciLekar.Id
* group[=].element[=].display = "A.2.3.4.2 - Doručující lékař ID"
* group[=].element[=].target.code = #practitioner.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Prijem.DoporucujiciLekar.Jmeno
* group[=].element[=].display = "A.2.3.4.3 - Doručující lékař Jméno"
* group[=].element[=].target.code = #practitioner.name
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #Prijem.DoporucujiciOrganizace.Id
* group[=].element[=].display = "A.2.3.4.4 - Doručující organizace ID"
* group[=].element[=].target.code = #organization.identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[+].source = "https://hl7.cz/fhir/amb/StructureDefinition/logEncounterCz"
* group[=].target = "https://hl7.cz/fhir/cz-core/StructureDefinition/cz-organization-core"
* group[=].element[+].code = #Prijem.DoporucujiciOrganizace.Id
* group[=].element[=].display = "A.2.3.4.4 - Doručující organizace ID"
* group[=].element[=].target.code = #identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[+].source = "https://hl7.cz/fhir/amb/StructureDefinition/logEncounterCz"
* group[=].target = "https://hl7.cz/fhir/cz-core/StructureDefinition/cz-location-core"
* group[=].element[+].code = #poskytovatel.id
* group[=].element[=].display = "A.2.3.6.2 - ID poskytovatele"
* group[=].element[=].target.code = #managingOrganization
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = ""

* group[=].element[+].code = #poskytovatel.nazev
* group[=].element[=].display = "A.2.3.6.3 - Název poskytovatele"
* group[=].element[=].target.code = #managingOrganization
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = ""

* group[=].element[+].code = #poskytovatel.kontakt
* group[=].element[=].display = "A.2.3.6.4 - Kontakt poskytovatele"
* group[=].element[=].target.code = #managingOrganization
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = ""

* group[+].source = "https://hl7.cz/fhir/amb/StructureDefinition/logEncounterCz"
* group[=].target = "https://hl7.cz/fhir/cz-core/StructureDefinition/cz-organization-core"
* group[=].element[+].code = #poskytovatel.id
* group[=].element[=].display = "A.2.3.6.2 - ID poskytovatele"
* group[=].element[=].target.code = #identifier
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = "KRPZS is preferred identifier system for healthcare providers in Czechia."

* group[=].element[+].code = #poskytovatel.nazev
* group[=].element[=].display = "A.2.3.6.3 - Název poskytovatele"
* group[=].element[=].target.code = #name
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = ""

* group[=].element[+].code = #poskytovatel.kontakt
* group[=].element[=].display = "A.2.3.6.4 - Kontakt poskytovatele"
* group[=].element[=].target.code = #contact
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent
* group[=].element[=].target.comment = ""