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

/// Composition ///
Instance: OutpatientComposition-Mracena-L3
InstanceOf: CZ_CompositionAmb
Description: "Example Composition for Outpatient Report for patient Mrakomorová Mračena - L3"
Usage: #example
* id = "418da506-19c3-4e00-94d5-31a15f8c7860"
* status = #final
* type.coding[0].system = $loinc
* type.coding[0].code = #34108-1
* type.coding[0].display = "Outpatient Note"
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
* section[sectionPatientHistory].section[InfectiousContacts].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Pacient v posledních měsících neměl žádné známé kontakty s osobami trpícími infekčním onemocněním.</div>"

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
* section[sectionAttachments].text.div = "<div xmlns=\"http://www.w3.org/1999/xhtml\">Neobsahuje žádné přílohy.</div>"


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