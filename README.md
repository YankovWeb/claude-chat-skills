# Claude Chat Skills — 12 thinking skills for Claude.ai

Reusable [Agent Skills](https://claude.com/docs/skills/how-to) for **Claude.ai** (web/desktop) and Claude Code. Same idea as coding skills, but aimed at everyday thinking work: explaining, debating, estimating, naming, negotiating, studying, and pressure-testing text.

Each skill is a folder with a `SKILL.md`. Ready-to-upload `.skill` zips live in `packages/`.

---

## Install

### Claude.ai (recommended)

1. Open **Customize → Skills** (or Settings → Capabilities → Skills).
2. Upload a file from [`packages/`](packages/) (e.g. `packages/analogy-engine.skill`).
3. Enable the skill.

The `.skill` file is a zip whose root is the skill folder (`analogy-engine/SKILL.md` inside). That layout is required by Claude.ai.

### Claude Code

```bash
# project-scoped:
mkdir -p your-project/.claude/skills
cp -R analogy-engine assumption-xray decision-record explain-ladder \
  fermi-dojo naming-forge negotiation-war-room premortem-ritual \
  recall-forge red-team-my-text socratic-tutor steelman-arena \
  your-project/.claude/skills/

# global:
mkdir -p ~/.claude/skills && cp -R analogy-engine assumption-xray \
  decision-record explain-ladder fermi-dojo naming-forge \
  negotiation-war-room premortem-ritual recall-forge red-team-my-text \
  socratic-tutor steelman-arena ~/.claude/skills/
```

Invoke with `/analogy-engine` or by asking in natural language.

---

## The 12 skills

| Skill | What it does |
|-------|----------------|
| **analogy-engine** | Load-tested analogies with an explicit mapping table and “where it breaks” |
| **assumption-xray** | Extract and rank hidden load-bearing assumptions; cheapest tests |
| **decision-record** | Compact decision memo: options matrix, regret, revisit date |
| **explain-ladder** | Explain any concept at five depth levels; misconception traps |
| **fermi-dojo** | Structured Fermi estimates with confidence intervals |
| **naming-forge** | Systematic name generation + stress tests |
| **negotiation-war-room** | One-page negotiation battle card (BATNA, anchors, concessions) |
| **premortem-ritual** | Premortem before a plan/launch/commitment |
| **recall-forge** | Turn material into spaced-recall study cards |
| **red-team-my-text** | Hostile/careless-reader review of outgoing text |
| **socratic-tutor** | Teach by questions, not lectures; graded hints |
| **steelman-arena** | Steelman both sides of a debate; find the crux |

---

## Repo layout

```
claude-chat-skills/
├── analogy-engine/SKILL.md   ← source (edit here)
├── …                         ← one folder per skill
├── packages/*.skill          ← ready to upload to Claude.ai
├── scripts/pack-skills.sh    ← maintainer only: rebuild packages/
├── LICENSE
└── README.md
```

After editing a `SKILL.md`, rebuild upload packages with:

```bash
./scripts/pack-skills.sh
```

Installers do **not** need that script — use `packages/*.skill` or copy the folders.

---

## License

MIT — see [LICENSE](LICENSE).
