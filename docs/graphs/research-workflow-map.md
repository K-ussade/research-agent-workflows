# Research Workflow Map

## Purpose

This graph shows the supervised AI-assisted research workflow from question intake through publication review.

## Mermaid Diagram

```mermaid
flowchart LR
  human["Human editorial reviewer"]:::authority

  subgraph workflow["Research workflow"]
    question["Research question"]:::public
    sources["Source review"]:::control
    citations["Citation log"]:::control
    brief["Research brief draft"]:::draft
    editorial["Editorial review"]:::authority
    publish["Public-safe publication"]:::public
  end

  subgraph blocked["Blocked material"]
    privateNotes["Private research notes"]:::private
    scraped["Scraped copyrighted content"]:::sealed
    sealedIP["Sealed IP and sensitive data"]:::sealed
  end

  question --> sources
  sources --> citations
  citations --> brief
  brief --> editorial
  human --> editorial
  editorial --> publish
  privateNotes -. excluded .-> workflow
  scraped -. blocked .-> workflow
  sealedIP -. blocked .-> workflow

  classDef authority fill:#eaf7ff,stroke:#027a9d,stroke-width:2px,color:#083344;
  classDef public fill:#edf7ed,stroke:#3a7d3a,color:#1f3d1f;
  classDef control fill:#fff7ed,stroke:#c2410c,color:#431407;
  classDef draft fill:#f4edff,stroke:#6941c6,color:#2f1b63;
  classDef private fill:#f0f2f5,stroke:#5d6673,color:#20242a;
  classDef sealed fill:#fdecec,stroke:#b42318,stroke-width:2px,color:#5f1711;
```

## Interpretation Notes

- AI assistance may support draft preparation, source organization, and citation formatting.
- Human editorial review controls publication.
- Source review and citation logs are required before factual claims are reused.

## Boundary Notes

- Private research notes, scraped copyrighted content, private Foundation operations, donor data, student data, customer data, and sealed YOSO-YAi LLC IP are excluded.
- Publication is allowed only after review and public-safe boundary checks.

## Follow-Up Actions

- Add workflow variants only when their source and editorial gates are documented.
- Keep disclosure templates synchronized with the workflow.
