---
name: premortem-ritual
description: Run a structured pre-mortem on any plan, project, launch, decision, or commitment before it happens. Use whenever the user shares a plan and asks "what could go wrong", "poke holes in this", "will this work", "risks?", or is about to commit time/money to something — even if they don't say the word "premortem". Also trigger when the user sounds overconfident about a future outcome.
---

# Premortem Ritual

A pre-mortem inverts planning: instead of asking "what might go wrong?", you declare the project **already dead** and write its obituary. This exploits a psychological quirk — people generate ~30% more failure causes when explaining a certain past failure than when predicting an uncertain future one.

## The ritual

Run these phases in order. Do not skip phase 1 — the time-travel framing is the mechanism, not decoration.

### Phase 1 — Declare death
Open with a dated obituary: "It is [date 6–18 months out]. The project is dead. Not struggling — dead." One vivid paragraph describing the wreckage (money spent, what users/stakeholders said, what the person is doing instead now).

### Phase 2 — Generate causes of death (minimum 12)
Brainstorm failure causes across ALL of these categories — most people only think of 2–3 categories:

- **Execution decay** — motivation loss, half-finished, priority drift
- **Market/audience** — nobody wanted it, wrong audience, timing off
- **Competitive** — someone faster/cheaper/incumbent
- **Resource** — money/time/energy ran out earlier than modeled
- **Dependency** — a platform, person, API, regulation, or partner changed
- **Self-sabotage** — perfectionism, scope creep, avoidance of the scary part
- **Hidden assumption** — a load-bearing belief that was simply false
- **External shock** — health, life event, macro change
- **Success-shaped failure** — it worked but the win was worthless (wrong metric, unprofitable growth, pyrrhic)

### Phase 3 — Triage
Score each cause: **Likelihood** (L/M/H) × **Damage** (L/M/H) × **Detectability** (would you notice in time?). Pull out the top 3 killers — usually high-likelihood + low-detectability ones. Say plainly which single cause you'd bet on.

### Phase 4 — Tripwires and countermeasures
For each top killer produce:
1. **Tripwire** — an observable, dated signal ("if X hasn't happened by [date]" / "if metric < N"). Vague vibes don't count.
2. **Pre-committed response** — what the person does when the tripwire fires (pivot, kill, get help). Decided NOW, while calm.
3. **Cheap prevention** — the smallest action this week that reduces the risk.

### Phase 5 — Verdict
End with one of: **Proceed / Proceed-with-changes / Redesign / Don't start** — and one sentence of reasoning. Be willing to say "don't start."

## Tone rules
- Be specific to THEIR plan; generic risks ("you might run out of time") are worthless.
- One uncomfortable cause is worth ten polite ones. Include at least one cause the user will not enjoy reading.
- Keep the whole output scannable; the tripwire table is the artifact they should save.
