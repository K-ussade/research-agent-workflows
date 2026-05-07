# AGENTS.md

This file governs Codex work inside `research-agent-workflows`.

## Repository Role

`research-agent-workflows` is a public-safe documentation kit for AI-assisted research workflows, source review, citation logs, research briefs, editorial review, publishing checklists, and disclosure language.

It is not a live research agent, scraper, publication bot, private prompt library, private research archive, or authority for unreviewed claims.

## Authority

- Alexandra Caussade stewards this repository through the K-ussade public technical brand/account surface.
- Human editorial review remains upstream of publication, citation decisions, source selection, claim approval, and public linking.
- Codex may draft public-safe standards, templates, synthetic examples, Mermaid diagrams, and validation checks.
- Codex is not editorial authority, legal authority, copyright authority, Foundation governance authority, or publication authority.

## Entity Boundary Rules

- YOSO-YAi LLC and the 218 Network Foundation are distinct.
- The Foundation is not a YOSO-YAi LLC product, marketing arm, or CSR project.
- YOSOR is a product of YOSO-YAi LLC, not a separate legal entity.
- Do not use Foundation work as company marketing proof.
- Do not use company product language to define Foundation legitimacy.

## Public Boundary

Allowed:

- public-safe research workflow standards;
- source-review and citation templates;
- editorial review gates;
- synthetic examples;
- AI assistance disclosure templates;
- public-safe Mermaid diagrams.

Forbidden:

- private research notes;
- private prompts or private model outputs;
- scraped copyrighted content or copied paywalled text;
- unpublished sensitive content;
- private Foundation operations;
- donor data;
- student data;
- school private data;
- volunteer private data;
- customer data;
- credentials, tokens, API keys, and secrets;
- exact sensitive infrastructure locations;
- private training corpora;
- security-sensitive NEURONA operational details;
- sealed YOSO-YAi LLC IP;
- unsupported publication, client outcome, active service, release, or impact claims.

## Writing Rules

- Write in precise infrastructure-tech language.
- Mark examples as synthetic.
- Require source review before claims are reused.
- Require citation logs for research briefs.
- State that AI output is draft assistance and not authoritative without human editorial review.
- Do not include long copyrighted excerpts, scraped content, or private research notes.
- Do not imply this repository publishes automatically or operates live research agents.

## Validation

Before final response after edits:

1. Run `scripts/validate-research-agent-workflows.sh`.
2. Check `git status --short`.
3. State validation result and residual human review needs.
