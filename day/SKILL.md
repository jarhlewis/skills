---
name: day
description: Morning intake & day-planning. Read-only — gathers GitHub notifications, Asana tasks/activity, Slack, and email, folds in any objectives I provide, and produces a ranked plan of what to ship today. Use when I run /day or ask to plan my day / triage my morning.
---

# /day — Morning intake & plan

You are doing **read-only** morning triage. Your job is to gather everything, synthesize, and propose a ranked plan — then stop. How each selected item gets handled afterward is my decision, not yours.

## Hard rule: read-only

Do NOT post, comment, create, close, assign, reply, send, or modify anything in GitHub, Asana, Slack, email, or the repo. No side effects. If you think something needs an action, list it as a recommendation — never take it.

## 1. Gather (in parallel)

Run these concurrently and fail soft — if one source errors or isn't authenticated, note it and continue with the rest.

- **GitHub notifications:** `gh api notifications` — group by repo. Flag separately: (a) PRs awaiting MY review, (b) my own PRs with new CI / Gemini / review activity, (c) @-mentions, (d) everything else.
- **Asana:** my incomplete tasks due today or overdue (`get_my_tasks`), PLUS tasks modified in the last 24h where I'm assignee or collaborator. State explicitly that this **approximates** my Asana Inbox — the MCP has no true notification feed.
- **Slack:** unread messages and @-mentions in my active channels and DMs from the last ~24h. Summarize any thread that needs a decision from me.
- **Email:** unread mail needing action from the last ~24h. If Gmail isn't authenticated, say so in one line and skip — do not block on it.

## 2. Fold in my objectives

If I included objectives or client requirements when invoking (text after `/day`), treat them as first-class inputs and weight the plan toward them. If none were given (e.g. an unattended scheduled run), proceed with what you gathered and note that no objectives were supplied this morning.

## 3. Produce the plan

Output, in this order:

1. **Ranked candidate items for today.** Each tagged `[delegatable]` (scope is clear enough to hand off) or `[needs-me]` (decision, comms, review, meeting). For each: a one-line scope and the repo / Asana task / Slack thread it maps to.
2. **Blocked / waiting-on-someone-else.**
3. **Recommended 2–3 items to prioritize this morning**, with WHY those and not the others.
4. **Source-gathering notes:** which sources were read, which failed or were skipped (e.g. Gmail not connected).

## 4. Stop

- If running interactively: end by asking which item(s) I want to focus on — then stop and wait. Do NOT start grilling, plan implementation, or propose how to tackle them; I decide how to route each item myself.
- If running unattended (no human to answer): just present the plan and stop.
