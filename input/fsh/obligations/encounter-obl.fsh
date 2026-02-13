Profile: CZ_EncounterObligationsAmb
Parent: CZ_EncounterAmb
Id: cz-encounter-obl-amb
Title: "Encounter Obligations (AMB CZ)"
Description: "This profile defines the obligations for the CZ_EncounterAmb profile used in the Amb CZ project."

// Creator Obligations L2 ============>
* reasonCode insert OblCreator(#SHOULD:able-to-populate,L2)
* extension[note] insert OblCreator(#SHOULD:populate-if-known,L2)
* period insert OblCreator(#SHOULD:able-to-populate,L2)

// Consumer obligations L2

* reasonCode insert OblConsumer(#SHOULD:display,L2)
* extension[note] insert OblConsumer(#SHOULD:display,L2)
* period insert OblConsumer(#SHOULD:display,L2)

// Creator Obligations L3 ============>
* reasonCode insert OblCreator(#SHALL:able-to-populate,L3)
* participant insert OblCreator(#SHALL:able-to-populate,L3)
* priority insert OblConsumer(#SHALL:display,L3)
* extension[note] insert OblCreator(#SHALL:populate-if-known,L3)
* period insert OblCreator(#SHALL:able-to-populate,L3)

// Consumer obligations L3
* reasonCode insert OblConsumer(#SHALL:display,L3)
* participant insert OblConsumer(#SHALL:display,L3)
* priority insert OblConsumer(#SHALL:display,L3)
* extension[note] insert OblConsumer(#SHALL:display,L3)
* period insert OblConsumer(#SHALL:display,L3)