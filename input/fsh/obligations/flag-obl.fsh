Profile: CZ_FlagObligationsAmb
Parent: CZ_FlagAmb
Id: cz-flag-obl-amb
Title: "Flag Obligations (AMB CZ)"
Description: "This profile defines the obligations for the CZ_FlagAmb profile used in the Amb CZ project."

// Creator Obligations L2 ============>
* code.text insert OblCreator(#SHOULD:able-to-populate,L2)
* code insert OblCreator(#SHOULD:populate-if-known,L2)
* author insert OblCreator(#SHOULD:populate-if-known,L2)
* text insert OblCreator(#SHOULD:able-to-populate,L2)
* extension[flagPriorityExt] insert OblCreator(#SHOULD:populate-if-known,L2)
* period insert OblCreator(#SHOULD:able-to-populate,L2)

// Consumer obligations L2
* code.text insert OblConsumer(#SHOULD:display,L2)
* code insert OblConsumer(#SHOULD:display,L2)
* author insert OblConsumer(#SHOULD:display,L2)
* text insert OblConsumer(#SHOULD:display,L2)
* extension[flagPriorityExt] insert OblConsumer(#SHOULD:display,L2)
* period insert OblConsumer(#SHOULD:display,L2)

// Creator Obligations L3 ============>
* code.text insert OblCreator(#SHALL:able-to-populate,L3)
* code insert OblCreator(#SHALL:populate-if-known,L3)
* author insert OblCreator(#SHALL:populate-if-known,L3)
* text insert OblCreator(#SHALL:able-to-populate,L3)
* extension[flagPriorityExt] insert OblCreator(#SHALL:populate-if-known,L3)
* period insert OblCreator(#SHALL:able-to-populate,L3)

// Consumer obligations L3
* code.text insert OblConsumer(#SHALL:display,L3)
* code insert OblConsumer(#SHALL:display,L3)
* author insert OblConsumer(#SHALL:display,L3)
* text insert OblConsumer(#SHALL:display,L3)
* extension[flagPriorityExt] insert OblConsumer(#SHALL:display,L3)
* period insert OblConsumer(#SHALL:display,L3)