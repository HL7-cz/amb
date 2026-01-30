Logical: LogCzMedicationSummaryCz
Id: logMedicationSummaryCz
Title: "A.2.8 - Souhrn medikace"
Description: """Souhrnná informace o medikaci, doporučené na období po propuštění, s vyznačením, zda se jedná o medikaci pokračující, změněnou či nově zahájenou. """

* stav 1..1 code "A.2.9.2.1 Stav" """Stav identifikuje změny v medikaci v průběhu ambulantního kontaktu. Položka je důležitá pro rozlišení medikace ukončené, změněné či nově podávané v průběhu ambulantního kontaktu."""
* indikace 0..1 CodeableConcept "A.2.9.2.2 Indikace" """Důvod medikace. Důvod může být popsán textem případně odkazem na zdravotní důvod (zdravotní problém v seznamu problémů)."""
* duvodZmeny 0..1 CodeableConcept "A.2.9.2.3 Důvod změny medikace" """Důvod změny medikace vyjádřený textem případně kódem (např. nevhodné/nedostatečné dávkování, interakce léků a pod.)."""
* suklKode 1..1 Identifier "A.2.9.2.4 Kód SUKL" """Kód léčiva dle databáze SÚKL."""
* nazevLeku 1..1 string "A.2.9.2.5 Název léčivého přípravku" """Registrovaný název léčiva dle databáze léčivých přípravků, nebo IPS Absent and Unknown."""
* aktivniLatky 0..* CodeableConcept "A.2.9.2.6 Aktivní látky" """Seznam aktivních látek v léčivu odvozený od záznamu HVLP nebo IVLP přípravku v databázi SUKL (DLP). Aktivní látky jsou uváděny názvem a případně také kódem ATC či IDMP dle registru substancí SRS."""
* sila 0..* Quantity "A.2.9.2.7 Síla" """Síla aktivní léčivé látky obsažené v léčivém přípravku. Síla se vyjadřuje ve vztahu k jednotce podání. Např. 500mg v tabletě."""
* forma 0..1 CodeableConcept "A.2.9.2.8 Forma léčiva" """Léková forma obsažená v balení vyjádřená kódem. Např. sirup, tableta apod."""
* davkovani 0..* string "A.2.9.2.9 Dávkování" """Frekvence a počet jednotek podání volným textem nebo formalizovaně."""
* cestaPodani 0..1 CodeableConcept "A.2.9.2.10 Cesta podání" """Cesta podání."""
* obdobiPodani 0..1 Period "A.2.9.2.11 Období podávání" """Časový interval kdy pacientovi byla, případně nebyla medikace podávána."""
* delkaVybaveni 1..1 Quantity "A.2.9.2.12 Délka vybavení" """Počet dnů na který byl pacient vybaven léčivem. Pokud pacient nebyl vybaven, lékař zaznamená hodnotu 0."""
