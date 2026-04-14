/// Bundle ///
Instance: OutpatientBundle-Mracena-L3
InstanceOf: CZ_BundleAmb
Description: "Example Bundle for Outpatient Report for patient Mrakomorová Mračena - L3"
Usage: #example

* identifier.system = "urn:ietf:rfc:3986"
* identifier.value = "urn:uuid:d535d449-d00c-4acb-8624-6fa9a08966dd"
* type = #document
* timestamp = "2026-01-29T09:50:08+01:00"

* entry[composition][0].fullUrl = "urn:uuid:418da506-19c3-4e00-94d5-31a15f8c7860"
* entry[composition][=].resource = OutpatientComposition-Mracena-L3

* entry[patient][+].fullUrl = "urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590"
* entry[patient][=].resource = Patient-Mracena-L3

* entry[practitioner][+].fullUrl = "urn:uuid:77fa78d2-154c-4d38-824e-3c38b39c6a42"
* entry[practitioner][=].resource = Practitioner-Jansky
// Sekce Dříve vyslovaná přání
* entry[consent][+].fullUrl = "urn:uuid:64054bb3-093f-4b94-aa58-17940bc4d3ad"
* entry[consent][=].resource = AdvanceDirective-Mracena-L3
// Sekce Alergie a intolerance
* entry[allergyIntolerance][+].fullUrl = "urn:uuid:ad596f22-799b-4cdb-b8f2-6198a6d0a53c"
* entry[allergyIntolerance][=].resource = AllergyIntolerance-Penicilin
* entry[allergyIntolerance][+].fullUrl = "urn:uuid:a1de206e-b7dc-4d63-9efc-6b3d4913822f"
* entry[allergyIntolerance][=].resource = AllergyIntolerance-Latex
* entry[allergyIntolerance][+].fullUrl = "urn:uuid:0711ad77-bbd4-4242-9e82-4d612a8cfda8"
* entry[allergyIntolerance][=].resource = AllergyIntolerance-Nuts
// Sekce Varování
* entry[flag][+].fullUrl = "urn:uuid:90482ba4-9384-428a-a384-5b09f1293a0e"
* entry[flag][=].resource = Alert-Anticoagulation
// Sekce Stav při přijetí/příchodu
// Sekce Anamnéza - textový popis s referencemi na další zdroje, proto žádný resource pro tuto sekci
// Patient History - subsekce Past Illness History - textový popis s referencemi na další zdroje, proto žádný resource pro tuto subsekci, ale strukturované reference na Condition resources pro jednotlivé diagnózy
* entry[condition][+].fullUrl = "urn:uuid:pastillnes0"
* entry[condition][=].resource = Condition-Hypertension-past
* entry[condition][+].fullUrl = "urn:uuid:pastillnes1"
* entry[condition][=].resource = Condition-AtrialFibrillation-past
* entry[condition][+].fullUrl = "urn:uuid:pastillnes2"
* entry[condition][=].resource = Condition-Astma
// Patient History - subsekce History Medical Devices - textový popis s referencemi na další zdroje, proto žádný resource pro tuto subsekci, ale strukturované reference na Device resources pro jednotlivé zdravotnické prostředky 
* entry[device][+].fullUrl = "urn:uuid:medicaldevice1"
* entry[device][=].resource = Device-CardiacPacemaker
// Patient History - subsekce Procedures History - textový popis s referencemi na další zdroje, proto žádný resource pro tuto subsekci, ale strukturované reference na Procedure resources pro jednotlivé výkony
* entry[procedure][+].fullUrl = "urn:uuid:procedureHx1"
* entry[procedure][=].resource = Procedure-CardiacPacemakerImplantation
// Patient History - subsekce Immunization History - textový popis s referencemi na další zdroje, proto žádný resource pro tuto subsekci, ale strukturované reference na Immunization resources pro jednotlivá očkování
* entry[immunization][+].fullUrl = "urn:uuid:immunization1"
* entry[immunization][=].resource = Immunization-Influenza
* entry[immunization][+].fullUrl = "urn:uuid:immunization2"
* entry[immunization][=].resource = Immunization-Pneumococcal
* entry[immunization][+].fullUrl = "urn:uuid:immunization3"
* entry[immunization][=].resource = Immunization-COVID19
// Patient History - subsekce Infectious Contacts - textový popis bez strukturovaných dat, proto žádný resource pro tuto subsekci
* entry[observation][+].fullUrl = "urn:uuid:f2015c80-9091-4b6f-8d66-97f49d6434b2"
* entry[observation][=].resource = Observation-InfectiousContact-Measles
// Patient History - subsekce Travel History - textový popis bez strukturovaných dat, proto žádný resource pro tuto subsekci
// Patient History - subsekce Family History - textový popis s referencemi na další zdroje, proto žádný resource pro tuto subsekci, ale strukturované reference na FamilyMemberHistory resources pro jednotlivé záznamy v rodinné anamnéze
* entry[familyMemberHistory][+].fullUrl = "urn:uuid:familyhistory1"
* entry[familyMemberHistory][=].resource = FamilyMemberHistory-HypertensionMother
* entry[familyMemberHistory][+].fullUrl = "urn:uuid:familyhistory2"
* entry[familyMemberHistory][=].resource = FamilyMemberHistory-DiabetesFather
// Patient History - subsekce Social History - textový popis bez strukturovaných dat, proto žádný resource pro tuto subsekci
// Patient History - subsekce AlcoholUse - textový popis s referencemi na další zdroje, proto žádný resource pro tuto subsekci, ale strukturovaná reference na AlcoholUse resource pro detailní informace o užívání alkoholu
* entry[alcoholUse][+].fullUrl = "urn:uuid:alcoholuse1"
* entry[alcoholUse][=].resource = AlcoholUse-History
// Patient History - subsekce TobaccoUse - textový popis s referencemi na další zdroje, proto žádný resource pro tuto subsekci, ale strukturovaná reference na TobaccoUse resource pro detailní informace o užívání tabáku
// Vzhledem k tomu, že pacientka nekouří a nikdy nekouřila, není pro tuto subsekci vytvořen žádný TobaccoUse resource, ale pro úplnost je zde reference s prázdným TobaccoUse resource
// Patient History - subsekce DrugUse - textový popis s referencemi na další zdroje, proto žádný resource pro tuto subsekci, ale strukturovaná reference na DrugUse resource pro detailní informace o užívání drog
// Vzhledem k tomu, že pacientka neužívá žádné nelegální drogy a nikdy neužívala, není pro tuto subsekci vytvořen žádný DrugUse resource, ale pro úplnost je zde reference s prázdným DrugUse resource
// Patient History - subsekce SubstanceUse - textový popis s referencemi na další zdroje, proto žádný resource pro tuto subsekci, ale strukturovaná reference na SubstanceUse resource pro detailní informace o užívání návykových látek
// Vzhledem k tomu, že pacientka neužívá žádné návykové látky a nikdy neužívala, není pro tuto subsekci vytvořen žádný SubstanceUse resource, ale pro úplnost je zde reference s prázdným SubstanceUse resource
// Sekce Souhrn vyšetření - textový popis s referencemi na další zdroje, proto žádný resource pro tuto sekci, ale strukturované reference na Condition resources pro jednotlivé problémy v problem listu
// Souhrn vyšetření - subsekce Problem list - textový popis s referencemi na další zdroje, proto žádný resource pro tuto subsekci, ale strukturované reference na Condition resources pro jednotlivé problémy v problem listu
* entry[condition][+].fullUrl = "urn:uuid:problem1"
* entry[condition][=].resource = Condition-AtrialFibrillation
* entry[condition][+].fullUrl = "urn:uuid:problem2"
* entry[condition][=].resource = Condition-Hypertension
* entry[condition][+].fullUrl = "urn:uuid:problem3"
* entry[condition][=].resource = Condition-AsthmaBronchiale
// Souhrn vyšetření - subsekce Procedures and Treatments - textový popis s referencemi na další zdroje, proto žádný resource pro tuto subsekci, ale strukturované reference na Procedure resources pro jednotlivé výkony provedené během vyšetření
* entry[procedure][+].fullUrl = "urn:uuid:procedure1"
* entry[procedure][=].resource = Procedure-Spirometry
* entry[procedure][+].fullUrl = "urn:uuid:procedure2"
* entry[procedure][=].resource = Procedure-Echocardiography
// Souhrn vyšetření - subsekce Implanted Medical Devices - textový popis s referencemi na další zdroje, proto žádný resource pro tuto subsekci, ale strukturované reference na Device resources pro jednotlivé implantované zdravotnické prostředky
* entry[deviceUseStatement][+].fullUrl = "urn:uuid:deviceUseStatement1"
* entry[deviceUseStatement][=].resource = DeviceUseStatement-CardiacPacemaker
// Souhrn vyšetření - subsekce Medication During Encounter - textový popis s referencemi na další zdroje, proto žádný resource pro tuto subsekci, ale strukturované reference na MedicationAdministration resources pro jednotlivé léky podávané během vyšetření
* entry[medicationAdministration][+].fullUrl = "urn:uuid:medicationadministration1"
* entry[medicationAdministration][=].resource = MedicationAdministration-Metoprolol
* entry[medicationAdministration][+].fullUrl = "urn:uuid:medicationadministration2"
* entry[medicationAdministration][=].resource = MedicationAdministration-Paracetamol
* entry[medicationAdministration][+].fullUrl = "urn:uuid:medicationadministration3"
* entry[medicationAdministration][=].resource = MedicationAdministration-Salbutamol
// Souhrn vyšetření - subsekce Relevant Diagnostic Tests/Laboratory Data - textový popis s referencemi na další zdroje, proto žádný resource pro tuto subsekci, ale strukturované reference na Observation, DiagnosticReport a ImagingStudy resources pro jednotlivé relevantní výsledky vyšetření
* entry[observation][+].fullUrl = "urn:uuid:observation1"
* entry[observation][=].resource = Observation-NTproBNP
* entry[observation][+].fullUrl = "urn:uuid:observation2"
* entry[observation][=].resource = Observation-ArterialBloodGas
// Souhrn vyšetření - subsekce Klinické shrnutí - textový popis s referencemi na další zdroje, proto žádný resource pro tuto subsekci, ale strukturované reference na Condition, Procedure a CarePlan resources pro jednotlivé položky klinického shrnutí
// Souhrn medikace - textový popis s referencemi na další zdroje, proto žádný resource pro tuto subsekci, ale strukturované reference na MedicationStatement resources pro jednotlivé léky v medikačním shrnutí
* entry[medication][+].fullUrl = "urn:uuid:medication1"
* entry[medication][=].resource = Medication-Warfarin
* entry[medication][+].fullUrl = "urn:uuid:medication2"
* entry[medication][=].resource = Medication-Metoprolol
* entry[medication][+].fullUrl = "urn:uuid:medication3"
* entry[medication][=].resource = Medication-Salbutamol
// Plán péče - textový popis s referencemi na další zdroje, proto žádný resource pro tuto sekci, ale strukturované reference na CarePlan resources pro jednotlivé položky plánu péče
// Attachments - textový popis s referencemi na další zdroje, proto žádný resource pro tuto sekci, ale strukturované reference na DocumentReference resources pro jednotlivé přílohy
* entry[documentReference][+].fullUrl = "urn:uuid:f884a976-86c5-4149-94dd-75f5fd48c029"
* entry[documentReference][=].resource = AttachmentExampleDocumentReferencePdf


/// Composition ///
Instance: OutpatientComposition-Mracena-L3
InstanceOf: CZ_CompositionAmb
Description: "Example Composition for Outpatient Report for patient Mrakomorová Mračena - L3"
Usage: #example
* id = "418da506-19c3-4e00-94d5-31a15f8c7860"
* status = #final
* type.coding[0].system = $loinc
* type.coding[0].code = #67781-5
* type.coding[0].display = "Summarization of encounter note"
* subject = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* date = "2026-01-29T09:50:08+01:00"
* author[+] = Reference(urn:uuid:77fa78d2-154c-4d38-824e-3c38b39c6a42) // Reference to Practitioner-Janský
* title = "Ambulantní zpráva - L3 composition"

// Sekce Dříve vyslovaná přání
* section[sectionAdvanceDirectives].title = "Dříve vyslovaná přání"
* section[sectionAdvanceDirectives].code.coding[0].system = $loinc
* section[sectionAdvanceDirectives].code.coding[0].code = #42348-3 // Advance directives
* section[sectionAdvanceDirectives].code.coding[0].display = "Advance healthcare directives"
* section[sectionAdvanceDirectives].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient si nepřeje být resuscitován.</div>"
* section[sectionAdvanceDirectives].text.status = #additional
* section[sectionAdvanceDirectives].entry[0] = Reference(urn:uuid:64054bb3-093f-4b94-aa58-17940bc4d3ad) // Reference to AdvanceDirective instance

