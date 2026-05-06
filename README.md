# granite-parse-yaml-mark

`granite-parse-yaml-mark` is a compact Ruby repository for parsers, centered on this goal: Implement a Ruby parsers project for yaml policy evaluation, using deny and allow fixtures and explainable decision traces.

## Purpose

This is intentionally local and self-contained so it can be inspected without credentials, services, or seeded history.

## Granite Parse YAML Mark Review Notes

The first comparison I would make is `label quality` against `token drift` because it shows where the rule is most opinionated.

## What Is Covered

- `fixtures/domain_review.csv` adds cases for token drift and grammar width.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/granite-parse-yaml-walkthrough.md` walks through the case spread.
- The Ruby code includes a review path for `label quality` and `token drift`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Implementation Notes

The repository has two validation layers: the original compact policy fixture and the domain review fixture. They are separate so one can change without hiding failures in the other.

The Ruby addition stays small enough to inspect in one sitting.

## Command

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Audit Path

The check exercises the source code and the review fixture. `edge` is the high score at 201; `baseline` is the low score at 109.

## Limits

The repository is intentionally scoped to local checks. I would expand it by adding adversarial fixtures before adding features.
