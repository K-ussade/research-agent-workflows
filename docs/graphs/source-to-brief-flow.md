# Source To Brief Flow

## Purpose

This graph shows how reviewed sources become citation-backed research brief claims.

## Mermaid Diagram

```mermaid
flowchart TD
  candidate["Candidate source"]:::draft
  classify["Access and boundary classification"]:::control
  review["Source review"]:::authority
  log["Citation log entry"]:::control
  claim["Draft claim"]:::draft
  brief["Research brief"]:::public
  reject["Rejected or private source"]:::private

  candidate --> classify
  classify -->|public-safe| review
  classify -->|private, sealed, or unsafe| reject
  review -->|approved or limited| log
  review -->|rejected| reject
  log --> claim
  claim --> brief

  classDef authority fill:#eaf7ff,stroke:#027a9d,stroke-width:2px,color:#083344;
  classDef public fill:#edf7ed,stroke:#3a7d3a,color:#1f3d1f;
  classDef control fill:#fff7ed,stroke:#c2410c,color:#431407;
  classDef draft fill:#f4edff,stroke:#6941c6,color:#2f1b63;
  classDef private fill:#f0f2f5,stroke:#5d6673,color:#20242a;
```

## Interpretation Notes

- Candidate sources do not support claims until reviewed.
- Rejected, private, sealed, or unsafe sources do not enter public research briefs.
- Citation log entries connect claims to reviewed sources.

## Boundary Notes

- Paywalled or copyrighted content may be cited when appropriate, but copied text is not stored here.
- Private or sealed sources are excluded from public examples and public briefs.

## Follow-Up Actions

- Add citation examples only when source metadata is public-safe.
- Review quote handling before adding any excerpt pattern.
