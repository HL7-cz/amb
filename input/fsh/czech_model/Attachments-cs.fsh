Logical: LogCsAttachmentsCz
Id: logAttachmentsCz
Title: "A.4 - Ostatní přílohy"
Description: """Ostatní přílohy"""

* typObsahu 0..1 CodeableConcept "A.4.1 Typ obsahu" """Typ obsahu - je  požadován MIME typ"""
* jazyk 0..1 CodeableConcept "A.4.2 Jazyk obsahu" """Jazyk obsahu - je požadována hodnata z HL7 valueset Languages"""
* data 1..1 base64Binary "A.4.3 Data obsahu" """Data v base64"""
* url 0..1 url "A.4.4 URL obsahu" """Uri kde lze data nalézt"""
* nazev 1..1 string "A.4.5 Název obsahu" """Titulek, který bude zobrazen před daty"""
* vytvoreni 0..1 dateTime "A.4.6 Datum vytvoření" """Datum, kdy byl obsah poprvé vytvořen"""