* section[sectionAllergies].title = "Alergie a intolerance"
* section[sectionAllergies].code.coding[0].system = $loinc
* section[sectionAllergies].code.coding[0].code = #48765-2 // Allergies and adverse reactions
* section[sectionAllergies].code.coding[0].display = "Allergies and adverse reactions Document"
* section[sectionAllergies].text.status = #additional
* section[sectionAllergies].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <ul>
    <li>Penicilin – anafylaktická reakce (2018)</li>
    <li>Latex – kontaktní dermatitida</li>
    <li>Ořechy – kopřivka, otok rtů (dětský věk)</li>
  </ul>
</div>
"""
// Strukturované reference na AllergyIntolerance
* section[sectionAllergies].entry[0] = Reference(urn:uuid:ad596f22-799b-4cdb-b8f2-6198a6d0a53c)
* section[sectionAllergies].entry[1] = Reference(urn:uuid:a1de206e-b7dc-4d63-9efc-6b3d4913822f)
* section[sectionAllergies].entry[2] = Reference(urn:uuid:0711ad77-bbd4-4242-9e82-4d612a8cfda8)

// Varování
* section[sectionAlerts].title = "Varování"
* section[sectionAlerts].code.coding[0].system = $loinc
* section[sectionAlerts].code.coding[0].code = #104605-1 // Alert
* section[sectionAlerts].code.coding[0].display = "Alert"
* section[sectionAlerts].text.status = #additional
* section[sectionAlerts].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient na dlouhodobé antikoagulační léčbě.</div>"
* section[sectionAlerts].entry[0] = Reference(urn:uuid:90482ba4-9384-428a-a384-5b09f1293a0e) // Reference to Flag instance

// Admission Evaluation (stav při přijetí/příchodu)
* section[sectionAdmissionEvaluation].title = "Stav při přijetí/příchodu"
* section[sectionAdmissionEvaluation].code.coding[0].system = $loinc
* section[sectionAdmissionEvaluation].code.coding[0].code = #67851-6 // Admission evaluation (assessment at admission)
* section[sectionAdmissionEvaluation].code.coding[0].display = "Admission evaluation note"
* section[sectionAdmissionEvaluation].text.status = #additional
* section[sectionAdmissionEvaluation].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient přichází do ambulance s bolestí na hrudi, dušností a kašlem. Při vyšetření je zjištěna tachykardie, hypotenze a cyanóza.</div>"

// Patient History (anamnéza)
* section[sectionPatientHistory].title = "Anamnéza"
* section[sectionPatientHistory].code.coding[0].system = $loinc
* section[sectionPatientHistory].code.coding[0].code = #35090-0
* section[sectionPatientHistory].code.coding[0].display = "Patient history"

// Patient History - subsekce Past Illness History
* section[sectionPatientHistory].section[PastIllnessHx].title = "Historie zdravotních problémů"
* section[sectionPatientHistory].section[PastIllnessHx].code.coding[0].system = $loinc
* section[sectionPatientHistory].section[PastIllnessHx].code.coding[0].code = #11348-0
* section[sectionPatientHistory].section[PastIllnessHx].code.coding[0].display = "History of Past illness note"
* section[sectionPatientHistory].section[PastIllnessHx].text.status = #additional
* section[sectionPatientHistory].section[PastIllnessHx].text.div = """<div xmlns="http://www.w3.org/1999/xhtml">
  <ul>
    <li>Hypertenze</li>
    <li>Fibrilace síní</li>
    <li>Astma bronchiale</li>
  </ul>
</div>
"""
* section[sectionPatientHistory].section[PastIllnessHx].entry[0] = Reference(urn:uuid:pastillnes0) 
* section[sectionPatientHistory].section[PastIllnessHx].entry[1] = Reference(urn:uuid:pastillnes1) 
* section[sectionPatientHistory].section[PastIllnessHx].entry[2] = Reference(urn:uuid:pastillnes2) 

// Patient History - subsekce History Medical Devices
* section[sectionPatientHistory].section[HistoryMedicalDevices].title = "Historie zdravotnických prostředků"
* section[sectionPatientHistory].section[HistoryMedicalDevices].code.coding[0].system = $loinc
* section[sectionPatientHistory].section[HistoryMedicalDevices].code.coding[0].code = #46264-8
* section[sectionPatientHistory].section[HistoryMedicalDevices].code.coding[0].display = "History of medical device use"
* section[sectionPatientHistory].section[HistoryMedicalDevices].text.status = #additional
* section[sectionPatientHistory].section[HistoryMedicalDevices].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient má v anamnéze implantaci kardiostimulátoru pro fibrilaci síní.</div>"
// entry Cardiac pacemaker
* section[sectionPatientHistory].section[HistoryMedicalDevices].entry[0] = Reference(urn:uuid:medicaldevice1)

// Patient History - subsekce Procedures History
* section[sectionPatientHistory].section[ProceduresHx].title = "Historie výkonů"
* section[sectionPatientHistory].section[ProceduresHx].code.coding[0].system = $loinc
* section[sectionPatientHistory].section[ProceduresHx].code.coding[0].code = #47519-4
* section[sectionPatientHistory].section[ProceduresHx].code.coding[0].display = "History of Procedures Document"
* section[sectionPatientHistory].section[ProceduresHx].text.status = #additional
* section[sectionPatientHistory].section[ProceduresHx].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient prodělal v minulosti několik kardiologických výkonů, včetně implantace kardiostimulátoru a katetrizačního vyšetření koronárních tepen.</div>"
* section[sectionPatientHistory].section[ProceduresHx].entry[0] = Reference(urn:uuid:procedureHx1) // Reference to Procedure resource for cardiac pacemaker implantation

// Patient History - subsekce Immunization History
* section[sectionPatientHistory].section[ImmunizationHx].title = "Historie očkování"
* section[sectionPatientHistory].section[ImmunizationHx].code.coding[0].system = $loinc
* section[sectionPatientHistory].section[ImmunizationHx].code.coding[0].code = #11369-6
* section[sectionPatientHistory].section[ImmunizationHx].code.coding[0].display = "History of Immunization note"
* section[sectionPatientHistory].section[ImmunizationHx].text.status = #additional
* section[sectionPatientHistory].section[ImmunizationHx].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient je očkován proti chřipce, pneumokokům a COVID-19.</div>"
* section[sectionPatientHistory].section[ImmunizationHx].entry[0] = Reference(urn:uuid:immunization1)
* section[sectionPatientHistory].section[ImmunizationHx].entry[1] = Reference(urn:uuid:immunization2)
* section[sectionPatientHistory].section[ImmunizationHx].entry[2] = Reference(urn:uuid:immunization3)

// Patient History - subsekce Infectious Contacts
* section[sectionPatientHistory].section[InfectiousContacts].title = "Kontakty s infekčními nemocnými"
* section[sectionPatientHistory].section[InfectiousContacts].code.coding[0].code = TemporaryHDRSystem#infection-contact "Infectious contacts"
* section[sectionPatientHistory].section[InfectiousContacts].code.coding[0].display = "Infectious contacts"
* section[sectionPatientHistory].section[InfectiousContacts].text.status = #additional
* section[sectionPatientHistory].section[InfectiousContacts].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient byl v posledních dnech v kontaktu s osobou trpící spalničkami.</div>"
* section[sectionPatientHistory].section[InfectiousContacts].entry[0] = Reference(urn:uuid:f2015c80-9091-4b6f-8d66-97f49d6434b2) // Reference to Observation resource for infectious contact with measles

// Patient History - subsekce Travel History
* section[sectionPatientHistory].section[TravelHx].title = "Cestovní anamnéza"
* section[sectionPatientHistory].section[TravelHx].code.coding[0].system = $loinc
* section[sectionPatientHistory].section[TravelHx].code.coding[0].code = #10182-4
* section[sectionPatientHistory].section[TravelHx].code.coding[0].display = "History of Travel note"
* section[sectionPatientHistory].section[TravelHx].text.status = #additional
* section[sectionPatientHistory].section[TravelHx].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient v posledních 6 měsících necestoval do zahraničí.</div>"

// Patient History - subsekce Family History
* section[sectionPatientHistory].section[FamilyHistory].title = "Rodinná anamnéza"
* section[sectionPatientHistory].section[FamilyHistory].code.coding[0].system = $loinc
* section[sectionPatientHistory].section[FamilyHistory].code.coding[0].code = #10157-6
* section[sectionPatientHistory].section[FamilyHistory].code.coding[0].display = "History of family member diseases note"
* section[sectionPatientHistory].section[FamilyHistory].text.status = #additional
* section[sectionPatientHistory].section[FamilyHistory].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">V rodinné anamnéze je uvedena hypertenze u matky a diabetes mellitus 2. typu u otce.</div>"
* section[sectionPatientHistory].section[FamilyHistory].entry[0] = Reference(urn:uuid:familyhistory1) // Reference to FamilyMemberHistory resource for family history of hypertension 
* section[sectionPatientHistory].section[FamilyHistory].entry[1] = Reference(urn:uuid:familyhistory2) // Reference to FamilyMemberHistory resource for family history of diabetes mellitus 2. typu

// Patient History - subsekce Social History
* section[sectionPatientHistory].section[SocialHistory].title = "Sociální anamnéza"
* section[sectionPatientHistory].section[SocialHistory].code.coding[0].system = $loinc
* section[sectionPatientHistory].section[SocialHistory].code.coding[0].code = #29762-2
* section[sectionPatientHistory].section[SocialHistory].code.coding[0].display = "Social history note"
* section[sectionPatientHistory].section[SocialHistory].text.status = #additional
* section[sectionPatientHistory].section[SocialHistory].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient je vdaná, žije s manželem a dvěma dětmi. Pracuje jako učitelka.</div>"

// Patient History - subsekce AlcoholUse
* section[sectionPatientHistory].section[AlcoholUse].title = "Anamnéza - Alkohol"
* section[sectionPatientHistory].section[AlcoholUse].code.coding[0].system = $loinc
* section[sectionPatientHistory].section[AlcoholUse].code.coding[0].code = #11331-6 
* section[sectionPatientHistory].section[AlcoholUse].code.coding[0].display = "History of Alcohol use"
* section[sectionPatientHistory].section[AlcoholUse].text.status = #additional
* section[sectionPatientHistory].section[AlcoholUse].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacientka příležitostně konzumuje alkoholické nápoje, přibližně 1-2 skleničky vína týdně.</div>"
* section[sectionPatientHistory].section[AlcoholUse].entry[0] = Reference(urn:uuid:alcoholuse1) // Reference to AlcoholUse resource for alcohol use details

// Patient History - subsekce TobaccoUse
* section[sectionPatientHistory].section[TobaccoUse].title = "Anamnéza - Tabák"
* section[sectionPatientHistory].section[TobaccoUse].code.coding[0].system = $loinc
* section[sectionPatientHistory].section[TobaccoUse].code.coding[0].code = #11367-0
* section[sectionPatientHistory].section[TobaccoUse].code.coding[0].display = "History of Tobacco use"
* section[sectionPatientHistory].section[TobaccoUse].text.status = #additional
* section[sectionPatientHistory].section[TobaccoUse].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacientka nekouří a nikdy nekouřila.</div>"

// Patient History - subsekce DrugUse
* section[sectionPatientHistory].section[DrugUse].title = "Anamnéza - Drogy"
* section[sectionPatientHistory].section[DrugUse].code.coding[0].system = $loinc
* section[sectionPatientHistory].section[DrugUse].code.coding[0].code = #11343-1
* section[sectionPatientHistory].section[DrugUse].code.coding[0].display = "History of Other nonmedical drug use"
* section[sectionPatientHistory].section[DrugUse].text.status = #additional
* section[sectionPatientHistory].section[DrugUse].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacientka neužívá žádné nelegální drogy a nikdy neužívala.</div>"

// Patient History - subsekce SubstanceUse
* section[sectionPatientHistory].section[SubstanceUse].title = "Anamnéza - Užívání návykových látek"
* section[sectionPatientHistory].section[SubstanceUse].code.coding[0].system = $loinc
* section[sectionPatientHistory].section[SubstanceUse].code.coding[0].code = #108229-6
* section[sectionPatientHistory].section[SubstanceUse].code.coding[0].display = "Use of substance note"
* section[sectionPatientHistory].section[SubstanceUse].text.status = #additional
* section[sectionPatientHistory].section[SubstanceUse].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacientka neužívá žádné návykové látky a nikdy neužívala.</div>"

//sectionEncounterSummary
* section[sectionEncounterSummary].title = "Souhrn vyšetření"
* section[sectionEncounterSummary].code.coding[0].system = $loinc
* section[sectionEncounterSummary].code.coding[0].code = #67781-5
* section[sectionEncounterSummary].code.coding[0].display = "Summarization of encounter note"
* section[sectionEncounterSummary].text.status = #additional
* section[sectionEncounterSummary].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Při vyšetření je pacientka orientovaná, spolupracující, bez známek akutního ohrožení. Fyziologické nálezy jsou zjištěny na srdci a plicích, bez edémů dolních končetin. EKG ukazuje fibrilaci síní s rychlou komorovou odpovědí.</div>"
// subsekce Problem list
* section[sectionEncounterSummary].section[ProblemList].title = "Aktuální problémy"
* section[sectionEncounterSummary].section[ProblemList].code.coding[0].system = $loinc
* section[sectionEncounterSummary].section[ProblemList].code.coding[0].code = #11450-4
* section[sectionEncounterSummary].section[ProblemList].code.coding[0].display = "Problem list - Reported"
* section[sectionEncounterSummary].section[ProblemList].text.status = #additional
* section[sectionEncounterSummary].section[ProblemList].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">1. Fibrilace síní<br/>2. Hypertenze<br/>3. Astma bronchiale</div>"
* section[sectionEncounterSummary].section[ProblemList].entry[0] = Reference(urn:uuid:problem1) // Reference to Condition resource for atrial fibrillation
* section[sectionEncounterSummary].section[ProblemList].entry[1] = Reference(urn:uuid:problem2) // Reference to Condition resource for hypertension
* section[sectionEncounterSummary].section[ProblemList].entry[2] = Reference(urn:uuid:problem3) // Reference to Condition resource for asthma bronchiale
// subsekce Procedures and Treatments
* section[sectionEncounterSummary].section[ProceduresAndTreatments].title = "Výkony a léčba"
* section[sectionEncounterSummary].section[ProceduresAndTreatments].code.coding[0].system = $loinc
* section[sectionEncounterSummary].section[ProceduresAndTreatments].code.coding[0].code = #29554-3
* section[sectionEncounterSummary].section[ProceduresAndTreatments].code.coding[0].display = "Procedure Narrative"
* section[sectionEncounterSummary].section[ProceduresAndTreatments].text.status = #additional
* section[sectionEncounterSummary].section[ProceduresAndTreatments].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Během vyšetření byla provedena spirometrie, která potvrdila přítomnost obstrukční poruchy dýchacích cest. Dále byla provedena echokardiografie, která ukázala dilataci levé síně a normální funkci levé komory.</div>"
* section[sectionEncounterSummary].section[ProceduresAndTreatments].entry[0] = Reference(urn:uuid:procedure1) // Reference to Procedure resource for spirometry
* section[sectionEncounterSummary].section[ProceduresAndTreatments].entry[1] = Reference(urn:uuid:procedure2) // Reference to Procedure resource for echocardiography
// subsekce Medical Devices
* section[sectionEncounterSummary].section[MedicalDevices].title = "Zdravotnické prostředky"
* section[sectionEncounterSummary].section[MedicalDevices].code.coding[0].system = $loinc
* section[sectionEncounterSummary].section[MedicalDevices].code.coding[0].code = #57080-4
* section[sectionEncounterSummary].section[MedicalDevices].code.coding[0].display = "Implanted medical device Narrative"
* section[sectionEncounterSummary].section[MedicalDevices].text.status = #additional
* section[sectionEncounterSummary].section[MedicalDevices].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacientka má implantovaný kardiostimulátor pro fibrilaci síní, který byl implantován v roce 2015.</div>"
* section[sectionEncounterSummary].section[MedicalDevices].entry[0] = Reference(urn:uuid:medicaldevice1) // Reference to Device resource for cardiac pacemaker
* section[sectionEncounterSummary].section[MedicalDevices].entry[1] = Reference(urn:uuid:deviceUseStatement1) // Reference to DeviceUseStatement resource for current use of cardiac pacemaker
// subsekce MedicationDuring
* section[sectionEncounterSummary].section[MedicationDuring].title = "Medikace během vyšetření"
* section[sectionEncounterSummary].section[MedicationDuring].code.coding[0].system = $loinc
* section[sectionEncounterSummary].section[MedicationDuring].code.coding[0].code = #29549-3
* section[sectionEncounterSummary].section[MedicationDuring].code.coding[0].display = "Medication administered Narrative"
* section[sectionEncounterSummary].section[MedicationDuring].text.status = #additional
* section[sectionEncounterSummary].section[MedicationDuring].text.div = """
<div xmlns="http://www.w3.org/1999/xhtml">
  <p>Během návštěvy byla pacientce podána následující medikace:</p>
  <ul>
    <li>Metoprolol 5 mg i.v. (pomalu), 1 dávka – k úpravě rychlé komorové odpovědi při fibrilaci síní.</li>
    <li>Paracetamol 1 g p.o., 1 dávka – analgeticky pro bolest na hrudi.</li>
    <li>Salbutamol inhal. (2 vdechy) – úlevově při dušnosti/bronchokonstrikci.</li>
  </ul>
  <p>Domácí chronická medikace je uvedena v sekci „Souhrn medikace“.</p>
