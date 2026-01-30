### Overview

### Dataset

Outpatient Encounter Report (OER) has two main components:

- Header and
- body.

**Header** contains basic administrative and identification data about the patient, healthcare providers and other key participants in the patient's care.

**Body** contains basic clinical data related to the patient's visit, treatment and treatment plan.

{% include MindmapAmbReportEn.svg %}

#### Header

The Header component of the outpatient report from the hospital provides documentation for:

- **Identification of the patient/subject:** This includes critical identification information like the patient's _given name_, _family name_, _date of birth_, and _national healthcare patient ID_. It also covers _nationality_, _gender_, and the patient’s _country of affiliation_.
- **Patient/subject related contact information:** This involves the patient’s _address_ and _telecommunication contact details_ (e.g., phone numbers and email addresses). It may also include details of a _preferred healthcare professional_ (name, identifier, role, organization).
- **Health insurance and payment information:** Key data related to health insurance, including the _insurance code_, _name of the health insurance provider_, and the _patient's health insurance number_.
- **Information recipient:** Refers to the intended recipient of the outpatient encounter report. This includes _recipient's name_, _organization_, _address_, and _telecom details_.
- **Author:** Documents the _author of the report_, including their identifier (e.g., license number), name, and organizational information. The author is responsible for signing off on the content of the report.
- **Attester:** The healthcare professional who verifies the content of the report. This includes the _attester’s identifier_, _name_, _organization_, and the _date and time of attestation_.
- **Legal authenticator:** The person taking legal responsibility for the report. Includes the _identifier_, _name_, _organization_, and _date of authentication_.
- **Document metadata:** Contains the document's unique _identifier_, _type_, and metadata such as the _date and time_ of creation or modification, ensuring proper tracking of the report.

{% include MindmapHeaderEn.svg %}

#### Body

The Outpatient Encounter Report Body component includes:

- **Advance Directives:** Legal documents, such as wills or DNR orders, that guide treatment decisions.
- **Alerts:** Important medical alerts like allergies or other critical patient conditions.
- **Encounter:** Details of the visit, including the examination date, reason for the outpatient contact, and identification of the outpatient service provider.
- **Clinical Status at Presentation:** This section aims to concisely describe the patient's clinical status with emphasis on pathological manifestations. It is particularly important when the reason for the outpatient contact is an acute condition or deterioration of an existing underlying disease.
  The status upon admission should be documented exceptionally, only if it will be important for ensuring continuity of care.
- **Patient History:** Comprehensive record of the patient's medical history and anamnesis.
- **Encounter Summary** The course of the patient during the visit, including treatment and procedures.
- **Medication Summary:** A consolidated overview of medications recommended for the post-discharge period, specifying whether the medication is continued, modified, newly initiated, or discontinued. In contrast to previous practice, this overview also includes discontinued medications.
- **Plan of Care:** Follow-up care plan and recommendations.

{% include MindmapBodyEn.svg %}
