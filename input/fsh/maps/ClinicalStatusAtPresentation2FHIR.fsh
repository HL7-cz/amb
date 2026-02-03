Instance: clinicalStatusAtPresentation2FHIR-cz-amb
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/amb/ConceptMap/clinicalStatusAtPresentation2FHIR-cz-amb"
* name = "ClinicalStatusAtPresentation2FHIRCzAmb"
* title = "CZ Clinical Status At Presentation Model to this guide Map"
* status = #draft
* experimental = true
* description = """AMB Clinical Status At Presentation Model to this guide mapping"""

* group[+].source = "https://hl7.cz/fhir/amb/StructureDefinition/logClinicalStatusAtPresentationCz"
* group[=].target = "https://hl7.cz/fhir/amb/StructureDefinition/cz-composition-amb"
* group[=].element[+].code = #logClinicalStatusAtPresentationCz
* group[=].element[=].display = "A.2.4 - Údaje o klinickém stavu při prezentaci"
* group[=].element[=].target.code = #Composition.section:sectionClinicalStatusAtPresentation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #objectiveFindings.anthropometricObservations
* group[=].element[=].display = "A.2.4.1.3 - Anthropometric observations"
* group[=].element[=].target.code = #Composition.section:sectionClinicalStatusAtPresentation.entry:Observation() 
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #objectiveFindings.vitalSigns
* group[=].element[=].display = "A.2.4.1.4 - Vital signs"
* group[=].element[=].target.code = #Composition.section:sectionClinicalStatusAtPresentation.entry:Observation() 
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #functionalStatus.physicalExamination
* group[=].element[=].display = "A.2.4.1.5 - Physical examination"
* group[=].element[=].target.code = #Composition.section:sectionClinicalStatusAtPresentation.entry:Observation() 
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[+].source = "https://hl7.cz/fhir/amb/StructureDefinition/logClinicalStatusAtPresentationCz"
* group[=].target = "http://hl7.org/fhir/StructureDefinition/Observation"
* group[=].element[+].code = #objectiveFindings.date
* group[=].element[=].display = "A.2.4.1.1 - Date and time"
* group[=].element[=].target.code = #effectiveDateTime 
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent