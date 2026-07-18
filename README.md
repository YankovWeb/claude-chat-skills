# Claude Chat Skills — 12 thinking skills for everyday work

Twelve reusable [Agent Skills](https://claude.com/docs/skills/how-to) that encode *ways of thinking* for chat work — explaining, debating, estimating, naming, negotiating, studying, and pressure-testing text — not coding helpers.

Same `SKILL.md` format works in **Claude.ai**, **Claude Code**, **Cursor**, and **OpenAI Codex**. Ready-to-upload `.skill` zips for Claude.ai live in [`packages/`](packages/).

---

## Installation

| Tool | Project path | Global path |
|------|--------------|-------------|
| **Claude.ai** | Upload `packages/*.skill` → Customize → Skills | — |
| **Claude Code** | `.claude/skills/` | `~/.claude/skills/` |
| **Cursor** | `.cursor/skills/` (also reads `.claude/skills/` / `.agents/skills/`) | `~/.cursor/skills/` |
| **Codex (GPT)** | `.codex/skills/` or `.agents/skills/` | `~/.codex/skills/` / `~/.agents/skills/` |

### Claude.ai (recommended for chat)

1. Open **Customize → Skills** (or Settings → Capabilities → Skills).
2. Upload a file from [`packages/`](packages/) — e.g. `packages/analogy-engine.skill`.
3. Enable the skill and try a prompt that matches its description.

Each `.skill` file is a zip whose root is the skill folder (`analogy-engine/SKILL.md` inside). That layout is required by Claude.ai.

### One-liner helper (Claude Code / Cursor / Codex)

```bash
chmod +x scripts/install-skills.sh
./scripts/install-skills.sh claude /path/to/your-project
./scripts/install-skills.sh cursor /path/to/your-project
./scripts/install-skills.sh codex  /path/to/your-project
./scripts/install-skills.sh agents /path/to/your-project   # shared Cursor+Codex path
./scripts/install-skills.sh claude --global                # → ~/.claude/skills
```

### Manual copy (Claude Code example)

```bash
mkdir -p your-project/.claude/skills
cp -R analogy-engine assumption-xray decision-record explain-ladder \
  fermi-dojo naming-forge negotiation-war-room premortem-ritual \
  recall-forge red-team-my-text socratic-tutor steelman-arena \
  your-project/.claude/skills/
```

Invoke with `/analogy-engine` or natural language (*"use the analogy-engine skill"*).

---

## The 12 skills at a glance

| # | Skill | Best for |
|---|-------|----------|
| 1 | **analogy-engine** | Making a hard concept land for a specific audience |
| 2 | **assumption-xray** | Finding the load-bearing guesses in a plan |
| 3 | **decision-record** | Writing down a meaningful choice so you can revisit it |
| 4 | **explain-ladder** | Understanding (or teaching) something at five depths |
| 5 | **fermi-dojo** | Estimating unknown quantities with confidence intervals |
| 6 | **naming-forge** | Naming products, features, companies, or code |
| 7 | **negotiation-war-room** | Preparing for salary, pricing, or contract talks |
| 8 | **premortem-ritual** | Killing a plan’s failure modes before you commit |
| 9 | **recall-forge** | Turning material into a study / retention pack |
| 10 | **red-team-my-text** | Hostile review of anything you’re about to send |
| 11 | **socratic-tutor** | Learning by questions instead of lectures |
| 12 | **steelman-arena** | Debating both sides until the crux is clear |

---

## The skills in depth

### Explain & teach

#### 1. `analogy-engine` — analogies with a breaking point
Builds rigorous, load-tested analogies — not loose metaphors. Outputs an explicit mapping table between the hard concept and the source domain, plus a honest **“where it breaks”** section so the analogy doesn’t smuggle false implications.

**Use it when:** explaining something to investors, juniors, clients, or kids; writing talks/docs/pitches; a concept keeps failing to land.
**Example:** *"Give me an analogy for technical debt for salon owners"* → kitchen shortcut that saves time today but compounds cleanup, with the mapping and where the metaphor fails.

#### 2. `explain-ladder` — five depths, one concept
Explains any topic at five escalating levels (curious 10-year-old → domain expert). At each rung it flags the **specific misconception trap** people usually fall into there.

**Use it when:** “explain X”; “how does this actually work”; preparing to teach or be interviewed on a topic.
**Example:** *"Explain OAuth like a ladder"* → five rungs, each with the trap (“people think the app sees your password — it doesn’t”).

#### 3. `socratic-tutor` — teach by asking
Teaches any topic with calibrated questions instead of lectures. You build the understanding; a graded hint ladder appears only when you’re stuck.

**Use it when:** you want to *learn*, not just get an answer; exam/interview prep; “quiz me”; Socratic mode.
**Example:** *"Teach me how indexes work — Socratic"* → questions that force you to derive why a full table scan hurts before naming B-trees.

---

### Decide & stress-test plans

#### 4. `assumption-xray` — find the fragile premises
Extracts hidden load-bearing assumptions from a plan, pitch, strategy, or belief, ranks them by fragility, and designs the **cheapest test** for each.

**Use it when:** “what am I missing?”; before investing time/money; stress-testing a claim.
**Example:** *"X-ray the assumptions in this launch plan"* → ranked table; danger-zone items each get a <1-day falsification test.

#### 5. `premortem-ritual` — write the failure first
Structured premortem: imagine the plan has already failed, write concrete death stories, then convert each into a tripwire and a prevention.

**Use it when:** about to commit; “what could go wrong?”; the plan sounds overconfident and has no risk section.
**Example:** *"Premortem my freelance offer"* → “Death by unpaid scope creep,” with a dated kill criterion.

#### 6. `decision-record` — decide in writing
Turns a meaningful choice into a compact decision record: reversibility score, weighted options matrix, regret analysis, and a **dated revisit trigger**.

**Use it when:** tech stack, job, pricing, hire, purchase; “help me decide”; “log this decision.”
**Example:** *"Record the decision to use Supabase"* → one-pager you can reopen in 90 days without relitigating from memory.

#### 7. `steelman-arena` — both sides, then the crux
Stages a rigorous debate by steelmanning *both* sides and hunting for the single crux that would flip the verdict.

**Use it when:** torn between X and Y; holding a strong opinion you want tested; “am I wrong about this?”
**Example:** *"Steelman: build vs buy the booking module"* → strongest case for each, then the one assumption that decides it.

---

### Numbers, names, talks, money

#### 8. `fermi-dojo` — estimate with a spine
Structured Fermi estimation with explicit confidence intervals. Decomposes “how big/many/much” into factors you can sanity-check — and trains calibration along the way.

**Use it when:** market size, budget, timeline, capacity; “how many X?”; sanity-checking someone else’s number.
**Example:** *"How many dental clinics in Bulgaria need online booking?"* → top-down and bottom-up rebuilds with a range, not a fake precise integer.

#### 9. `naming-forge` — naming as craft
Systematic name generation for products, features, companies, books, functions, variables — construction axes plus stress tests (grep, lie, sibling, collision), not random brainstorming.

**Use it when:** “what should I call this?”; stuck between candidates; inconsistent naming in a codebase.
**Example:** *"Name this feature that reminds clients of unfinished appointments"* → shortlist with kill reasons for the weak ones.

#### 10. `negotiation-war-room` — one-page battle card
Prepares any negotiation (salary, client pricing, vendors, raises, big purchases) with BATNA, anchor math, concession ladder, counterpart modeling, and scripted first moves.

**Use it when:** upcoming money/terms talk; “how much should I ask?”; “they said X, what do I say?”
**Example:** *"War-room my rate conversation with a clinic owner"* → battle card with walk-away number and first-sentence script.

---

### Ship words & remember them

#### 11. `red-team-my-text` — hostile read before send
Adversarial review of outgoing text — email, post, landing page, README, proposal — through hostile *and* careless readers’ eyes before it ships.

**Use it when:** draft to a boss/client/public; “how does this read?”; stakes of misreading are real.
**Example:** *"Red-team this client email"* → exact lines that sound passive-aggressive or vague, plus a tighter rewrite.

#### 12. `recall-forge` — retention, not highlights
Converts an article, chapter, conversation, or docs into a study pack: retrieval-practice cards, interleaved self-test, and a spaced review calendar.

**Use it when:** exam/cert/interview prep; “make flashcards”; “help me retain this.”
**Example:** *"Forge recall cards from this negotiation chat"* → cards + a 1/3/7/21-day review schedule.

---

## How they combine

These skills chain well:

- **Before a big bet:** `assumption-xray` → `fermi-dojo` (on the numbers) → `premortem-ritual` → `decision-record`.
- **Torn between options:** `steelman-arena` → `decision-record` (lock the crux and revisit date).
- **Teach or pitch something hard:** `explain-ladder` → `analogy-engine` → `red-team-my-text` on the final copy.
- **Learn deeply:** `socratic-tutor` → `recall-forge` (keep what you earned).
- **Money conversation:** `fermi-dojo` (your number) → `negotiation-war-room` → `red-team-my-text` on the opening message.
- **Ship a name:** `naming-forge` → `red-team-my-text` on the one-liner that carries the name.

---

## Design notes

- Every skill produces a **fixed output shape**, so results are consistent and skimmable.
- Descriptions are written to **trigger proactively** (models under-trigger skills otherwise).
- Domain-agnostic — business, learning, writing, or personal decisions; no stack required.
- Each `SKILL.md` is self-contained (no bundled scripts), so folders survive copy-paste and zip upload.

---

## Repo layout

```
claude-chat-skills/
├── analogy-engine/SKILL.md   ← source (edit here)
├── …                         ← one folder per skill
├── packages/*.skill          ← Claude.ai upload packages
├── scripts/install-skills.sh ← copy into Claude/Cursor/Codex paths
├── scripts/pack-skills.sh    ← maintainer only: rebuild packages/
├── LICENSE
└── README.md
```

After editing a `SKILL.md`, rebuild Claude.ai packages:

```bash
./scripts/pack-skills.sh
```

Installers do **not** need that script — upload `packages/*.skill` or run `install-skills.sh`.

---

## License

MIT — see [LICENSE](LICENSE).
