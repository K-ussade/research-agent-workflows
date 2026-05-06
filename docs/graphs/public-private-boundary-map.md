# Public Private Boundary Map

## Purpose

This graph shows what belongs in the public research workflow repo and what must remain private or sealed.

## Mermaid Diagram

```mermaid
flowchart LR
  subgraph public["Public repository"]
    standards["Workflow standards"]:::public
    templates["Templates"]:::public
    diagrams["Mermaid diagrams"]:::public
    synthetic["Synthetic examples"]:::synthetic
  end

  subgraph private["Private research context"]
    notes["Private research notes"]:::private
    prompts["Private prompts and model outputs"]:::private
    drafts["Unpublished sensitive drafts"]:::private
  end

  subgraph sealed["Blocked or sealed"]
    scraped["Scraped copyrighted content"]:::sealed
    secrets["Credentials, tokens, secrets"]:::sealed
    sealedIP["Sealed YOSO-YAi LLC IP"]:::sealed
  end

  standards --> templates
  templates --> synthetic
  notes -. excluded .-> public
  prompts -. excluded .-> public
  drafts -. excluded .-> public
  scraped -. blocked .-> public
  secrets -. blocked .-> public
  sealedIP -. blocked .-> public

  classDef public fill:#edf7ed,stroke:#3a7d3a,color:#1f3d1f;
  classDef synthetic fill:#f4edff,stroke:#6941c6,color:#2f1b63;
  classDef private fill:#f0f2f5,stroke:#5d6673,color:#20242a;
  classDef sealed fill:#fdecec,stroke:#b42318,stroke-width:2px,color:#5f1711;
```

## Interpretation Notes

- Public workflow artifacts are reusable process documents.
- Private research details and prompts do not belong in the public repo.
- Scraped copyrighted content is blocked.

## Boundary Notes

- Donor data, student data, volunteer private data, customer data, private Foundation operations, exact sensitive infrastructure locations, private training corpora, secrets, tokens, and sealed YOSO-YAi LLC IP are excluded.
- Synthetic examples must not be converted into implied real research outcomes.

## Follow-Up Actions

- Review every new example against this boundary map.
- Add validator terms if a new boundary category becomes relevant.
