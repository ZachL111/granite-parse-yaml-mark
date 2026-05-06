# Granite Parse YAML Mark Walkthrough

The fixture is intentionally compact, so the review starts with the cases that pull farthest apart.

| Case | Focus | Score | Lane |
| --- | --- | ---: | --- |
| baseline | token drift | 109 | watch |
| stress | grammar width | 163 | ship |
| edge | label quality | 201 | ship |
| recovery | error locality | 163 | ship |
| stale | token drift | 173 | ship |

Start with `edge` and `baseline`. They create the widest contrast in this repository's fixture set, which makes them better review anchors than the middle cases.

The useful comparison is `label quality` against `token drift`, not the raw score alone.
