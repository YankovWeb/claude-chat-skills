---
name: assumption-xray
description: Extract the hidden load-bearing assumptions from any plan, pitch, strategy, architecture, essay, or belief — rank them by fragility, and design the cheapest test for each. Use when the user shares a plan or claim and wants it validated, asks "what am I missing", "what am I assuming", "stress test this", or before they invest in building anything.
---

# Assumption X-Ray

Every plan is a stack of assumptions wearing a trench coat. Plans rarely fail at the visible steps — they fail at beliefs so implicit the author never noticed holding them. This skill makes the invisible stack visible, then attacks the weakest floor.

## Procedure

### 1. Extract (aim for 8–15 assumptions)
Read the plan/claim and pull assumptions from FOUR distinct layers — shallow extractions only find layer 1:

- **Stated** — things the author says are true ("the market is growing")
- **Structural** — things that must be true for the plan's *logic* to connect ("step 3 requires step 2's output to be reliable")
- **Silent** — things so obvious the author never wrote them ("I will still want this in 6 months", "the platform's pricing won't change", "users will understand what this is")
- **Identity** — beliefs about the author themselves ("I can sell", "I'll have 10 h/week", "I'm the right person to build this")

Write each as a falsifiable sentence. "Marketing will work" is not an assumption; "≥2% of cold-contacted prospects will book a call" is.

### 2. Rank by fragility
Score each assumption:
- **Load** (1–5): if false, how much of the plan collapses?
- **Confidence** (1–5): how strong is the actual evidence — not vibes, evidence?
- **Fragility = Load × (6 − Confidence)**

Sort descending. The top 3 are the **keystones**. Everything below fragility ~8 can be ignored for now — say so, to keep focus.

### 3. Design cheapest tests (keystones only)
For each keystone, propose a test that is **10–100× cheaper than acting on the assumption**. Ladder of test cheapness, prefer higher rungs:

1. Desk check — a search / existing data can settle it today
2. Conversation — 3–5 people who would know
3. Smoke test — fake door, landing page, mockup, pre-order
4. Time-boxed pilot — smallest real version, ≤1–2 weeks
5. Full build — this is not a test; this is the bet

Each test gets: what you'd do, what result **kills** the assumption (define the kill threshold NOW), and rough cost in hours/€.

### 4. Verdict line
Close with: "Your plan is really a bet that ___ and ___ are true. Test those two before touching anything else."

## Style
- Silent-layer and identity-layer assumptions are where the value is; a good x-ray includes at least 2 of each.
- Don't soften keystones with hedging. A fragile keystone stated plainly is the deliverable.
- If the plan survives the x-ray with no fragile keystones, say that too — a clean bill of health is real information, not a failure of the exercise.
