On the following page, you will find notes on the implementation of the ambulatory report.  
They cover the composition creation and the population of this profile with corresponding data.

### Overview

### Chapter Overview

| Chapter                   | Purpose                                                                 | Output / Artifact           |
| ------------------------- | ----------------------------------------------------------------------- | --------------------------- |
| **Logical Model**         | Clinical structure of the document content                              | Table of elements (CZ/EN)   |
| **Mapping**               | Relationship between logical model and FHIR elements                    | Mapping table               |
| **FHIR Profiles**         | Formal constraints, cardinalities, references, and terminology bindings | StructureDefinition         |
| **Obligations**           | Functional and display requirements                                     | ObligationDefinition        |
| **Example Instances**     | Reference examples and valid outputs                                    | Bundle and linked Resources |
| **Recommended Procedure** | Implementation and testing steps                                        | Workflow within the IG      |

---

## Logical Model

## Mapping (Logical Model → FHIR)

### Purpose

### Mapping Principles

### Mapping Overview

### Notes on Local Adaptations

## FHIR Profiles

### Profile Structure

### Cardinality

### Terminology Bindings

## Obligations

### Overview and Terminology

### Compliance Levels (L1–L3)

- **L1** – _Unstructured document_: mandatory document metadata + human-readable PDF output.
- **L2** – _Structured sections_: document divided into identifiable sections, primarily narrative content.
- **L3** – _Structured + coded_: same sections as L2; selected information **SHALL** be formalized and coded.

### Actors

- **L1 Creator** – creates L1 document (submits to consumer / repository).
- **L1 Consumer** – receives/loads and uses L1 document.
- **L2 Creator** – creates L2 document (sections, narrative).
- **L2 Consumer** – processes L2 document.
- **L3 Creator** – creates L3 document (structured + coded elements).
- **L3 Consumer** – processes L3 document including coded elements.

### Types of Obligations

- **Creator obligations** – requirements for **document creation** (system/UX behavior).
  - Example: The creator **SHALL** allow selection and recording of author/attester of the discharge summary.
- **Consumer obligations** – requirements for **display** in viewers/consumers.
  - Example: The consumer **SHALL** display `Composition.title`, `Composition.date`, and `Composition.author`; document language **MAY** be omitted.

### Relation to Profiles and Testing

Each obligation is linked to a specific profile or profile group it extends.  
Obligations are applied in validation test scenarios – e.g., verifying correct section display or the existence of required functions during document creation.

## Example Instances

**Purpose:**  
Examples serve as **reference implementations**, demonstrating what **fully valid outputs** look like for each profile and data structure maturity level (**L1–L3**).  
They represent not only a `Bundle` example but a **complete set of interlinked FHIR resources** forming a realistic clinical document with all necessary references.

### Example Content and Structure

Each example:

- corresponds to a specific profile,
- reflects defined obligations and profile cardinalities,
- uses appropriate code systems and terminology bindings (LOINC, SNOMED CT, ICD-10, UCUM),
- validates successfully against the respective profile within the Implementation Guide.

### Data Structure Maturity Levels

| Level  | Example Content           | Structure                                            | Usage                    |
| ------ | ------------------------- | ---------------------------------------------------- | ------------------------ |
| **L1** | PDF + metadata            | `Composition`, `DocumentReference`                   | Minimal interoperability |
| **L2** | Sections + narrative text | `Composition.section`                                | Structured narrative     |
| **L3** | Coded entries             | `Composition.section` + `Condition`, `Medication`, … | Machine interoperability |

### 6.3 Typical Resource Set for a Ambulatory Report Example

- `Composition` – document header and sections
- `Patient` – patient identification
- `Encounter` – ambulatory episode
- `Condition` – diagnoses (including principal diagnosis)
- `Procedure` – significant procedures and interventions
- `MedicationStatement`, `MedicationRequest`, `MedicationDispense` – treatment information
- `AllergyIntolerance` – allergies and intolerances
- `Observation` – key findings, results, physiological measurements
- `DocumentReference` – embedded PDF/narrative rendition
- Additional related resources per profile (e.g., `Consent`, `Organization`, `PractitionerRole`)

### Example Objectives

Examples are intended to serve:

- **Implementers** – as reference models of valid instances for testing,
- **Creators and Consumers** (L1–L3) – as illustrations of expected data scope,
- **Test Scenarios** – as input for automated validation against profiles and obligations.

### 6.5 Example Validation

Each example must validate against the corresponding `StructureDefinition` and contain correctly linked references among resources.  
Validation can be performed using **FHIR Validator**, IG Publisher, or another validation framework.

> It is recommended to include validation within the test pipeline (e.g., CI/CD) as a compliance check with the profiles.
