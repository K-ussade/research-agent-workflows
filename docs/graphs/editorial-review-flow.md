# Editorial Review Flow

## Purpose

This graph shows the editorial gates required before AI-assisted research output can be published or linked as proof.

## Mermaid Diagram

```mermaid
flowchart LR
  draft["Brief draft<br/>Draft / review-required"]:::draft
  sourceGate["Source gate"]:::control
  citationGate["Citation gate"]:::control
  boundaryGate["Boundary gate"]:::control
  disclosureGate["Disclosure gate"]:::control
  approval["Human editorial approval"]:::authority
  publish["Published artifact"]:::public
  returned["Returned for revision"]:::draft
  blocked["Blocked or escalated"]:::sealed

  draft --> sourceGate
  sourceGate --> citationGate
  citationGate --> boundaryGate
  boundaryGate --> disclosureGate
  disclosureGate --> approval
  approval -->|approved| publish
  approval -->|changes needed| returned
  approval -->|unsafe| blocked
  returned --> draft

  classDef authority fill:#eaf7ff,stroke:#027a9d,stroke-width:2px,color:#083344;
  classDef public fill:#edf7ed,stroke:#3a7d3a,color:#1f3d1f;
  classDef control fill:#fff7ed,stroke:#c2410c,color:#431407;
  classDef draft fill:#f4edff,stroke:#6941c6,color:#2f1b63;
  classDef sealed fill:#fdecec,stroke:#b42318,stroke-width:2px,color:#5f1711;
```

## Interpretation Notes

- Editorial approval is a human decision.
- AI output remains draft material until review is complete.
- Boundary and disclosure checks happen before publication.

## Boundary Notes

- Unsupported claims, private notes, private prompts, private model outputs, and sensitive data are blocked or removed before approval.
- Publication status must not be claimed until a public artifact exists.

## Follow-Up Actions

- Keep the editorial review template aligned with this flow.
- Add claim-evidence fields before using research briefs as portfolio proof.
