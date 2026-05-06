# Publishing Pipeline Map

## Purpose

This graph shows the public-safe publishing pipeline for AI-assisted research artifacts.

## Mermaid Diagram

```mermaid
flowchart TD
  draft["Draft artifact"]:::draft
  checklist["Publishing checklist"]:::control
  cite["Citation check"]:::control
  disclose["AI assistance disclosure"]:::control
  approve["Human publishing approval"]:::authority
  publicRepo["Public repository or post"]:::public
  proof["Future proof link<br/>review-required"]:::draft
  archive["Private archive<br/>not public"]:::private

  draft --> checklist
  checklist --> cite
  cite --> disclose
  disclose --> approve
  approve -->|approved public| publicRepo
  approve -->|not public| archive
  publicRepo --> proof

  classDef authority fill:#eaf7ff,stroke:#027a9d,stroke-width:2px,color:#083344;
  classDef public fill:#edf7ed,stroke:#3a7d3a,color:#1f3d1f;
  classDef control fill:#fff7ed,stroke:#c2410c,color:#431407;
  classDef draft fill:#f4edff,stroke:#6941c6,color:#2f1b63;
  classDef private fill:#f0f2f5,stroke:#5d6673,color:#20242a;
```

## Interpretation Notes

- The publishing checklist runs before approval.
- Public proof linking remains review-required even after publication.
- Private archive material is not represented in public detail.

## Boundary Notes

- Publication cannot include private Foundation operations, donor data, student data, volunteer data, customer data, private training corpora, secrets, sensitive infrastructure details, or sealed IP.
- This pipeline does not automate posting or account updates.

## Follow-Up Actions

- Add publication records only when public artifacts exist.
- Keep monetization references draft/review-required until Alexandra review.
