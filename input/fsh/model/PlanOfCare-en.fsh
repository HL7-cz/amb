Logical: LogEnPlanOfCareCz
Id: PlanOfCareCz
Title: "A.2.9.1 - Plan of Care"
Description: """Plan of Care"""

* title 0..1 string "A.2.9.1.1 Název" """...Název plánu péče, např. 'Plán péče po endoprotéze kyčelního kloubu'..."""
* addresses 0..* CodeableConcept "A.2.9.1.2 Řeší" """...Onemocnění či stavy, na které se plán vztahuje. Vybere lékař ze seznamu zdravotních problémů uvedených v diagnostickém souhrnu..."""
* description 0..1 string "A.2.9.1.3 Popis doporučení" """...Popis typu a povahy plánu péče..."""
* planPeriod 0..1 Period "A.2.9.1.4 Období" """...Období, ve kterém by měl být plán péče realizován..."""
* details 0..* string "A.2.9.1.5 Další podrobnosti plánu" """...Další strukturované informace popisující cíle plánu, složení terapeutického týmu apod..."""
* activity 0..* Base "A.2.9.1.6 Aktivity" """...Jednotlivé aktivity plánu..."""
  * kind 0..1 CodeableConcept "A.2.9.1.6.1 Typ aktivity" """...Popis aktivity léčebného plánu. Např. doporučená medikace, požadovaná vyšetření, požadavky na komunikaci, dietní doporučení, režimová opatření, plánované kontroly apod..."""
  * description 0..1 string "A.2.9.1.6.2 Popis aktivity" """...Detailní popis plánované aktivity volným textem..."""
  * attribute 0..* Base "A.2.9.1.6.3 Specifické atributy" """...Specifické atributy pro jednotlivé typy aktivit..."""
