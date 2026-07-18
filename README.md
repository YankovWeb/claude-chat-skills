# Claude Chat Skills — 12 thinking skills

Reusable [Agent Skills](https://claude.com/docs/skills/how-to) (`SKILL.md`) for everyday thinking work: explaining, debating, estimating, naming, negotiating, studying, and pressure-testing text.

Works in **Claude.ai**, **Claude Code**, **Cursor**, and **OpenAI Codex** — same folders, different install paths. Ready-to-upload `.skill` zips for Claude.ai live in `packages/`.

---

## Install

| Tool | Project path | Global path |
|------|--------------|-------------|
| **Claude.ai** | Upload `packages/*.skill` → Customize → Skills | — |
| **Claude Code** | `.claude/skills/` | `~/.claude/skills/` |
| **Cursor** | `.cursor/skills/` (also reads `.claude/skills/` / `.agents/skills/`) | `~/.cursor/skills/` |
| **Codex (GPT)** | `.codex/skills/` or `.agents/skills/` | `~/.codex/skills/` / `~/.agents/skills/` |

### Claude.ai (recommended for chat)

1. Open **Customize → Skills**.
2. Upload a file from [`packages/`](packages/) (e.g. `packages/analogy-engine.skill`).
3. Enable the skill.

### One-liner helper (Claude Code / Cursor / Codex)

```bash
chmod +x scripts/install-skills.sh
./scripts/install-skills.sh claude /path/to/your-project
./scripts/install-skills.sh cursor /path/to/your-project
./scripts/install-skills.sh codex  /path/to/your-project
./scripts/install-skills.sh agents /path/to/your-project   # shared Cursor+Codex path
./scripts/install-skills.sh claude --global
```

### Manual copy (Claude Code example)

```bash
mkdir -p your-project/.claude/skills
cp -R analogy-engine assumption-xray decision-record explain-ladder \
  fermi-dojo naming-forge negotiation-war-room premortem-ritual \
  recall-forge red-team-my-text socratic-tutor steelman-arena \
  your-project/.claude/skills/
```

Invoke with `/analogy-engine` or natural language.

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
├── packages/*.skill          ← Claude.ai upload packages
├── scripts/install-skills.sh ← copy into Claude/Cursor/Codex paths
├── scripts/pack-skills.sh    ← maintainer: rebuild packages/
├── LICENSE
└── README.md
```

After editing a `SKILL.md`, rebuild Claude.ai packages with `./scripts/pack-skills.sh`.

---

## License

MIT — see [LICENSE](LICENSE).
