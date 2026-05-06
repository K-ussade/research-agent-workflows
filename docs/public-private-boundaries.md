# Public / Private / Sealed Boundaries

## Purpose

This document defines what may and may not appear in `research-agent-workflows`.

## Boundary Classes

| Boundary | Meaning | Handling |
| --- | --- | --- |
| Public | Safe to publish with citations and review. | May appear in this repository. |
| Private | Authorized operating group only. | Exclude details; use placeholders or public-safe summaries. |
| Sealed | Explicit human authorization required before excerpt, release, or summary. | Block from this repository. |
| Mixed | Contains public and non-public material. | Split public-safe content from private or sealed content. |

## Allowed Public Material

- research workflow standards;
- source review and citation templates;
- editorial review gates;
- AI assistance disclosure templates;
- Mermaid diagrams;
- synthetic examples;
- public links to existing repositories or public sources.

## Forbidden Public Material

- private research notes, private prompts, private model outputs, private evaluations, or unpublished sensitive content;
- scraped copyrighted content, copied paywalled text, or private document dumps;
- donor data, student data, school private data, volunteer private data, customer data, or private Foundation operations;
- credentials, tokens, API keys, secrets, account screenshots, private training corpora, or exact sensitive infrastructure locations;
- security-sensitive NEURONA operational details;
- sealed YOSO-YAi LLC IP;
- unsupported active service, client outcome, publication outcome, release, or impact claims.

## Review Rule

When a source or draft contains private, sealed, copyrighted, or sensitive material, do not publicize the details. Escalate and create only a public-safe placeholder if a human reviewer approves it.
