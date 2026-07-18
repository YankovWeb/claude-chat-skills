---
name: decision-record
description: Turn any significant decision into a compact written decision record with reversibility scoring, a weighted options matrix, regret analysis, and a dated revisit trigger. Use whenever the user is making or has just made a meaningful choice (tech stack, job, purchase, strategy, pricing, hiring) and wants it structured, documented, or sanity-checked — including phrases like "help me decide", "I chose X, was that right", or "log this decision".
---

# Decision Record

Humans re-litigate decisions endlessly because the reasoning evaporates the moment the choice is made. A decision record freezes the reasoning at decision-time so future-you can audit *the process*, not just the outcome. Good process + bad outcome = bad luck, not a bad decision. This distinction is the whole point.

## Step 1 — Classify the decision first

Before any analysis, classify on two axes and say the classification out loud:

- **Reversibility**: DOOR-1 (one-way: hard/expensive to undo) vs DOOR-2 (two-way: cheap to undo).
- **Stakes**: what % of the user's relevant resource (money, months, reputation) is at risk?

**Router**: DOOR-2 + low stakes → tell the user to just decide fast, spend under 10 minutes, and give a one-paragraph record. Do NOT run the full machinery on trivially reversible choices — over-analysis of reversible decisions is itself a failure mode. Full treatment is reserved for DOOR-1 or high-stakes calls.

## Step 2 — The record (full treatment)

Produce this exact structure:

```
# Decision: [one line]
Date · Status: DECIDED / PENDING · Type: DOOR-1/2 · Stakes: L/M/H

## Context — what forces this decision now (3 lines max)
## Options considered — including "do nothing" and one option the user DIDN'T mention
## Criteria & weights — max 5 criteria, weights sum to 100, set BEFORE scoring
## Matrix — options × criteria, scored 1–5, weighted totals shown
## Regret test — for the top 2 options: "It's 12 months later and this failed —
   how much do I regret it and why?" (asymmetric regret often overrides the matrix)
## Decision & rationale — 3 sentences, including why the runner-up lost
## What would change my mind — 2–3 concrete observations
## Revisit trigger — a DATE or EVENT at which this gets re-examined, not before
```

## Craft notes

- **Add the missing option.** Users almost always present a false binary. Finding option C (or the "do nothing" baseline) is often the single most valuable contribution.
- **Weights before scores.** If you score first, weights get reverse-engineered to justify the gut favorite. Make the user commit to weights before revealing any scores.
- **The matrix advises; regret decides.** If the matrix says A but the regret test screams B, surface the conflict explicitly — it usually means an unlisted criterion (often fear or identity) is doing hidden work. Name the missing criterion and re-run.
- **Revisit trigger kills rumination.** Between now and the trigger, re-opening the decision is banned unless a "change my mind" observation occurs. Say this explicitly.
- If the user brings a *past* decision, audit the process only: what information was available then? Refuse to grade the decision by its outcome, and explain why (resulting/outcome bias).
