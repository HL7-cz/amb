Instance: AdmissionEvaluation2FHIR-cz-amb
InstanceOf: ConceptMap
Usage: #definition
* url = "https://hl7.cz/fhir/amb/ConceptMap/AdmissionEvaluation2FHIR-cz-amb"
* name = "AdmissionEvaluation2FHIRCzAmb"
* title = "CZ Admission Evaluation Model to this guide Map"
* status = #draft
* experimental = true
* description = """AMB Admission Evaluation Model to this guide mapping"""

* group[+].source = "https://hl7.cz/fhir/amb/StructureDefinition/logAdmissionEvaluationCz"
* group[=].target = "https://hl7.cz/fhir/amb/StructureDefinition/cz-composition-amb"
* group[=].element[+].code = #logAdmissionEvaluationCz
* group[=].element[=].display = "A.2.4 - Údaje o klinickém stavu při prezentaci"
* group[=].element[=].target.code = #Composition.section:sectionAdmissionEvaluation
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #objectiveFindings.anthropometricObservations
* group[=].element[=].display = "A.2.4.1.3 - Anthropometric observations"
* group[=].element[=].target.code = #Composition.section:sectionAdmissionEvaluation.entry:Observation() 
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #objectiveFindings.vitalSigns
* group[=].element[=].display = "A.2.4.1.4 - Vital signs"
* group[=].element[=].target.code = #Composition.section:sectionAdmissionEvaluation.entry:Observation() 
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[=].element[+].code = #functionalStatus.physicalExamination
* group[=].element[=].display = "A.2.4.1.5 - Physical examination"
* group[=].element[=].target.code = #Composition.section:sectionAdmissionEvaluation.entry:Observation() 
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent

* group[+].source = "https://hl7.cz/fhir/amb/StructureDefinition/logAdmissionEvaluationCz"
* group[=].target = "http://hl7.org/fhir/StructureDefinition/Observation"
* group[=].element[+].code = #objectiveFindings.date
* group[=].element[=].display = "A.2.4.1.1 - Date and time"
* group[=].element[=].target.code = #effectiveDateTime 
* group[=].element[=].target.display = ""
* group[=].element[=].target.equivalence = #equivalent