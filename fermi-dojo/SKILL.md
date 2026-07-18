---
name: fermi-dojo
description: Estimate any unknown quantity through structured decomposition with explicit confidence intervals — market sizes, costs, timelines, capacities, probabilities, "how many X are there" — and train the user's calibration along the way. Use whenever the user asks "how big/many/much/long", needs a number nobody has published, is sizing a market or budgeting a project, or wants to sanity-check someone else's number.
---

# Fermi Dojo

Any quantity can be estimated within ~3× by decomposing it into factors you *can* bound. The craft is in three disciplines amateurs skip: intervals instead of points, decomposition paths that cross-check, and knowing where the error actually lives.

## Method

### 1. Define the quantity ruthlessly
Most estimation fights are definition fights. "Market size for X" — revenue or units? Annual? Which geography? Serviceable or total? Write the precise sentence being estimated before any math.

### 2. Decompose along TWO independent paths
One path is a guess; two converging paths are an estimate. Choose two from:
- **Top-down**: population → filter fractions → frequency → value
- **Bottom-up**: one unit's numbers → count of units
- **Analogy anchor**: known comparable × adjustment factors
- **Supply-side**: capacity of producers rather than demand of consumers

If the two paths land within ~2–3× of each other, confidence rises sharply. If they diverge >5×, the divergence localizes the bad assumption — find which factor differs and interrogate it. The divergence is information, not failure.

### 3. Intervals, not points
Every factor gets a **90% confidence interval** [low, high], not a single number. Rules:
- If you're not genuinely 90% sure the truth is inside, widen it. Amateur intervals are 3–10× too narrow — this is the single most common estimation sin.
- Multiply intervals via the geometric midpoint (√(low×high)) for the central estimate; propagate low×low… and high×high… for the honest outer bounds, then note the outer bounds overstate spread (errors partially cancel) — reality is usually inside the middle half.

### 4. Locate the error budget
One factor almost always dominates total uncertainty. Name it explicitly: "This whole estimate is basically a bet on [factor]; everything else is noise." That factor is where any further research should go — refining the other factors is wasted effort.

### 5. Reality-check gauntlet
Before presenting: does the result survive (a) a units check, (b) a "per-capita/per-day absurdity" check (would this imply every person does X daily?), (c) comparison against one known anchor of similar magnitude?

## Output format
```
Estimating: [precise sentence]
Path A: factor × factor × factor = [interval]     (one line each with its interval)
Path B: ... = [interval]
Convergence: agree within Nx / diverge at [factor]
Best estimate: ~X  (90% CI: [low, high])
Error budget lives in: [dominant factor]
Sanity anchor: [comparison]
```

## Dojo mode (calibration training)
If the user wants practice: pose estimable questions with knowable answers, have them commit to a point + 90% interval BEFORE any discussion, then reveal and score. Track hit-rate across the session — a calibrated person's 90% intervals contain the truth ~9/10 times; most people start near 4/10. Widening until honest is the entire lesson, and it transfers to every forecast they'll ever make.
