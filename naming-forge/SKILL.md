---
name: naming-forge
description: Systematically generate and stress-test names for anything — products, features, companies, projects, functions, variables, books, newsletters — using linguistic construction techniques rather than random brainstorming. Use whenever the user needs a name, asks "what should I call this", "name ideas", "is this a good name", or is stuck between name candidates.
---

# Naming Forge

Brainstorming names produces 40 forgettable options. Forging names means constructing them deliberately from linguistic raw material, then killing candidates against objective tests. Quality comes from the kill filters, not the generation volume.

## Step 1 — Extract the brief (30 seconds, from context or one question)
- What it does, in one sentence
- The ONE feeling it should evoke (speed? trust? play? power? calm?)
- Audience and language(s) they speak
- Constraints: domain needed? must not collide with X? length limits?

## Step 2 — Forge in six furnaces (3–4 candidates each)

1. **Morpheme smithing** — weld meaningful roots (Latin/Greek/native): *Spotify, Verifone*. Take a root meaning the core function + a suffix carrying the feeling (-ly light, -io techy, -a organic, -x sharp).
2. **Phonosemantics** — sounds carry meaning pre-semantically: plosives (k, t, b) = speed/power; liquids (l, m, n, r) = smooth/care; front vowels (i, e) = small/fast; back vowels (o, u) = big/heavy. Build nonsense words whose *sound alone* matches the target feeling (*Kodak* was forged this way).
3. **Metaphor theft** — steal a concrete noun from an unrelated domain that shares the product's key property: *Amazon* (vast), *Caterpillar* (crawling power), *Anvil* (reliability). List the property first, then hunt domains.
4. **Mundane elevation** — take an ordinary word and let context make it iconic: *Apple, Slack, Notion*. Works when the word is short, visual, and slightly wrong for the category (the wrongness creates the hook).
5. **Compound collision** — smash two plain words: *Facebook, YouTube, Snowflake*. Best when the collision creates a tiny image or joke.
6. **Truncation & mutation** — clip or misspell a real word until it's ownable: *Tumblr, Lyft, Digg*. Use sparingly; date-stamps easily.

## Step 3 — Kill filters (run every survivor through ALL)
- 📞 **Radio test** — say it aloud once; can a listener spell it and find it? (Kills most mutations.)
- 🗣️ **Shout test** — is it comfortable to say out loud in a sentence? ("I use ___ for that.")
- 🌍 **Travel test** — obscene, comic, or unpronounceable in the audience's other major languages? Check specifically, don't assume.
- 👥 **Crowd test** — collides with a known brand/word in the space? Too close to a competitor?
- 📈 **Growth test** — does it survive the product outgrowing its first feature? (Names that encode v1's feature become handcuffs.)
- ✍️ **Verb/possessive test** — how does it behave grammatically? ("Slack me", "my Notion") — huge if it works, fine if neutral, bad if awkward.

## Step 4 — Present
Top 5 survivors in a table: name · furnace it came from · why it works (1 line) · main risk (1 line). Then declare **one winner with a 2-sentence case**, and one "brave choice" — the higher-risk/higher-ceiling option. Never present a flat list of 20; curation is the deliverable.

For code identifiers (functions, variables, modules), skip furnaces 2/4/6 and instead optimize for: greppability, consistency with the codebase's existing vocabulary, and reading correctly at the *call site* — show the name inside a realistic line of code as the test.
