#!/usr/bin/env bash
set -u

ROOT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

required_files=(
  "README.md"
  "AGENTS.md"
  "CONTRIBUTING.md"
  "SECURITY.md"
  "CHANGELOG.md"
  "docs/architecture.md"
  "docs/research-workflow-standard.md"
  "docs/source-review-standard.md"
  "docs/citation-standard.md"
  "docs/editorial-review.md"
  "docs/publishing-pipeline.md"
  "docs/public-private-boundaries.md"
  "docs/ai-assistance-disclosure.md"
  "docs/status-language.md"
  "docs/graphs/research-workflow-map.md"
  "docs/graphs/source-to-brief-flow.md"
  "docs/graphs/editorial-review-flow.md"
  "docs/graphs/publishing-pipeline-map.md"
  "docs/graphs/public-private-boundary-map.md"
  "templates/research-brief.template.md"
  "templates/source-review.template.md"
  "templates/citation-log.template.md"
  "templates/editorial-review.template.md"
  "templates/publishing-checklist.template.md"
  "templates/ai-assistance-disclosure.template.md"
  "templates/weekly-research-digest.template.md"
  "examples/README.md"
  "examples/synthetic-research-brief-example.md"
  "examples/synthetic-citation-log-example.md"
  "scripts/validate-research-agent-workflows.sh"
)

required_graph_sections=(
  "## Purpose"
  "## Mermaid Diagram"
  "## Interpretation Notes"
  "## Boundary Notes"
  "## Follow-Up Actions"
)

missing=0

printf "Research Agent Workflows Validation\n"
printf "Root: %s\n\n" "$ROOT_DIR"

for file in "${required_files[@]}"; do
  if [ -f "$ROOT_DIR/$file" ]; then
    printf "PASS  %s\n" "$file"
  else
    printf "FAIL  %s\n" "$file"
    missing=$((missing + 1))
  fi
done

printf "\nGraph Structure Checks\n"

for graph in "$ROOT_DIR"/docs/graphs/*.md; do
  [ -f "$graph" ] || continue
  rel="${graph#$ROOT_DIR/}"
  for section in "${required_graph_sections[@]}"; do
    if grep -qF "$section" "$graph"; then
      printf "PASS  %s contains %s\n" "$rel" "$section"
    else
      printf "FAIL  %s missing %s\n" "$rel" "$section"
      missing=$((missing + 1))
    fi
  done
done

printf "\nBoundary And Review Checks\n"

for term in "AI output is not authoritative" "human editorial review" "source review" "citation" "editorial review" "publishing approval" "Synthetic" "Draft / review-required" "Private / Not public" "scraped copyrighted content" "private research notes" "private prompts" "private model outputs" "donor data" "student data" "volunteer private data" "customer data" "private Foundation operations" "private training corpora" "credentials" "tokens" "API keys" "secrets" "security-sensitive NEURONA operational details" "sealed YOSO-YAi LLC IP"; do
  if grep -Riq "$term" "$ROOT_DIR"/README.md "$ROOT_DIR"/AGENTS.md "$ROOT_DIR"/docs "$ROOT_DIR"/templates "$ROOT_DIR"/examples; then
    printf "PASS  required term present: %s\n" "$term"
  else
    printf "FAIL  required term missing: %s\n" "$term"
    missing=$((missing + 1))
  fi
done

printf "\nSynthetic Example Checks\n"

for example in "$ROOT_DIR"/examples/synthetic-*.md; do
  rel="${example#$ROOT_DIR/}"
  if grep -qF "Synthetic" "$example" && grep -Eiq "does not describe real|does not include" "$example"; then
    printf "PASS  %s is clearly synthetic\n" "$rel"
  else
    printf "FAIL  %s lacks synthetic non-claim language\n" "$rel"
    missing=$((missing + 1))
  fi
done

printf "\nRuntime Exclusion Checks\n"

if grep -Riq "documentation-only" "$ROOT_DIR"/README.md "$ROOT_DIR"/SECURITY.md "$ROOT_DIR"/docs && \
   grep -Riq "does not run research agents" "$ROOT_DIR"/docs "$ROOT_DIR"/SECURITY.md; then
  printf "PASS  live research runtime is excluded\n"
else
  printf "FAIL  runtime exclusion language missing\n"
  missing=$((missing + 1))
fi

if [ "$missing" -eq 0 ]; then
  printf "\nResult: PASS - research agent workflows repository is complete.\n"
  exit 0
fi

printf "\nResult: FAIL - %s required check(s) failed.\n" "$missing"
exit 1
