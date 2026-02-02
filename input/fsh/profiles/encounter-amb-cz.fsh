Profile: CZ_EncounterAmb
Parent: CZ_Encounter
Id: cz-encounter-ambulatory
Title: "Encounter - Ambulatory (CZ)"
Description: "Ambulatory encounter specialization of the Czech national Encounter profile (CZ_Encounter) for outpatient/ambulatory reports."

* insert SetFmmandStatusRule (1, draft)

* ^experimental = false

// --- A.2.3.1 Typ ambulantního kontaktu
// cz-core má Encounter.class 1..1; tady ho zafixujeme na AMB
* class 1..1
* class from $v3-ActEncounterCode (required)
* class ^short = "Classification of encounter (recommended: AMB for ambulatory contact)."


// --- A.2.3.2 Poznámka
// FHIR je 0..*; v profilu to můžeš zúžit na 0..1
//* note 0..1
* extension contains CZ_ExtEncounterNote named note 0..1

// --- A.2.3.3 Datum a čas vyšetření (Encounter.period)
// Doporučení: period.start povinný, end volitelný
* period 1..1
* period.start 1..1
* period.end 0..1

// --- A.2.3.4.1 Urgentnost (akutní / plánovaný)
* priority 0..1
* priority from $v3-AdmissionUrgencyAmb (required)  // <— pokud máte VS, odkomentuj a uprav canonical

// --- A.2.3.4.x Doporučující lékař (referrer)
// Slicing participant podle participant.type (open)
* participant ^slicing.discriminator.type = #value
* participant ^slicing.discriminator.path = "type"
* participant ^slicing.rules = #open
* participant ^slicing.ordered = false

* participant contains referrer 0..1

* participant[referrer].type 1..1
// Doporučující/odesílající – v3 ParticipationType
* participant[referrer].type = $v3-ParticipationType#REF "referrer" (exactly)

// V Encounteru je reference
* participant[referrer].individual 1..1
* participant[referrer].individual only Reference(CZ_PractitionerRoleCore)

// --- A.2.3.5 Důvod ambulantního kontaktu
* reasonCode 0..*
* reasonCode.text 0..1
// pokud chcete omezit coding systémy (ICD-10 / Orpha), dělejte to přes VS nebo invarianty;
// ve FHIRu se to typicky řeší VS na reasonCode, ne pevnými system=... (kvůli mixu text+kód).

// --- A.2.3.6 Poskytovatel ambulantní služby s od–do
* location 0..*
* location.location 1..1
* location.location only Reference(CZ_LocationCore)
* location.period 1..1
* location.period.start 1..1
* location.period.end 0..1

// serviceProvider dle CZ_Encounter (1..1 Reference(Organization (CZ core))).


Extension: CZ_ExtEncounterNote
Id: cz-ext-encounter-note
Title: "Encounter note (CZ)"
Description: "Free-text note related to the encounter."

* ^context.type = #element
* ^context.expression = "Encounter"

* value[x] 1..1
* value[x] only string