</div>
"""
* section[sectionEncounterSummary].section[MedicationDuring].entry[0] = Reference(urn:uuid:medicationadministration1) // Reference to MedicationAdministration resource for Metoprolol administration
* section[sectionEncounterSummary].section[MedicationDuring].entry[1] = Reference(urn:uuid:medicationadministration2) // Reference to MedicationAdministration resource for Paracetamol administration
* section[sectionEncounterSummary].section[MedicationDuring].entry[2] = Reference(urn:uuid:medicationadministration3) // Reference to MedicationAdministration resource for Salbutamol administration

// subsekce Results
* section[sectionEncounterSummary].section[Results].title = "Výsledky vyšetření"
* section[sectionEncounterSummary].section[Results].code.coding[0].system = $loinc
* section[sectionEncounterSummary].section[Results].code.coding[0].code = #30954-2
* section[sectionEncounterSummary].section[Results].code.coding[0].display = "Relevant diagnostic tests/laboratory data note"
* section[sectionEncounterSummary].section[Results].text.status = #additional
* section[sectionEncounterSummary].section[Results].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Laboratorní výsledky ukazují zvýšené hodnoty NT-proBNP, což je konzistentní s dekompenzací srdečního selhání. Dále jsou přítomny známky hypoxémie v arteriální krevní plynů.</div>"
* section[sectionEncounterSummary].section[Results].entry[0] = Reference(urn:uuid:observation1) // Reference to Observation resource for NT-proBNP result
* section[sectionEncounterSummary].section[Results].entry[1] = Reference(urn:uuid:observation2) // Reference to Observation resource for arterial blood gas results

// subsekce ClinicalSummary
* section[sectionEncounterSummary].section[ClinicalSummary].title = "Klinický souhrn"
* section[sectionEncounterSummary].section[ClinicalSummary].code.coding[0].system = $loinc
* section[sectionEncounterSummary].section[ClinicalSummary].code.coding[0].code = #51848-0
* section[sectionEncounterSummary].section[ClinicalSummary].code.coding[0].display = "Evaluation note"
* section[sectionEncounterSummary].section[ClinicalSummary].text.status = #additional
* section[sectionEncounterSummary].section[ClinicalSummary].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacientka přichází s dekompenzací srdečního selhání, pravděpodobně vyvolanou fibrilací síní s rychlou komorovou odpovědí. Dále je přítomna obstrukční porucha dýchacích cest, pravděpodobně zhoršená astmatem bronchiale. Plán péče zahrnuje úpravu medikace, sledování a další diagnostické testy.</div>"

//sectionMedicationSummary
* section[sectionMedicationSummary].title = "Souhrn medikace"
* section[sectionMedicationSummary].code.coding[0].system = $loinc
* section[sectionMedicationSummary].code.coding[0].code = #10160-0
* section[sectionMedicationSummary].code.coding[0].display = "History of Medication use Narrative"
* section[sectionMedicationSummary].text.status = #additional
* section[sectionMedicationSummary].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient užívá následující medikaci: Warfarin 5 mg denně, Metoprolol 50 mg denně, Salbutamol inhalátor podle potřeby.</div>" 
* section[sectionMedicationSummary].entry[0] = Reference(urn:uuid:medication1) 
* section[sectionMedicationSummary].entry[1] = Reference(urn:uuid:medication2)
* section[sectionMedicationSummary].entry[2] = Reference(urn:uuid:medication3)

//sectionPlanOfCare
* section[sectionPlanOfCare].title = "Plán péče"
* section[sectionPlanOfCare].code.coding[0].system = $loinc
* section[sectionPlanOfCare].code.coding[0].code = #18776-5
* section[sectionPlanOfCare].code.coding[0].display = "Plan of care note"
* section[sectionPlanOfCare].text.status = #additional
* section[sectionPlanOfCare].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">1. Úprava medikace: zvýšení dávky Metoprololu, přidání diuretika pro kontrolu tekutin, úprava dávkování Warfarinu podle INR.<br/>2. Sledování: pravidelné kontroly INR, monitorování srdečního rytmu a funkce plic.<br/>3. Další diagnostické testy: plánované echokardiografie a spirometrie za 3 měsíce.</div>"

//sectionAttachments
* section[sectionAttachments].title = "Přílohy"
* section[sectionAttachments].code.coding[0].system = $loinc
* section[sectionAttachments].code.coding[0].code = #77599-9
* section[sectionAttachments].code.coding[0].display = "Additional documentation"
* section[sectionAttachments].text.status = #additional
* section[sectionAttachments].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Obsahuje přílohu z vyšetření xy.</div>"
* section[sectionAttachments].entry[0] = Reference(urn:uuid:f884a976-86c5-4149-94dd-75f5fd48c029)

///// Other resources /////
/// Patient ///
Instance: Patient-Mracena-L3
InstanceOf: CZ_PatientCore
Usage: #inline
Description: "Patient, contact information and practitioner - L3"
* id = "f21b91f9-5e7a-47b9-a884-cbc720257590"
* identifier[RID][+].system = "https://ncez.mzcr.cz/fhir/sid/rid"
* identifier[RID][=].value = "2066425387"
* name.use = #usual
* name.family = "Mrakomorová"
* name.given = "Mračena"
* birthDate = "1971-11-26"
* gender = #female

/// Practitioner ///
Instance: Practitioner-Jansky
InstanceOf: CZ_PractitionerCore
Usage: #inline
Description: "Practitioner - L3"
* id = "77fa78d2-154c-4d38-824e-3c38b39c6a42"
* name.use = #usual
* name.prefix = "Prof. MUDr."
* name.family = "Jan"
* name.given = "Janský"

/// Advance Directive ///
Instance: AdvanceDirective-Mracena-L3
InstanceOf: CZ_ConsentHdr
Usage: #inline
Description: "Advance Directive for patient Mrakomorová Mračena - L3"
* id = "64054bb3-093f-4b94-aa58-17940bc4d3ad"
* status = #active

* scope.coding[0].system = $consentscope
* scope.coding[0].code = #adr
* scope.coding[0].display = "Advanced Care Directive"

* category.coding[0].system = $consent-category
* category.coding[0].code = #dnr
* category.coding[0].display = "Do Not Resuscitate"

* patient = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* dateTime = "2025-12-01T10:00:00+01:00"

/// AllergyIntolerance - Penicilin ///
Instance: AllergyIntolerance-Penicilin
InstanceOf: CZ_AllergyIntoleranceAmb
Usage: #inline
Description: "AllergyIntolerance resource for allergy to Penicilin for patient Mrakomorová Mračena - L3"
* id = "ad596f22-799b-4cdb-b8f2-6198a6d0a53c"
* identifier[+].system = "http://example.org/hospital/allergy-intolerances"
* identifier[=].value = "allergy-penicilin-001"
// * text.status = #additional
// * text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient má alergii na penicilin.</div>"
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* type = #allergy
* code.coding[0].system = $sct
* code.coding[0].code = #91936005 "Allergy to penicillin"
* patient = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3

/// AllergyIntolerance - Latex ///
Instance: AllergyIntolerance-Latex
InstanceOf: CZ_AllergyIntoleranceAmb
Usage: #inline
Description: "AllergyIntolerance resource for intolerance to Latex for patient Mrakomorová Mračena - L3"
* id = "a1de206e-b7dc-4d63-9efc-6b3d4913822f"
* identifier[+].system = "http://example.org/hospital/allergy-intolerances"
* identifier[=].value = "intolerance-latex-001"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient má intoleranci na latex.</div>"
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* type = #intolerance
* code = $sct#111088007 "latex"
* patient = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3

/// AllergyIntolerance - Nuts ///
Instance: AllergyIntolerance-Nuts
InstanceOf: CZ_AllergyIntoleranceAmb
Usage: #inline
Description: "AllergyIntolerance resource for allergy to Nuts for patient Mrakomorová Mračena - L3"
* id = "0711ad77-bbd4-4242-9e82-4d612a8cfda8"
* identifier[+].system = "http://example.org/hospital/allergy-intolerances"
* identifier[=].value = "allergy-nuts-001"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient má alergii na ořechy.</div>"
* clinicalStatus = $allergyintolerance-clinical#active "Active"
* verificationStatus = $allergyintolerance-verification#confirmed "Confirmed"
* type = #allergy
* code.coding[0].system = $sct
* code.coding[0].code = #91934008 "Allergy to nut"
* patient = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3

/// Alert - Flag ///
Instance: Alert-Anticoagulation
InstanceOf: CZ_FlagAmb
Usage: #inline
Description: "Flag resource for alert about long-term anticoagulation treatment for patient Mrakomorová Mračena - L3"
* id = "90482ba4-9384-428a-a384-5b09f1293a0e"
* identifier[+].system = "http://example.org/hospital/flags"
* identifier[=].value = "flag-anticoagulation-001"
* status = #active
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient na dlouhodobé antikoagulační léčbě.</div>"
* code.coding[0].system = $sct 
* code.coding[0].code = #49436004 "Atrial fibrillation (disorder)"
* subject = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* period.start = "2020-01-01"
* extension[flagPriorityExt].valueCodeableConcept.coding[0].system = $flagPriority
* extension[flagPriorityExt].valueCodeableConcept.coding[0].code = #PH 
* extension[flagPriorityExt].valueCodeableConcept.coding[0].display = "High priority"      

// Entry pro past illness history v sekci Anamnéza
Instance: Condition-Hypertension-past
InstanceOf: CZ_ConditionHdr
Usage: #inline
Description: "Condition resource for past illness history - Hypertenze for patient Mrakomorová Mračena - L3"
* id = "pastillnes0"
* subject = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* code.coding[0].system = $sct
* code.coding[0].code = #38341003 "Hypertension (disorder)"

Instance: Condition-AtrialFibrillation-past
InstanceOf: CZ_ConditionHdr
Usage: #inline
Description: "Condition resource for past illness history - Fibrilace síní for patient Mrakomorová Mračena - L3"
* id = "pastillnes1"
* subject = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* code.coding[0].system = $sct
* code.coding[0].code = #49436004 "Atrial fibrillation (disorder)"

Instance: Condition-Astma
InstanceOf: CZ_ConditionHdr
Usage: #inline
Description: "Condition resource for past illness history - Astma bronchiale for patient Mrakomorová Mračena - L3"
* id = "pastillnes2"
* subject = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* code.coding[0].system = $sct
* code.coding[0].code = #195967001 "Asthma (disorder)"

// Entry pro medication summary
Instance: Medication-Warfarin
InstanceOf: CZ_Medication
Usage: #inline
Description: "Medication resource for Warfarin for patient Mrakomorová Mračena - L3"
* id = "medication1"
* identifier[+].system = "http://example.org/medications"
* identifier[=].value = "medication-001"
* code.coding[0].system = "https://sukl.cz/terminology/CodeSystem/dlp-lecive-pripravky"
* code.coding[0].code = #0094113
* code.coding[0].display = "WARFARIN ORION 3MG TBL NOB 100"

Instance: Medication-Metoprolol
InstanceOf: CZ_Medication
Usage: #inline
Description: "Medication resource for Metoprolol for patient Mrakomorová Mračena - L3"
* id = "medication2"
* identifier[+].system = "http://example.org/medications"
* identifier[=].value = "medication-002"
* code.coding[0].system = "https://sukl.cz/terminology/CodeSystem/dlp-lecive-pripravky"
* code.coding[0].code = #0246762
* code.coding[0].display = "METOPROLOL MEDREG 100MG TBL FLM 50"

Instance: Medication-Salbutamol
InstanceOf: CZ_Medication
Usage: #inline
Description: "Medication resource for Salbutamol for patient Mrakomorová Mračena - L3"
* id = "medication3"
* identifier[+].system = "http://example.org/medications"
* identifier[=].value = "medication-003"
* code.coding[0].system = "https://sukl.cz/terminology/CodeSystem/dlp-lecive-pripravky"
* code.coding[0].code = #0269356
* code.coding[0].display = "SALBUTAMOL POLPHARMA 2MG TBL NOB 30"

// Entry pro medical device v subsekci Historie zdravotnických prostředků
Instance: Device-CardiacPacemaker
InstanceOf: CZ_MedicalDevice
Usage: #inline
Description: "MedicalDevice resource for cardiac pacemaker for patient Mrakomorová Mračena - L3"
* id = "medicaldevice1"
* identifier[+].system = "http://example.org/medical-devices"
* identifier[=].value = "device-001"
* manufacturer = "Medtronic"
* modelNumber = "W1DR01"
* type = $sct#14106009 "Cardiac pacemaker"
* patient = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3

// Entry pro procedure v subsekci Historie výkonů
Instance: Procedure-CardiacPacemakerImplantation
InstanceOf: CZ_ProcedureHdr
Usage: #inline
Description: "Procedure resource for cardiac pacemaker implantation for patient Mrakomorová Mračena - L3"
* id = "procedureHx1"
* subject = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* code.coding[0].system = $sct
* code.coding[0].code = #307280005 "Implantation of cardiac pacemaker (procedure)"
* performedDateTime = "2015-06-15T10:00:00+01:00"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient prodělal v roce 2015 implantaci kardiostimulátoru pro léčbu fibrilace síní.</div>"  
* status = #completed

// Entry pro immunization v subsekci Historie očkování
Instance: Immunization-Influenza
InstanceOf: CZ_ImmunizationHdr
Usage: #inline
Description: "Immunization resource for influenza vaccination for patient Mrakomorová Mračena - L3"
* id = "immunization1"
* status = #completed
* vaccineCode.coding[0].system = $sct
* vaccineCode.coding[0].code = #1181000221105 "Vaccine product containing only influenza virus antigen (medicinal product)"
* patient = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* occurrenceDateTime = "2025-10-01T10:00:00+01:00"

Instance: Immunization-Pneumococcal
InstanceOf: CZ_ImmunizationHdr
Usage: #inline
Description: "Immunization resource for pneumococcal vaccination for patient Mrakomorová Mračena - L3"
* id = "immunization2"
* status = #completed
* vaccineCode.coding[0].system = $sct
* vaccineCode.coding[0].code = #981000221107 "Vaccine product containing only Streptococcus pneumoniae antigen (medicinal product)"
* patient = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* occurrenceDateTime = "2024-05-01T10:00:00+01:00"

Instance: Immunization-COVID19
InstanceOf: CZ_ImmunizationHdr
Usage: #inline
Description: "Immunization resource for COVID-19 vaccination for patient Mrakomorová Mračena - L3"
* id = "immunization3"
* status = #completed
* vaccineCode.coding[0].system = $sct
* vaccineCode.coding[0].code = #1156257007 "Administration of vaccine product against severe acute respiratory syndrome coronavirus 2 (procedure)"
* patient = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* occurrenceDateTime = "2021-03-01T10:00:00+01:00"

// Entry pro family history v subsekci Rodinná anamnéza
Instance: FamilyMemberHistory-HypertensionMother
InstanceOf: CZ_FamilyMemberHistoryHdr
Usage: #inline
Description: "FamilyMemberHistory resource for family history of hypertension for patient Mrakomorová Mračena - L3"
* id = "familyhistory1"
* status = #completed
* patient = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* relationship.coding[0].system = $v3-RoleCode
* relationship.coding[0].code = #NMTH "natural mother"
* condition[0].code.coding[0].system = $sct
* condition[0].code.coding[0].code = #38341003 "Hypertensive disorder, systemic arterial (disorder)"

Instance: FamilyMemberHistory-DiabetesFather
InstanceOf: CZ_FamilyMemberHistoryHdr
Usage: #inline
Description: "FamilyMemberHistory resource for family history of diabetes mellitus 2. typu for patient Mrakomorová Mračena - L3"
* id = "familyhistory2"
* status = #completed
* patient = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* relationship.coding[0].system = $v3-RoleCode
* relationship.coding[0].code = #NFTH "natural father"
* condition[0].code.coding[0].system = $sct
* condition[0].code.coding[0].code = #44054006 "Diabetes mellitus type 2 (disorder)"

Instance: AlcoholUse-History
InstanceOf: Observation
Usage: #inline
Description: "Observation resource for alcohol use history for patient Mrakomorová Mračena - L3"
* id = "alcoholuse1"
* status = #final
* category.coding[0].system = "http://terminology.hl7.org/CodeSystem/observation-category"
* category.coding[0].code = #social-history
* category.coding[0].display = "Social History"

* code.coding[0].system = $loinc
* code.coding[0].code = #108238-7
* code.coding[0].display = "History of Alcohol use note"

* subject = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* effectiveDateTime = "2025-11-01T10:00:00+01:00"
* valueString = "Pacientka příležitostně konzumuje alkoholické nápoje, přibližně 1-2 skleničky vína týdně."
* note[0].text = "Pacientka příležitostně..., cca 1–2 skleničky vína týdně."
* component[0].code.text = "Počet nápojů za týden"
* component[0].valueRange.low.value = 1
* component[0].valueRange.high.value = 2
* component[0].valueRange.low.system = $ucum
* component[0].valueRange.low.code = #"{drinks}/wk"
* component[0].valueRange.low.unit = "drink/wk"
* component[0].valueRange.high.system = $ucum
* component[0].valueRange.high.code = #"{drinks}/wk"
* component[0].valueRange.high.unit = "drink/wk"
* component[1].code.text = "Typ"
* component[1].valueCodeableConcept.text = "Víno"

// Entry Encounter Summary - Problem List - Atrial fibrillation
Instance: Condition-AtrialFibrillation
InstanceOf: CZ_ConditionHdr
Usage: #inline
Description: "Condition resource for problem list - Atrial fibrillation for patient Mrakomorová Mračena - L3"
* id = "problem1"
* subject = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* code.coding[0].system = $sct
* code.coding[0].code = #49436004 "Atrial fibrillation (disorder)"

// Entry Encounter Summary - Problem List - Hypertension
Instance: Condition-Hypertension
InstanceOf: CZ_ConditionHdr
Usage: #inline
Description: "Condition resource for problem list - Hypertension for patient Mrakomorová Mračena - L3"
* id = "problem2"
* subject = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* code.coding[0].system = $sct
* code.coding[0].code = #38341003 "Hypertension (disorder)"

// Entry Encounter Summary - Problem List - Asthma bronchiale
Instance: Condition-AsthmaBronchiale
InstanceOf: CZ_ConditionHdr
Usage: #inline
Description: "Condition resource for problem list - Asthma bronchiale for patient Mrakomorová Mračena - L3"
* id = "problem3"
* subject = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* code.coding[0].system = $sct
* code.coding[0].code = #195967001 "Asthma (disorder)"

// Entry Encounter Summary - Procedures and Treatments - Spirometry
Instance: Procedure-Spirometry
InstanceOf: CZ_ProcedureHdr
Usage: #inline
Description: "Procedure resource for spirometry for patient Mrakomorová Mračena - L3"
* id = "procedure1"
* subject = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* code.coding[0].system = $sct
* code.coding[0].code = #127783003 "Spirometry (procedure)"
* performedDateTime = "2025-11-01T10:00:00+01:00"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Během vyšetření byla provedena spirometrie, která potvrdila přítomnost obstrukční poruchy dýchacích cest.</div>"
* status = #completed

// Entry Encounter Summary - Procedures and Treatments - Echocardiography
Instance: Procedure-Echocardiography
InstanceOf: CZ_ProcedureHdr
Usage: #inline
Description: "Procedure resource for echocardiography for patient Mrakomorová Mračena - L3"
* id = "procedure2"
* subject = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* code.coding[0].system = $sct
* code.coding[0].code = #40701008 "Echocardiography (procedure)"
* performedDateTime = "2025-11-01T10:00:00+01:00"
* text.status = #additional
* text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Dále byla provedena echokardiografie, která ukázala dilataci levé síně a normální funkci levé komory.</div>"
* status = #completed

// Entry Encounter Summary - Medical Devices - Cardiac Pacemaker
Instance: DeviceUseStatement-CardiacPacemaker
InstanceOf: CZ_DeviceUseStatementHdr
Usage: #inline
Description: "DeviceUseStatement resource for current use of cardiac pacemaker for patient Mrakomorová Mračena - L3"
* id = "deviceUseStatement1"
* status = #active
* subject = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* device = Reference(urn:uuid:medicaldevice1) // Reference to Device-CardiacPacemaker
* timingDateTime = "2025-11-01T10:00:00+01:00"
* bodySite = $sct#51185008 "Thorax"

// Entry Encounter Summary - Medication During - Metoprolol administration
Instance: MedicationAdministration-Metoprolol
InstanceOf: MedicationAdministration
Usage: #inline
Description: "MedicationAdministration resource for Metoprolol administration during encounter for patient Mrakomorová Mračena - L3"
* id = "medicationadministration1"
* status = #completed
* medicationReference = Reference(urn:uuid:medication2) // Reference to Medication-Metoprolol
* subject = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* effectiveDateTime = "2025-11-01T10:30:00+01:00"
* dosage.text = "Metoprolol 5 mg i.v. (pomalu), 1 dávka"
* dosage.route.coding[0].system = $sct
* dosage.route.coding[0].code = #47625008 "Intravenous route" // Intravenous route (qualifier value)
* dosage.method.coding[0].system = $sct
* dosage.method.coding[0].code = #740685003 "Inject (administration method)	" // Single dose (qualifier value)
* dosage.dose.value = 5
* dosage.dose.unit = "mg"
* dosage.dose.system = $ucum
// Entry Encounter Summary - Medication During - Paracetamol administration
Instance: MedicationAdministration-Paracetamol
InstanceOf: MedicationAdministration
Usage: #inline
Description: "MedicationAdministration resource for Paracetamol administration during encounter for patient Mrakomorová Mračena - L3"
* id = "medicationadministration2"
* status = #completed
* medicationReference = Reference(urn:uuid:medication4) // Reference to Medication-Paracetamol
* subject = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* effectiveDateTime = "2025-11-01T11:00:00+01:00"
* dosage.text = "Paracetamol 1 g p.o., 1 dávka"
* dosage.route.coding[0].system = $sct
* dosage.route.coding[0].code = #26643006 "Oral route" // Oral route (qualifier value)
* dosage.method.coding[0].system = $sct
* dosage.method.coding[0].code = #736665006 "Dose form administration method (administration method)"// Single dose (qualifier value)
* dosage.dose.value = 1
* dosage.dose.unit = "g"
* dosage.dose.system = $ucum
// Entry Encounter Summary - Medication During - Salbutamol administration
Instance: MedicationAdministration-Salbutamol
InstanceOf: MedicationAdministration
Usage: #inline
Description: "MedicationAdministration resource for Salbutamol administration during encounter for patient Mrakomorová Mračena - L3"
* id = "medicationadministration3"
* status = #completed
* medicationReference = Reference(urn:uuid:medication3) // Reference to Medication-Salbutamol
* subject = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* effectiveDateTime = "2025-11-01T11:30:00+01:00"
* dosage.text = "Salbutamol inhal. (2 vdechy)"
* dosage.route.coding[0].system = $sct
* dosage.route.coding[0].code = #26643006 "Oral route" // Oral route (qualifier value)
* dosage.method.coding[0].system = $sct
* dosage.method.coding[0].code = #740666001 "Inhale (administration method)" // Single dose (qualifier value)
* dosage.dose.value = 2
* dosage.dose.unit = "inhalation"
* dosage.dose.system = $ucum

// Entry pro subsekci Medication During - lék podaný během vyšetření - Paracetamol
Instance: Medication-Paracetamol
InstanceOf: CZ_Medication
Usage: #inline
Description: "Medication resource for Paracetamol for patient Mrakomorová Mračena - L3"
* id = "medication4"
* identifier[+].system = "http://example.org/medications"
* identifier[=].value = "medication-004"
* code.coding[0].system = "https://sukl.cz/terminology/CodeSystem/dlp-lecive-pripravky"
* code.coding[0].code = #0269356
* code.coding[0].display = "PARALEN 500MG TBL NOB 20"

// Entry Encounter Summary - Results - NT-proBNP result
Instance: Observation-NTproBNP
InstanceOf: CZ_ObservationResultLaboratory
Usage: #inline
Description: "Observation resource for NT-proBNP result for patient Mrakomorová Mračena - L3"
* id = "observation1"
* status = #final
* category[laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code.coding[0].system = $loinc
* code.coding[0].code = #33762-6
* code.coding[0].display = "NT-proBNP [Mass/volume] in Serum or Plasma"
* subject = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* performer[0] = Reference(urn:uuid:77fa78d2-154c-4d38-824e-3c38b39c6a42) // Reference to Practitioner-Jansky
* effectiveDateTime = "2025-11-01T12:00:00+01:00"
* valueQuantity.value = 1500
* valueQuantity.unit = "pg/mL"
* valueQuantity.system = $ucum
* valueQuantity.code = #pg/mL
// Entry Encounter Summary - Results - Arterial blood gas results
Instance: Observation-ArterialBloodGas
InstanceOf: CZ_ObservationResultLaboratory
Usage: #inline
Description: "Observation resource for arterial blood gas results for patient Mrakomorová Mračena - L3"
* id = "observation2"
* status = #final
* category[laboratory] = http://terminology.hl7.org/CodeSystem/observation-category#laboratory "Laboratory"
* code.coding[0].system = $loinc
* code.coding[0].code = #24336-0
* code.coding[0].display = "Gas panel - Arterial blood"
* subject = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* performer[0] = Reference(urn:uuid:77fa78d2-154c-4d38-824e-3c38b39c6a42) // Reference to Practitioner-Jansky
* effectiveDateTime = "2025-11-01T12:30:00+01:00"
* component[0].code.coding[0] = $loinc#2744-1 "pH of Arterial blood"
* component[0].valueQuantity.value = 7.30
* component[0].valueQuantity.system = $ucum
* component[0].valueQuantity.code = #1
* component[0].valueQuantity.unit = "1"
* component[0].valueQuantity.system = $ucum

* component[1].code.coding[0].system = $loinc
* component[1].code.coding[0].code = #2019-8
* component[1].code.coding[0].display = "pCO2 of Arterial blood"
* component[1].valueQuantity.value = 50
* component[1].valueQuantity.unit = "mmHg"
* component[1].valueQuantity.system = $ucum
* component[1].valueQuantity.code = #mm[Hg]

* component[2].code.coding[0].system = $loinc
* component[2].code.coding[0].code = #2019-8
* component[2].code.coding[0].display = "pO2 of Arterial blood"
* component[2].valueQuantity.value = 60
* component[2].valueQuantity.unit = "mmHg"
* component[2].valueQuantity.system = $ucum
* component[2].valueQuantity.code = #mm[Hg]

* component[3].code.coding[0].system = $loinc
* component[3].code.coding[0].code = #1960-4
* component[3].code.coding[0].display = "HCO3- of Arterial blood"
* component[3].valueQuantity.value = 22
* component[3].valueQuantity.unit = "mmol/L"
* component[3].valueQuantity.system = $ucum
* component[3].valueQuantity.code = #mmol/L

// Attachment - PDF dokument jako příloha ambulantní zprávy
Instance: AttachmentExampleDocumentReferencePdf
InstanceOf: DocumentReference
Usage: #example
* id = "f884a976-86c5-4149-94dd-75f5fd48c029"
* status = #current
* type.coding[0].system = $loinc
* type.coding[0].code = #77599-9
* type.coding[0].display = "Additional documentation"

* subject = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) // Reference to Patient-Mracena-L3
* date = "2025-03-11T08:00:00+02:00"

* content[0].attachment.contentType = #application/pdf
* content[0].attachment.language = #cs-CZ
* content[0].attachment.title = "Zpráva z vyšetření xy"
* content[0].attachment.data = "JVBERi0xLjcNCiW1tbW1DQoxIDAgb2JqDQo8PC9UeXBlL0NhdGFsb2cvUGFnZXMgMiAwIFIvTGFuZyhjcykgL1N0cnVjdFRyZWVSb290IDE1IDAgUi9NYXJrSW5mbzw8L01hcmtlZCB0cnVlPj4vT3V0cHV0SW50ZW50c1s8PC9UeXBlL091dHB1dEludGVudC9TL0dUU19QREZBMS9PdXRwdXRDb25kaXRpb25JZGVudGlmaWVyKHNSR0IpIC9SZWdpc3RyeU5hbWUoaHR0cDovL3d3dy5jb2xvci5vcmcpIC9JbmZvKENyZWF0b3I6IEhQICAgICBNYW51ZmFjdHVyZXI6SUVDICAgIE1vZGVsOnNSR0IpIC9EZXN0T3V0cHV0UHJvZmlsZSAyNyAwIFI+Pl0gL01ldGFkYXRhIDI4IDAgUi9WaWV3ZXJQcmVmZXJlbmNlcyAyOSAwIFI+Pg0KZW5kb2JqDQoyIDAgb2JqDQo8PC9UeXBlL1BhZ2VzL0NvdW50IDEvS2lkc1sgMyAwIFJdID4+DQplbmRvYmoNCjMgMCBvYmoNCjw8L1R5cGUvUGFnZS9QYXJlbnQgMiAwIFIvUmVzb3VyY2VzPDwvRm9udDw8L0YxIDUgMCBSL0YyIDEyIDAgUj4+L0V4dEdTdGF0ZTw8L0dTMTAgMTAgMCBSL0dTMTEgMTEgMCBSPj4vUHJvY1NldFsvUERGL1RleHQvSW1hZ2VCL0ltYWdlQy9JbWFnZUldID4+L01lZGlhQm94WyAwIDAgNTk1LjMyIDg0MS45Ml0gL0NvbnRlbnRzIDQgMCBSL0dyb3VwPDwvVHlwZS9Hcm91cC9TL1RyYW5zcGFyZW5jeS9DUy9EZXZpY2VSR0I+Pi9TdHJ1Y3RQYXJlbnRzIDA+Pg0KZW5kb2JqDQo0IDAgb2JqDQo8PC9GaWx0ZXIvRmxhdGVEZWNvZGUvTGVuZ3RoIDMzOD4+DQpzdHJlYW0NCnicrVPLasMwELwL9A97TAKWdyXLksEI4ldoaQ5pDIWWHkxoQg8NbZL/p5LT0h6cQ90I9Jxld2YkQbx+7/aQ5/GyvKkA47tuv4PJ5hiVj1PnoKhK+OAMBYZmrSFA0JkWSoJNSGQSDi+cPcxgz1nRchY3BNKfp9BuOQvRCASUKWHABADaNx+1WBPC7thn1tYCCmnCqCwcdmecLuD3C86ecsSiRixrJNsgKeki48/Kyq/JqRxV1bgoyQPsnqG95az27Fac/VGNHFAjrRJIv+QMi7hAfQLT/xAasldaI7QZS8ibZCoXkQluaRdM03WYsEmQUu23c0fya68kElkXybPH15aijBFKj5TiV5ilBO2mfyDK9+Tqt+89EMlos0ffPtTLEuL54fS67TYnKJbfH3OgNpEU2oLRfpLeUhSkPZrYPt929hOB/iWngxF9vVXP8RMdg9B7DQplbmRzdHJlYW0NCmVuZG9iag0KNSAwIG9iag0KPDwvVHlwZS9Gb250L1N1YnR5cGUvVHlwZTAvQmFzZUZvbnQvQkNERUVFK0FwdG9zLEl0YWxpYy9FbmNvZGluZy9JZGVudGl0eS1IL0Rlc2NlbmRhbnRGb250cyA2IDAgUi9Ub1VuaWNvZGUgMjIgMCBSPj4NCmVuZG9iag0KNiAwIG9iag0KWyA3IDAgUl0gDQplbmRvYmoNCjcgMCBvYmoNCjw8L0Jhc2VGb250L0JDREVFRStBcHRvcyxJdGFsaWMvU3VidHlwZS9DSURGb250VHlwZTIvVHlwZS9Gb250L0NJRFRvR0lETWFwL0lkZW50aXR5L0RXIDEwMDAvQ0lEU3lzdGVtSW5mbyA4IDAgUi9Gb250RGVzY3JpcHRvciA5IDAgUi9XIDI1IDAgUj4+DQplbmRvYmoNCjggMCBvYmoNCjw8L09yZGVyaW5nKElkZW50aXR5KSAvUmVnaXN0cnkoQWRvYmUpIC9TdXBwbGVtZW50IDA+Pg0KZW5kb2JqDQo5IDAgb2JqDQo8PC9UeXBlL0ZvbnREZXNjcmlwdG9yL0ZvbnROYW1lL0JDREVFRStBcHRvcyxJdGFsaWMvRmxhZ3MgMzIvSXRhbGljQW5nbGUgLTEyL0FzY2VudCA5MzkvRGVzY2VudCAtMjgyL0NhcEhlaWdodCA5MzkvQXZnV2lkdGggNTYyL01heFdpZHRoIDE2NTEvRm9udFdlaWdodCA0MDAvWEhlaWdodCAyNTAvU3RlbVYgNTYvRm9udEJCb3hbIC00NzcgLTI4MiAxMTc0IDkzOV0gL0ZvbnRGaWxlMiAyMyAwIFI+Pg0KZW5kb2JqDQoxMCAwIG9iag0KPDwvVHlwZS9FeHRHU3RhdGUvQk0vTm9ybWFsL2NhIDE+Pg0KZW5kb2JqDQoxMSAwIG9iag0KPDwvVHlwZS9FeHRHU3RhdGUvQk0vTm9ybWFsL0NBIDE+Pg0KZW5kb2JqDQoxMiAwIG9iag0KPDwvVHlwZS9Gb250L1N1YnR5cGUvVHJ1ZVR5cGUvTmFtZS9GMi9CYXNlRm9udC9CQ0RGRUUrQXB0b3MsSXRhbGljL0VuY29kaW5nL1dpbkFuc2lFbmNvZGluZy9Gb250RGVzY3JpcHRvciAxMyAwIFIvRmlyc3RDaGFyIDMyL0xhc3RDaGFyIDMyL1dpZHRocyAyNiAwIFI+Pg0KZW5kb2JqDQoxMyAwIG9iag0KPDwvVHlwZS9Gb250RGVzY3JpcHRvci9Gb250TmFtZS9CQ0RGRUUrQXB0b3MsSXRhbGljL0ZsYWdzIDMyL0l0YWxpY0FuZ2xlIC0xMi9Bc2NlbnQgOTM5L0Rlc2NlbnQgLTI4Mi9DYXBIZWlnaHQgOTM5L0F2Z1dpZHRoIDU2Mi9NYXhXaWR0aCAxNjUxL0ZvbnRXZWlnaHQgNDAwL1hIZWlnaHQgMjUwL1N0ZW1WIDU2L0ZvbnRCQm94WyAtNDc3IC0yODIgMTE3NCA5MzldIC9Gb250RmlsZTIgMjMgMCBSPj4NCmVuZG9iag0KMTQgMCBvYmoNCjw8L0F1dGhvcij+/wBIAHIBbwB6AGEAIABUAG8AbQDhAWEpIC9DcmVhdG9yKP7/AE0AaQBjAHIAbwBzAG8AZgB0AK4AIABXAG8AcgBkACAAcAByAG8AIABNAGkAYwByAG8AcwBvAGYAdAAgADMANgA1KSAvQ3JlYXRpb25EYXRlKEQ6MjAyNjA0MTMxMDQzMDYrMDInMDAnKSAvTW9kRGF0ZShEOjIwMjYwNDEzMTA0MzA2KzAyJzAwJykgL1Byb2R1Y2VyKP7/AE0AaQBjAHIAbwBzAG8AZgB0AK4AIABXAG8AcgBkACAAcAByAG8AIABNAGkAYwByAG8AcwBvAGYAdAAgADMANgA1KSA+Pg0KZW5kb2JqDQoxNSAwIG9iag0KPDwvVHlwZS9TdHJ1Y3RUcmVlUm9vdC9Sb2xlTWFwIDE2IDAgUi9QYXJlbnRUcmVlIDE3IDAgUi9LWyAxOSAwIFJdIC9QYXJlbnRUcmVlTmV4dEtleSAxPj4NCmVuZG9iag0KMTYgMCBvYmoNCjw8L0Zvb3Rub3RlL05vdGUvRW5kbm90ZS9Ob3RlL1RleHRib3gvU2VjdC9IZWFkZXIvU2VjdC9Gb290ZXIvU2VjdC9JbmxpbmVTaGFwZS9TZWN0L0Fubm90YXRpb24vU2VjdC9BcnRpZmFjdC9TZWN0L1dvcmtib29rL0RvY3VtZW50L1dvcmtzaGVldC9QYXJ0L01hY3Jvc2hlZXQvUGFydC9DaGFydHNoZWV0L1BhcnQvRGlhbG9nc2hlZXQvUGFydC9TbGlkZS9TZWN0L0NoYXJ0L1NlY3QvRGlhZ3JhbS9GaWd1cmUvVGl0bGUvSDEvQ29tbWVudEFuY2hvci9TcGFuL05vdGVzL1NlY3Q+Pg0KZW5kb2JqDQoxNyAwIG9iag0KPDwvTnVtc1sgMCAyMSAwIFJdID4+DQplbmRvYmoNCjE4IDAgb2JqDQo8PC9OYW1lc1tdID4+DQplbmRvYmoNCjE5IDAgb2JqDQo8PC9QIDE1IDAgUi9TL0RvY3VtZW50L1R5cGUvU3RydWN0RWxlbS9LWyAyMCAwIFJdID4+DQplbmRvYmoNCjIwIDAgb2JqDQo8PC9QIDE5IDAgUi9TL0Jsb2NrUXVvdGUvVHlwZS9TdHJ1Y3RFbGVtL0tbIDBdIC9QZyAzIDAgUj4+DQplbmRvYmoNCjIxIDAgb2JqDQpbIDIwIDAgUl0gDQplbmRvYmoNCjIyIDAgb2JqDQo8PC9GaWx0ZXIvRmxhdGVEZWNvZGUvTGVuZ3RoIDMzNz4+DQpzdHJlYW0NCnicfVJNb4MwDL3zK3LsDhUNlNJJCKmDVuKwD43tNO1AE9MhjRAFeuDfz3EY6zppkcB6+L1nB9vPirxQzcD8J9OJEgZWN0oa6LuzEcCOcGqUxyMmGzFMiN6irbTno7gc+wHaQtWdlyTMf8ZkP5iRLXayO8KN5z8aCaZRJ7Z4zUrE5VnrT2hBDWzlpSmTUKPRfaUfqhaYT7JlITHfDOMSNT+Ml1EDCwhz14zoJPS6EmAqdQIvWeFJWXLAk3qg5FV+Uh3rmX4XIh3DmkK0JdV3fqaLj8oQe+9ou4lG3/+aZjnRMmS/Ydxwgnuevl+6B9fuB9fEJkoRcb51qvzfWjwkcx4GTpv/ukB8VYJj55Yd3VKJiK7DsT+LsK61iNeEYneHeENoO+WcbntwaGdRmDsUrC4btf/ersg8WHE2BmdKe0TDtGNsFMyrpjttVfb5Anr9w8wNCmVuZHN0cmVhbQ0KZW5kb2JqDQoyMyAwIG9iag0KPDwvTWV0YWRhdGEgMjQgMCBSL0ZpbHRlci9GbGF0ZURlY29kZS9MZW5ndGggODQ2OC9MZW5ndGgxIDIxOTA4Pj4NCnN0cmVhbQ0KeJztfAt4G9WZ6H9mRg/bsuNHYifIjkaZWHnIj8RO/EoAJY6d2HnZsZNIeRCPpLGlRLbESLZxIMW8klRACoVbHheWx0LZAJfKhIcDLYXyuL2FpLB3l+22F1jo7bb03rItpS0fxNb9z5mRLAfDUhbab++XGc0//znnP//7/GdGkQMEAGYhEMC1tau6pv2jB9YDkEuwt6ere033az989VaAbTFsX+brlyPS/yl9DGDO3dh+0zcUE8u7Ft8EsNiM7Vd7I339O6+dlQ9QPIpMr+oLjfRubm9+Acd/ApD9ekCR/Qt/8MenkfYMXnUB7Mg7ZfkI5a3A9sJAf+ySgYasP2Ab6YteCoV98s+kn1wBUJvA+ef1y5dEzIH82TjuRnqxX4nJdX97SRdAZwT7uAG5X/lxtfdBgPNfwflXR8LRWPImqMHxDkofUZXIq/eNfgvAIQBwPFDbOe4brz5/eO6+Wav/ADnUDIA37hvaSu/vBGrJmeqJU1mKeTZwYMRLO3Ce6aqJ7wNkHT9T/eHTOA7kBGQcwj9RGoMFqtCvy4DHmflQTaiSa2ddhS0CgvA1cgMYwGyoFU4l34Lb6R1u5U5BL/czVCsHBI7jsjhBBO4IsuRTvDd3iSJcAbkTZzQdzLO5WhHIXXSMP21YSy0Fnn8RlgpPJu+hF5w7/iqHcRu0/7V1+P/hEELJB4ROeOxz0RYmH//CctbAcnp90flfxiFcBp0z9l8Ae/7SunzaQX4JjfT6quUYX4dGIfjVy/kiB/egplfqzr+DtT7jPuOcK8H7VerE/w0EPns8Of65+FyRfCOzTXPy0/LyL3XwYTj615R/7jh3nDvOHeeOc8e549zxWQe5+/PTcm7Y+5Up8hUf3Fvw67+2DueOc8cnj+nfxmF78ZfE9/kvh8+fddBvHem3f7NB+8ZyNgjwI7wvBhExMyyANbAZdoEMCgxADIbgIDwIz8Hb8BuynHiIzBPekkwC/V6QUrqR0g/9oCLlyMyUyWdRCkAIrxfQahNe2ck1yd+AM/mvQJIT5BnyJOqieZXCpfpVMZMB/Fv8r4V5cAIeg2fgPfiAuMkeopBryDcAXO233XrLt44cvubqq668YvTyrx267NKDI5cMDw3GourFkfBAf+jA/mCgr1fx+7xyz76L9u7Zvcvj3rlje3dXZ8fWLZs3bWxv27C+dbEtPzurgozlZDdLzUp2ZQWMZecgmlNZQRLG5oSJdSa2OsWEq9Nt37jN3bLOard7rJI94UoI5S30kv1xX2rAgyxwFs5FFhu7pI2du9xiS7yHDWJP97SWNt6QHtOxBNfc7U60OrGV0V7P2unmhrOG21LDkpiAjnjcPwZ8Ofa7rGOEIYbmaz1oiUdKeJ2SXXIrSDtmBou9u6cZMUsKI+J65CiO54MXL99OaZzo2C53Quzp9WxAauDKE+zTNQ4rpUs0vCch+kQxYSyXvB3uuD1BeiSr3t7mRo8R2Rq3S3bR4xlPPldKqSU78uJg7ZhEjnaOucjRrl3uk/mYcUe73Y9yhGvuWesZW4hj7pMiBp31crSXdtKGSBuwkWBkHuXMjN560gUwykYF1sHaPrSC9ZlTfQR845zWl68JcjBBLlw5vnFBG3GlqAXsM2t9oxr1Yp3ajCP5dOQp4HCdsUHtQC9hZFzZBpfZleWycLkcxoJ2PYo9TyFtFoETFpJLrGPIcxvrHiejY1ku60nGaZtOOYqUtG803YeaU7IMRihPM3z7lAXbd7lPWAD5M4gUa+lRWdEyxm1xSlNp3enG6LWMkS3OHkxt2uTLW0RM64Sry01pe6yY85jd6yoraHaJbkmxSp6x2bPjkZax/PzmjfFmTGTMNZZgY7LR0eOMaylHE03Kb8I05cvbfFJrD5JIuGzw04Zdvh1iT8Lb40RUzG+Nt9KskCk1FI9xfPkYEcrJBXAB+s1oSWRLytpEjrQ2PXIhXKiNGOmISVqbIMWa11ukFnFuMO6TvJiBrg53n7XXIyPvhEuSE4K01jomwFpcL3MJmtQyBlucaNtGzMGtzo7duEipM8R4fJ045hIcsk+m7XV2XPdxfUhat86TMaNFjCdcsq8HKVo8jBhXIna2SLLoRy+juei5LgnRXbvonO5d7rjFL/kl9LDLFZfRbKvo81jjHh/zOM5H1aCywjBVnfTixNE1X+7rRTAugrdH8moddHWe3dd3dkcvUmX2Se1UHLsTdo+3Sy1+pKCX7E/wmHF20e/RUgY6WN34VCKSQSRiTBnzeP6qVIvoLWzgJ57om94MpJut9OpBr1VpuZIQHDTz3PbEfmsi5HGmSeTEqFeMi/lSk0QBm7yeXj0JAyKjPpkWJyPNPexoxw7R7cVcRoatPfFUxuE0wZGWlBhwTmOJJZV0o2iunJqTGO0QezxiTw/24uqxW8WEAe9ir0yTi5bdDs2eDqz9eJPjXTgX6AKyJky4A/TKimTHap2gi1bzPtVRQO2gy50AazwuxRMEVSxvRWJk70gYHW30hp+IU5IVDCKVJ8oKm9uK6jLvUG7WFsnuQRKunPkSHYfVwkuBL47ZmNiLq81QXhAvjIuNcaxae7HgCg7fjh7cFsR8sVVkoZYxk6kT2mjLg4w0wqxySojz2ceR6HeO7TWVT/WwT9ipEZsZV9RsmzvRkSIxsQ8iFzsTXEkDDlLjyTasHwILFHWeobwN3evCrLLS2WKC63br4WHz2+hUaypg2jTsYWWXbov2lL45mr6aUCP7WNgnqzxhLsdAJwTUQRs2UXOmkgBxVFqbwzN1NQMQR1GiPsIM6dEbQrnCbNK2Q5GWT3xQkCV6WceTz3ZgjeyR6OXxUPFmJojOYKzjGmPqLiMdnMkVuiTtk0M/bcyEzO5s9jExnemYZpJhuuN1753EhzbNc3b9oDlDrTyir0p93SnWRMDj9GuzjHoFF7GiYuX2dbKnjd24GiS7CesYmo+rSkx0OXETYbYd0bzarlUHmpWkVYJWzCEdgWJIgLSBUAC4tKQNCQ6baUx6lANilhroLUtqGOOICas9LUb5uRYs9HFfj1/bqNHL0GBdTR+NjCzQWSy2Q7Q0dbsNVsHDUsaRGHbqWazBIWd6fJiuSVPKk2Y6Fk8PGhi7YS03HDoccppnnBU3fz5hZj2aiSw2RquRw/zZongtQO1auNo5jXO7View1+GLx2lpG9ubR1eoxVGA/YWoWiMq2ahrib65DFXpoKLNrIc1cbmZqDpa2MpzcCAfaZ/TUjsHB/NRm+esGhV+TuILwJAzRa05AfXOLtfyXB/WZ2vZOez0INZKrx4kaaWXvpJy9FVqOavq6+y1mGZNH5TSzOhGL6U50tYYseAzsGA1oESHmI/uamL+dKCq2I43jRGTQycwUAKuvCkez0nVf1r+T+IDKLCHS/DEz+5IHMJ4YKxzZx4xn92by7r1KOem77RTXw7ZzYmcZvr8QvemLJoAVRjfQy/qNYc9TmQ4hnXRpZjZO5f63pQqCWFnam7Kb71sSetzz+rtdh/CXuqpF+lOkiB4Nzjs9LJS1zFpNMfDTv1B9xCN7pWM3ZVOUQzic1Yzwact3CiDdKsSKbXZwYpcHB94grLM6hB7jZmLz1Lb6NMxvgFI+SJZDau1lyFJf8/APUAod6+2NnrwvWI8+W6pRytVHG7yeHXHRTG/AIfiYiG+aCSuYe7VxyTWh7u40aFTUQuuwcWp0VHtLVx8Yxc6gb6RZTdYs+lbXuoF61bnZw2LdD5WqcQ+6RI7dUVihzSCDwvNUkIU92BJxM71pZ54HLfTuETfpHa4NUiHSEUpfTKgTzE6rbUU39GmmpZSmm7yePJEKX1dSku7NCVNRWkUiafEJXwzSqNZRnZruYYfpv5YHUiafMGhC43vie/C90N7oowK1vXAZl6ph3FATW6lmoAr2ddwka23IWlTGk7Z/A07bL7GpM1bn7TJdUlbz8qkbd/KU7aLViRte1eotj0r2m27a1XbrtqkzVOTtLlrVNvO5aO2HcuTtu3LW2zdy5K2ruqkbVvVQ7bOqqSto+om29bKpG1Lpcu2uSJp2+RM2jY6d9janStsbUuTtg1LGm3rlyRtrUv6bC2Lk7Z1i0dtzYvabWsXPWRbsyhpcy0atV3oUG0XOJK28x032VaXJ22rFiZtTQtvsjU2VNpWrnDZqipbbBVO1eYUJPuepVKZbcmCpG2xPWlblC/O3+OwJW3ltgLbwvlJm1RvX71brJ+/evcCitkoVuZqta+af2BXUWPh9oLG/O2FnnxPbqNlu6GR2y7gZfHMasnbnlOXvd1UZ9ye58n2GD3gyaozb+fruO1mD+fJB97lMpCT5Abodm4cNyW3bUyYO3YnyNFEeReF+LKQMB5NwPZdu91jhBzzXHP99VC2dmPihi73ozwgis+PXHOne0zgj3nWghOcTifoJ0P1ttNJMk5wTt3Sd0brdH4CT/MhaSx1zAXDWnpCUfIfkz/n/y8UASR/o1/vT34r+TtDCRQi/h4gJbHxf4CfGErIHHrBCByCfjxjoOB5CKoRv5i11kAvhGEQrobb4QCEoAN7vaCSbHyvVWALDDHqXqQfgiDOGYbLkSoGu8GP+BrYBruQLoJXDCmvhjjjsxcvFdZDJ+vdjjQ++m0W49oBHtiHsyP4+LAUgP83QzvwMAvtqYRy1xxRKCtaGCwinJo9O5idLwTzwayCswZPCgoaly2PFtgLyhc4Vq6oq60pnjPbaLAX2Imjrr6ubuUKh7TAOEdKjZiMRtNS/sXJeQuXLVu4sKZmsplffeYF4uMbVzfVbdveJUfuG73qto7mFeWCof2jJ96qXriwml53CD8488dt+6sq1tet2uruOHT0sgMd/hXO9jrg6G/1hDaMgwmywerKzRbMRiOguoKuZ0FjdS3V0kdqiyTezhM7v48v+d4/PF418drrZBH50V7D2o+eISOTR7h87nJIJhnH643PGx30u0NiEv6R5OK+VejKyeJyCCGX7JhT7MZkWOHE8XYAoxulW6DUNSubN+cIBjCgdFPKSwWFJdRFpJbgRyoiEuHbSdlTpIzbdHry7RO/mvjtZZNnfmVYO2Hj3v7oGcE10cfd9vGzQJIPoBZ/Qs45cJ4rL9tEBCHLyHFqVoox4+tDrkWUt8QTD9c9+e6zp8n4qYn/SSqf//mkgzvJfX3id9ysidhEO1c18feo72OYjQbkaoYSlwVt441ms0r5MldRlnKRxpInvtjkGyffIr96beJwlJvLL50Y4uJnXp/4FTqF/mJM+BryyYJ5LouR5wVOJSbd6IJaeqFy9cRebzcRu2mjjf/OxD4bf6jszGbuQ9sxoeyWr3/85i2YfcuT7/H/zL8JNsy9cldRabZaXpCVBXlzTOpCUSyDHMqQcSzEONY6ly1vWeBw1F/A19fXOWhymaQ6TK75nImX6o3GRTV1dfX1AiZaMdnh+3pjUWHs6Y9vtRQuuch14L/MuXfBu493XttTXjx6x9zWh7a2XBqqWDr5+8k5szoKt9zg3dXfMJucv923xDcw9jdLd90YmLjrWPPe0cpNVS/yW4KbevEpjmr7scGHmXGKZcb34apUZjjnEHLpjpK5emZw0Jl8T/gmeqgA7FDmys/NVnNAtWabTGrhLN0s+klZRK0oLinCHEmZUVTFUfuMxcXkvoP3NEg1f/y70D3VkXsnf35nScM97W1D+xxbz+voO/+y/1puPc9feM2fHnzvDXc7Z/jomW+27Duy0r2CxOo2L33woYOPyvQb8T2o+y/4t6AEfY3rZG7u7FwoM5vUAk0ZupQbadQ0/3KoTbHJjsJra+rqa41GYtf8TT6887vNxXMO/fjYdY832yY25C4YDCnXl9zneGfyIDfL4gx0Hryz8Nr3bz/6+mVXv3f3vrt6lOD9D3KerkMbjtFfATcieIQ/jRXG8jgxqpCNstEF0aJavvH0A3/Pnz5Tg35GKu6n1M+kRPNz0qv7mQi4Aq/N9DPSGiP8/4LZ4ADJVTh/nt2ezxtNKnJ3WCxMAM0f9DXeapkoE3N2MaZMUR3LId6uIUbTotRQ4+n75jXdMhi8atm80QeumNfW4/9Ww81CJ8XWqN4lszZ/dzhwNY7xp69r6vE/Ep04zu2MHvatmthC77WbFw9tUlm3brXAMR1x1aW003Wjmn2KVqiDddWdw/uPLp93+bcvP6+tV7676Wb+9LFVsjcxNPEwt3PwaipQl8C9z/8U8mAOekmXoHk3k3+tiVmJnO+av+rmQYdY0j60bwny/Pam3tsczRUT3Zr3+W7mfTeyNgrP/7Pu+1nTfU+gCnPqBsypxTDfVSjkOGZJheJ5ZijD1WtOpRWrUyypao0smTCPFqUSvhiXr0PL8hJsYJo9FXvcZ7iXv3JAGcjJsvs8919bMufZmyLH9xju4Q6ENwYsuX3X3Xto9uzvF7befLF6UfsFy1qb5jfcPdx7YNMx7+7e5Q0XbF9Wf/to9DBWcqbfcWbJHs2Sat2SJbhaD2ZagvnFPSn8N4yQ1ZVnzMvLydpvyjGqhXqMapy1dG3I1Iwiqb62vtaEruTRoFoTOTI4VFISuLfs3uoHqv+t9Lf9RdIOr7XjtgPk90feeuvIxBmP9yhKCGAOGDHzjRihbJ7uEqkA4R5B6y6vVfK8bx8fIj9OTDyHa+F1fumZGqy245O3CFk4t4Bql5VjzDEZVWO2SiBPzyDGobmeurde45PHSxvKus/3VDQ+9cBh8r3HJ44s3bTNv2bylrhrvRtZ/4K3fvzD9d7V59Fq/gZG/OvIP13NjayaZ89czaVS7v7JMit3onRiO1ddOsr99yPDE8uO6DVvLVbzQqx5NlfBrGzVYlRz8sGKdaYonRCNjemqx+pMSX3tVPEucjimVb0FVz8VwbLnuOPUVNVbdO2eqaJ318s9O9tvPFNDi96KnSvIUOeuB45fdkKm8Wf6sPjfpNfrG7CO5DzBLTDTao2xp5XxKFfJ32johlKsIFgZ7WbzrLJ5RRC0FPGaxjVaZVyjaUx3nvTGw9arpns93ui+E24dqC0ovv1P92SX7Nyw8eKCm+a9dOPOoxfO9X+jcO2xhVuvqxZffnaWpZGrvEDdun9fGbd034b1W+OXNh1WJ23956+7eEvjzfyFW1Z1oGZ7k3/k6nEPyYZiKHJlQUFBTqEqcCxp8k8vW95VV1iPlTMPd7+M5693sxeVdia2zlnRWNZf19ZWV79hA7nzKlJ6PX3I8b40vmnS07ayrrW1bmUbyvg1H+KtbCcvgvwnswXYnydojwNYNtbQ7bSWPrbZ0xi3PKtkdtHfFs2rESc3m+YWF907p2S5nQ/tf0Teu/fAw959j/WyOxByQtjBX2LwYbXPPgFkP0A1Bn4NbnLkxAevTb4g7CC5k79HusVIdynSGSH/Cd5g0ElraFKv4WsxPwh54Y6rLnnpm5O/pXOOH2eznjc8wY8an5+B+/O/e2XytOEJxp0eu3Cfvu0/9fnSf4Lzd2TODGfjZ543kG//B8/3pk5u+ZdyruN2/dnnw9wbX97J02MungE8D007H/kzz1fOOs988hRE/QwIl/4Hzx+eO8+d585z51/g/OirPA2Lz51f2rlaP3d+jvPAX/Jkz4YOcpr9RpD+6q4BQMcJGLBF9F8TGvlhHechhz+k4wJY+It13AAF/FEdN2L/bTpugsY0n1zyAn+/jueB0xDU8fwMWQVTsogARsPNOo7vi4bbdTwrg2YVWAx36fhqMBkeor94FLLodyKGR3WcQLZlgY5zYLHcreM8FFse1nEB5lp+oOMGWGD5qY4bsf9mHTeBmuZjhkLDszqeBaWWMzqeA925c3XcAstyQzqeyx/NvUPH82BHwUIdz8/QrWBKN7TdUnBQxw2QXXBYx7MyaFbB3IIbdHw15BX83XGxZlnNCnFz0KeGo+HemNgcViNhVY4FwwNV4ppQSNwW7AvEouI2JaqoQ4q/SuwOKOKCA4o6sECMyd6QIoZ7xVggGBV7wwMxcViOin5lSAmFI4pfDA6IEVmNiYPR4ECfKIvR2KB/RPSOiGsG/OoxsXXQF4iK4QGcr4iqElKG5AEfY0j50ykROahGxcWBWCwSbaqu7gvGAoPeKl+4v1pGDkplL+VQrVNXMupqbyjsre6XozFFrd7U1tyypaulqt+/pApti4yo1Bw0enljpg5VYoei9gejUTRbRFMCiqqgln2qPBBT/BVir6owtXwBWe1TKsRYWJQHRsSIokZxQtgbk4MDmoU+lJH2CPXosKwqSOwX5Wg07AvKyE/0h32D/cpAjLlZ7A2GFLSR+mBBlz5jwRImxK/IIepEOpYaEofRCeHBGDosGlODPsqjAol8oUE/1SE1HAr2B3UJzL1aHJHpYBQtoHpWiP1hf7CX3hVmVmTQGwpGAxWiP0hZewdj2BmlnT5lgM5CO6rDqhhVMDGQQxD1ZrZOacdoqJQIdWhMdxGTOxwI90+3hCbNIIYuGlDYHH8YXcYk7ld8MdpDyXvDoVB4mJrmCw/4g9SiaBNLQ9kbHlKYKVpYB8Ix1FTTgPo/MhVUfSgakFF1r6L7S0tROcMalUqPxjDuQXQ9LgUm7mwrq9ZEYuEo1V8WY6rsV/pl9UCKaGox9anhwQjLm3B/RB5AAfrEtpiMPmW4hu5AN1E1a6qWLV+1tbZuJRur1AanGEYHI5FQELWma61K9IQHxX55hEY0Ywmi23yqItPYYRwjIXlEC0pEDeIo+jCGqYfpqIeIJiTmOtVcj7OIK6ef+UJHerWc+YR9ETXsH/TFMGJYG3BuBZ2TEoCOHQ4EfYGzikPK8VPahwdCI+Li4BJR6fcq/gxy5PBZ2jJylvIZKyE6LbJpXquYBxYHUUpM6acVTg2iVH94eCAUlv3TvSdrrlJUak4YRSEcjEVwTWFlo1mENAElFJnuUSyXWBI0choQmn9qOBD0BlHnqlQFw6UfrepPeZBVsthIJIyVJhIYqcaEHoztVGgy7wz6Y4GtEcxazMOu4EFlm9I3GJJVOA4i1MAyvFYgthmC4AMVwhDFqxdi2NeMmAoRBmXsCSI2AFXsl/khPEXYhn19EMCxKGspeFfYb/UV8DPKbhxV8L4ADrCRAcREpJfBixzoCJVGewLIi3LpZVKo/GGkoj1+pKMcQzgSYZxFpB1AGEEKldEOIiXt60NcxiuKvYNIOYK4l8E1OOpH6ncRb8UxH0qMMvkDunyqjcrkUHky9vsyNEzpn5JCZQexh/JYzHwQw74oNEE1nn04RnkOovQq5BOGfuyVdR0UqESeKR2qz+JdmcG7mvkpjJD+S7XM7KK01bAJ2jBCLbAFuhBW4agfljCfNzM/jSBVKjpapJdD46f6gc7rYJz7WRyierRFPSoBNqbovuxjGTHAdPFDBYuayv5FPeUtypXGpg/7Kph/wywyA2x+hHGL6hKodTFm8cC0GPp0Oz6ZI6kcHWYyFJ2zn92jbNSHlLKuH80g2jOItml/dTKVzVTzIIu4FsdYOl+7zpKxAL07ZQnNSZmtgeC0/Dl7Fs1iLRPobwtieobRKKpsxaX0qNA5+ZAnzduUH86eHcJ2P+vLtGEqezPXo6bpIFuTFRn+pHg/4lRKb7qtZEQrwvI2xLwdYD1+hmtae5kuGmU0Teljvk3J0uJRzWqHyHq1iqHpENT9PRXXmXxXkRFXzZZIOkNjZ2XRlL3DzFv9nxmTVKUZ1FddlFFOyfEzSDlP2bgfKXxMrkaT4k7rVYit0eF01HxMJz/TM6jr15RRDWn1C7OaNhWVzNU6gH0x3aeZPkjl/5QfMlfq9FlRtgI1r3t1q6fyK7OKyp8SGzVte5Tl2wDjrmW9titMWffvxbIK606EeS6a9r/M6FX2F14Kq24qVsKzOc20M/Wx9iBynKo3NOYRpqVmQabESqyVMaY55TXVP3OvOK1/h55lKS/XIGdaS1fBVqiFOliJtsb0HYpqK7OdQNHzMrUvaLvCMDurWOSm2zS1R8QwF6h3tRobQQ4j7HdH2q4Y1feBTBmfnEG5R9M8Z/JglHkvwmzUciElge4EHuZdkUkaSdeQmXdpbTX4WJTldF3Q6gXlL+sVJpXFEZbp2lyfzkXR2/JZ2R1LV3Bt30nlxPR6I+p7Yn9G3k7v6Z1WB//9/Iqwtp/tjjG9BmjPNZrcirScsy3QVtSwHoPAp/gs9WRz9oqcyfd0Tohhi5F+Cd7pWvGm69UnuWs6fFHfTnGf2oVm3rNmsiBzP5yu16qMHKCWaLbEmLzUM6bK9uIRvQIPM8vDrD58Vu7J07JKYXEJ6zCmP7mI+g4a0fdR7ZkyVSs1PgG2S0U+M0e1p98BPTJT3FMrJFWfaf4E2F4Z1P1c9YlnRO2pJPqF6oG2g1BbdiL31M6xEzE/02orq2aUq1avuxA/iJT0Gb0P54WYt3mA5Ad43UH/38EZD6Lf6f95yHuDIb+O+/2hgT6834rXyqiGn6I4ffnpDodD+Gq9ompFY9WyVeJgb7imN9Yk1lYtp82+0EgkEN0U9DaJdVV4rhL7o3RWiPYsq2qsalhF33jYq3tfkH4/MRSkL7VN4kqfb/ky30rfJjk2UCE2j6ihCnG9qigHKsShYKXW6+2r1Aaiqo4MHmDIF5rEPEDADAJof8tMrefCkehBsgpgGN+viABkGF+xiAG4IL5mE/rtnhlKcY9Yzf4amiOrwUJ/+zDvdshn32kS2kduQNYqXuNMBsfo/Azn2TeNRO/P0wLA7Ufcjz30+8omXE0ELsCTgAsrBoHd8DWEo3AjwpvgIYSPwEmET8N7CH8L7yP8AHUkxERMCHOIBWEekRCWk60IO4kPoUIOIbycxBFeRx5B+B3yKOr2GHkM8SfIEwjHyVMIv0e+h/BZ8iOEr9Bvcsmr5B8Qvk7+CeEb5A2Eb5O3Ef6c/CvC9wnqQD4gf0T4IUkC4XgONeGyuByEedwshIVcGUIbtxRhBVeFcCXXiHA1dz7CZm4zwk6uE2EXtxOhh9uN8CLuIoQ9XA9CPxdAuJ87gDDCRRAOc6MID3OHEcY5tIu7jrsO4THuGMIbuW8ivI27E+Fd3N0I7+UeRvgdbgzhYxxazT3JjSN8insO4QvcCwhf4n6I8GXuZYSnOLSae537GcI3uDcR/gv3Lwjf4d5B+L+5XyD8JfdLhL/m0APcHzj0APch9yHCj3nMBl7gMS68mTcjzOXRD/xsfjbCYr4Y4Vx+LsJSvhThfH4+woX8QoSL+VqEdXwdwia+CWEr34qwjW8DIqwT1iHcKGxE6Bcwb4T7hfsRnhDGgRdOCk8j/l3hTcR/b8hmOc6z78MBMxewGtD/83NceFl4RTiFeccj7bMAwg+E/wEG4TWcl0tzU3hO+NH/AyTl33gNCmVuZHN0cmVhbQ0KZW5kb2JqDQoyNCAwIG9iag0KPDwvVHlwZS9NZXRhZGF0YS9TdWJ0eXBlL1hNTC9MZW5ndGggMTQ2Mz4+DQpzdHJlYW0NCjw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+PHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0iMy4xLTcwMSI+CjxyZGY6UkRGIHhtbG5zOnJkZj0iaHR0cDovL3d3dy53My5vcmcvMTk5OS8wMi8yMi1yZGYtc3ludGF4LW5zIyI+CjxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiICB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iPgo8L3JkZjpEZXNjcmlwdGlvbj4KPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgIHhtbG5zOnhtcFJpZ2h0cz0iaHR0cDovL25zLmFkb2JlLmNvbS94YXAvMS4wL3JpZ2h0cy8iPgo8eG1wUmlnaHRzOk1hcmtlZD5UcnVlPC94bXBSaWdodHM6TWFya2VkPjwvcmRmOkRlc2NyaXB0aW9uPgogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAg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ZW50cy8xLjEvIj4KPGRjOmNyZWF0b3I+PHJkZjpTZXE+PHJkZjpsaT5IcsWvemEgVG9tw6HFoTwvcmRmOmxpPjwvcmRmOlNlcT48L2RjOmNyZWF0b3I+PC9yZGY6RGVzY3JpcHRpb24+CjxyZGY6RGVzY3JpcHRpb24gcmRmOmFib3V0PSIiICB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iPgo8eG1wOkNyZWF0b3JUb29sPk1pY3Jvc29mdMKuIFdvcmQgcHJvIE1pY3Jvc29mdCAzNjU8L3htcDpDcmVhdG9yVG9vbD48eG1wOkNyZWF0ZURhdGU+MjAyNi0wNC0xM1QxMDo0MzowNiswMjowMDwveG1wOkNyZWF0ZURhdGU+PHhtcDpNb2RpZnlEYXRlPjIwMjYtMDQtMTNUMTA6NDM6MDYrMDI6MDA8L3htcDpNb2RpZnlEYXRlPjwvcmRmOkRlc2NyaXB0aW9uPgo8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIiAgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iPgo8eG1wTU06RG9jdW1lbnRJRD51dWlkOjJDNTkwREJCLUIwQjMtNDMyNy04NkVFLUMzODhERTAxNTM4QTwveG1wTU06RG9jdW1lbnRJRD48eG1wTU06SW5zdGFuY2VJRD51dWlkOjJDNTkwREJCLUIwQjMtNDMyNy04NkVFLUMzODhERTAxNTM4QTwveG1wTU06SW5zdGFuY2VJRD48L3JkZjpEZXNjcmlwdGlvbj4KPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgIHhtbG5zOnBkZmFpZD0iaHR0cDovL3d3dy5haWltLm9yZy9wZGZhL25zL2lkLyI+CjxwZGZhaWQ6cGFydD4zPC9wZGZhaWQ6cGFydD48cGRmYWlkOmNvbmZvcm1hbmNlPkE8L3BkZmFpZDpjb25mb3JtYW5jZT48L3JkZjpEZXNjcmlwdGlvbj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAKICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIAogICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCjwvcmRmOlJERj48L3g6eG1wbWV0YT48P3hwYWNrZXQgZW5kPSJ3Ij8+DQplbmRzdHJlYW0NCmVuZG9iag0KMjkgMCBvYmoNCjw8L0Rpc3BsYXlEb2NUaXRsZSB0cnVlPj4NCmVuZG9iag0KeHJlZg0KMCAzMA0KMDAwMDAwMDAwMCA2NTUzNSBmDQowMDAwMDAwMDE3IDAwMDAwIG4NCjAwMDAwMDAzNjIgMDAwMDAgbg0KMDAwMDAwMDQxOCAwMDAwMCBuDQowMDAwMDAwNjk1IDAwMDAwIG4NCjAwMDAwMDExMDcgMDAwMDAgbg0KMDAwMDAwMTI0MiAwMDAwMCBuDQowMDAwMDAxMjcwIDAwMDAwIG4NCjAwMDAwMDE0MzIgMDAwMDAgbg0KMDAwMDAwMTUwNSAwMDAwMCBuDQowMDAwMDAxNzUxIDAwMDAwIG4NCjAwMDAwMDE4MDUgMDAwMDAgbg0KMDAwMDAwMTg1OSAwMDAwMCBuDQowMDAwMDAyMDMzIDAwMDAwIG4NCjAwMDAwMDIyODAgMDAwMDAgbg0KMDAwMDAwMjU3MCAwMDAwMCBuDQowMDAwMDAyNjc5IDAwMDAwIG4NCjAwMDAwMDI5NzIgMDAwMDAgbg0KMDAwMDAwMzAxMyAwMDAwMCBuDQowMDAwMDAzMDQ2IDAwMDAwIG4NCjAwMDAwMDMxMTggMDAwMDAgbg0KMDAwMDAwMzE5NiAwMDAwMCBuDQowMDAwMDAzMjI2IDAwMDAwIG4NCjAwMDAwMDM2MzggMDAwMDAgbg0KMDAwMDAxMjIxMiAwMDAwMCBuDQowMDAwMDEzNzU4IDAwMDAwIG4NCjAwMDAwMTM5NDUgMDAwMDAgbg0KMDAwMDAxMzk3MiAwMDAwMCBuDQowMDAwMDE2NjQ1IDAwMDAwIG4NCjAwMDAwMTk5ODYgMDAwMDAgbg0KdHJhaWxlcg0KPDwvU2l6ZSAzMC9Sb290IDEgMCBSL0luZm8gMTQgMCBSL0lEWzxCQjBENTkyQ0IzQjAyNzQzODZFRUMzODhERTAxNTM4QT48QkIwRDU5MkNCM0IwMjc0Mzg2RUVDMzg4REUwMTUzOEE+XSA+Pg0Kc3RhcnR4cmVmDQoyMDAzMQ0KJSVFT0Y="

Instance: Observation-InfectiousContact-Measles
InstanceOf: CZ_ObservationInfectiousContactHdr
Usage: #example
Title: "Infekční kontakt – spalničky"
Description: "Pacient byl v kontaktu s osobou nakaženou spalničkami"
* id = "f2015c80-9091-4b6f-8d66-97f49d6434b2"
* status = #final
* category[exposureClass].coding[0].system = "http://terminology.hl7.org/CodeSystem/v3-ActClass"
* category[exposureClass].coding[0].code = #AEXPOS
* category[exposureClass].coding[0].display = "acquisition exposure"
* code = $v3-ParticipationType#EXPAGNT "ExposureAgent"
* subject = Reference(urn:uuid:f21b91f9-5e7a-47b9-a884-cbc720257590) 
* performer = Reference(urn:uuid:77fa78d2-154c-4d38-824e-3c38b39c6a42)
* effectiveDateTime = "2026-03-25"
* valueCodeableConcept.coding[0].system = $mkn-10
* valueCodeableConcept.coding[0].code = #B05
* valueCodeableConcept.coding[0].display = "Spalničky"
* note[0].text = "Kontakt proběhl ve školním kolektivu během vyučování."