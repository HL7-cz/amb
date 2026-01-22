Logical: LogEnMedicationSummaryCz
Id: MedicationSummaryCz
Title: "A.2.8 - Medication Summary"
Description: """Medication Summary"""

* status 1..1 code "A.2.9.2.1 Stav" """Stav identifikuje změny v medikaci v průběhu ambulantního kontaktu. Položka je důležitá pro rozlišení medikace ukončené, změněné či nově podávané v průběhu ambulantního kontaktu."""
* reason 0..1 CodeableConcept "A.2.9.2.2 Indikace" """Důvod medikace. Důvod může být popsán textem případně odkazem na zdravotní důvod (zdravotní problém v seznamu problémů)."""
* changeReason 0..1 CodeableConcept "A.2.9.2.3 Důvod změny medikace" """Důvod změny medikace vyjádřený textem případně kódem (např. nevhodné/nedostatečné dávkování, interakce léků a pod.)."""
* productCode 1..1 Identifier "A.2.9.2.4 Kód SUKL" """Kód léčiva dle databáze SÚKL."""
* productName 1..1 string "A.2.9.2.5 Název léčivého přípravku" """Registrovaný název léčiva dle databáze léčivých přípravků, nebo IPS Absent and Unknown."""
* activeIngredients 0..* CodeableConcept "A.2.9.2.6 Aktivní látky" """Seznam aktivních látek v léčivu odvozený od záznamu HVLP nebo IVLP přípravku v databázi SUKL (DLP). Aktivní látky jsou uváděny názvem a případně také kódem ATC či IDMP dle registru substancí SRS."""
* strength 0..* Quantity "A.2.9.2.7 Síla" """Síla aktivní léčivé látky obsažené v léčivém přípravku. Síla se vyjadřuje ve vztahu k jednotce podání. Např. 500mg v tabletě."""
* dosageForm 0..1 CodeableConcept "A.2.9.2.8 Forma léčiva" """Léková forma obsažená v balení vyjádřená kódem. Např. sirup, tableta apod."""
* dosingInstructions 0..* string "A.2.9.2.9 Dávkování" """Frekvence a počet jednotek podání volným textem nebo formalizovaně."""
* route 0..1 CodeableConcept "A.2.9.2.10 Cesta podání" """Cesta podání."""
* period 0..1 Period "A.2.9.2.11 Období podávání" """Časový interval kdy pacientovi byla, případně nebyla medikace podávána."""
* duration 1..1 Quantity "A.2.9.2.12 Délka vybavení" """Počet dnů na který byl pacient vybaven léčivem. Pokud pacient nebyl vybaven, lékař zaznamená hodnotu 0."""