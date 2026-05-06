# Architecture

## Purpose

This document defines the documentation architecture for `research-agent-workflows`.

The repository is documentation-only. It does not run research agents, scrape sources, publish automatically, or store private research notes.

## Architecture Overview

| Layer | Files | Role |
| --- | --- | --- |
| Public entry | `README.md`, `AGENTS.md`, `CONTRIBUTING.md`, `SECURITY.md` | State purpose, authority, contribution rules, and security scope. |
| Workflow standards | `docs/research-workflow-standard.md`, `docs/publishing-pipeline.md` | Define research lifecycle and publication gates. |
| Source discipline | `docs/source-review-standard.md`, `docs/citation-standard.md` | Define source evaluation and citation tracking. |
| Editorial controls | `docs/editorial-review.md`, `docs/ai-assistance-disclosure.md` | Define review gates and AI assistance disclosure. |
| Boundaries | `docs/public-private-boundaries.md`, `docs/status-language.md` | Define public/private/sealed handling and status labels. |
| Graphs | `docs/graphs/*.md` | Communicate workflow, review, publication, and boundary flow. |
| Templates | `templates/*.template.md` | Provide reusable public-safe research workflow forms. |
| Examples | `examples/*.md` | Demonstrate usage with synthetic content only. |
| Validation | `scripts/validate-research-agent-workflows.sh` | Checks required files, graph sections, boundary language, and synthetic labeling. |

## Workflow Shape

```text
research question -> source review -> citation log -> brief draft -> editorial review -> publishing gate -> public-safe publication
```

AI assistance may draft, organize, compare, or format. Human editorial review remains required before public use.

## Documentation Boundaries

| Boundary | Rule |
| --- | --- |
| Public | Standards, templates, diagrams, synthetic examples, and public-source citation patterns. |
| Private | Private research notes, unpublished drafts, private prompts, private model outputs, and internal review notes. |
| Sealed | Restricted IP, private training corpora, credentials, sensitive infrastructure, and sealed workflows. |

## Quality Gate

The repository is complete only when validation passes, every example is synthetic, source review and citation standards are present, editorial review gates are explicit, and no private research or scraped copyrighted content is included.
