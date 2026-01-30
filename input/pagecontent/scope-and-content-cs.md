### Přehled

### Dataset

Ambulantní zpráva (AMB) má dvě hlavní složky:

- Hlavička a
- tělo.

**Hlavička** obsahuje základní administrativní a identifikační údaje o pacientovi, poskytovatelích zdravotní péče a dalších klíčových účastnících péče o pacienta.

**Tělo** obsahuje základní klinické údaje týkající se návštěvy pacienta, jeho léčby a plánu léčby.

{% include MindmapAmbReportCz.svg %}

#### Hlavička dokumentu

Komponenta Hlavičky ambulantní zprávy z nemocnice poskytuje dokumentaci pro:

- **Identifikace pacienta:** Obsahuje důležité identifikační údaje, jako je _jméno_, _příjmení_, _datum narození_ a _identifikační číslo pacienta ve zdravotnictví_. Zahrnuje také _národnost_, _pohlaví_ a _zemi příslušnosti pacienta_.
- **Kontaktní údaje týkající se pacienta/subjektu:** Zahrnují _adresu pacienta_ a _telekomunikační kontaktní údaje_ (např. telefonní čísla a e-mailové adresy). Může také zahrnovat údaje o _preferovaném zdravotnickém pracovníkovi_ (jméno, identifikátor, role, organizace).
- **Informace o zdravotním pojištění:** Klíčové údaje týkající se zdravotního pojištění, včetně _kódu pojišťovny_, _jména zdravotní pojišťovny_ a _čísla zdravotní pojišťovny pacienta_.
- **Příjemce dokumentu:** Označuje zamýšleného příjemce ambulantní zprávy z nemocnice. Zahrnuje _jméno příjemce_, _organizaci_, _adresu_ a _telefonní údaje_.
- **Autor:** Dokumentuje _autora zprávy_, včetně jeho identifikátoru (např. čísla licence), jména a organizačních údajů. Autor je odpovědný za podepsání obsahu zprávy.
- **Ověřil:** zdravotnický pracovník, který ověřuje obsah zprávy. Obsahuje _identifikátor atestujícího_, _jméno_, _organizaci_ a _datum a čas atestace_.
- **Zodpovídá:** Osoba, která přebírá právní odpovědnost za zprávu. Obsahuje _identifikátor_, _jméno_, _organizaci_ a _datum ověření_.
- **Metadata dokumentu:** Obsahuje jedinečný _identifikátor_ dokumentu, _typ_ a metadata, jako je _datum a čas_ vytvoření nebo změny, která zajišťují správné sledování zprávy.

{% include MindmapHeaderCz.svg %}

#### Tělo dokumentu

Součást těla zprávy o ambulantní z nemocnice obsahuje:

- **Dříve vyslovená přání:** Právní dokumenty, jako jsou závěti nebo příkazy DNR, kterými se řídí rozhodnutí o léčbě.
- **Urgentní informace:** Důležitá lékařská upozornění, jako jsou alergie nebo jiné kritické stavy pacienta.
- **Údaje o ambulantním kontaktu:** Podrobnosti o příjmu, včetně data vyšetření, důvod ambulatního kontaktu a identifikace poskytovatele ambulantní služby.
- **Stav při přijetí:** Tato sekce má za cíl výstižně popsat klinický stav pacienta s důrazem na patologické projevy. Má zásadní význam zejména tehdy, pokud je důvodem ambulantního kontaktu akutní stav nebo zhoršení stávajícího základního onemocnění  
  Stav při přijetí by měl uváděn výjimečně, pouze pokud bude mít význam pro zajištění kontinuity péče.
- **Anamnéza pacienta:** Komplexní záznam anamnézy pacienta.
- **Průběh ambulantního kontaktu** Průběh pacienta během návštěvy, včetně léčby a zákroků.
- **Souhrn medikace:** Souhrnná informace o medikaci, doporučené na období po propuštění, s vyznačením, zda se jedná o medikaci pokračující, změněnou či nově zahájenou. Přehled je oproti dosavadním zvyklostem doplněn o medikaci ukončenou.
- **Doporučení:** Plán následné péče a doporučení terapie.

{% include MindmapBodyCz.svg %}
