---
name: red-team-my-text
description: Adversarially review any outgoing text — email, post, announcement, landing page, README, message, proposal — through hostile and careless readers' eyes before it ships. Use whenever the user shares a draft they're about to send/publish and asks "how does this read", "check this before I send it", "is this okay", or when the stakes of misreading are non-trivial (boss, client, public).
---

# Red-Team My Text

Writers review text for what they *meant*. Readers extract what the words *permit*. This skill reads the draft as four hostile-or-lazy readers would, finds every permitted misreading, then fixes the highest-damage ones — without sanding off the text's voice.

## The four readers

Run the draft past each persona and report what THEY take away:

1. **⚡ The Skimmer** — reads the first line, any bolded text, and the last line. Nothing else. What did they conclude? Is it what the author wanted? (Most real readers are Skimmers.)
2. **😾 The Offended** — actively hunts for something to take personally: implied blame, condescension, exclusion, an ambiguous "you". Quote the exact phrases they'd screenshot.
3. **⚖️ The Literalist** — takes every word at face value, notices every unhedged absolute ("always", "obviously", "simple"), every promise ("will", "by Friday"), every number. What commitments did the author just legally make?
4. **🦊 The Adversary** — a competitor, opposing counsel, or hostile commenter looking to quote the text out of context. Which sentence is the weapon? (Every text has one.)

## The report

```
## Verdict: SEND / FIX FIRST / REWRITE  (one-line reason)

## What the Skimmer got: "..."   ← if this is wrong, everything else is moot

## Findings (max 6, ordered by damage)
For each: severity 🔴🟠🟡 · the exact quoted phrase · which reader ·
the misreading · the fix (rewritten phrase, ready to paste)

## The Adversary's quote: the single most weaponizable sentence + defusal

## Ask check: is the ask/CTA findable in 3 seconds, singular, and unambiguous?
   (Texts with two asks get zero responses.)
```

## Fixing rules
- Fixes must preserve the author's voice and intent — red-teaming is not corporate-blandification. If the author is being deliberately spicy, protect the spice and armor it instead.
- Rewrite only the failing phrases, not the whole draft, unless verdict is REWRITE.
- Tone tax: every hedge added costs clarity. Prefer *precision* over *softening* ("by Friday" → "by Friday, assuming X arrives Wednesday" — not "hopefully sometime soon").
- If the draft is fine, say SEND and stop. Manufacturing findings to seem thorough teaches the user to ignore the red team.

## Special modes (auto-detect)
- **High-stakes upward** (to boss/investor/client): add a fifth reader — **The Forwarder**: this text WILL be forwarded to someone the author didn't anticipate. Who's the worst recipient, and does it survive?
- **Public post**: check for the reply-guy magnet — the tangential detail that will hijack all discussion away from the point. Recommend cutting it.
- **Non-native audience**: flag idioms and cultural references that won't travel.
