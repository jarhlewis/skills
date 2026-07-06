---
name: cp
description: Checkpoint the current session so I can resume it later. Writes a durable handoff doc to disk, then creates a self-addressed Gmail draft containing the full conversation context, next steps, and full-path pointers to where the context lives on this machine. Use when I run /cp, say "checkpoint", "save context", or "I need to continue this in a new session later".
---

# /cp — Checkpoint & handoff

Your job: capture everything needed to resume this exact session later, in two durable places — a **handoff doc on disk** and a **self-addressed Gmail draft** that points at it. Then stop. Do not continue the underlying task.

## Why both

The email is the trigger I'll see later; the on-disk doc is the durable source of truth the email points at. The email MUST reference the doc using **absolute full-path strings** so a fresh session can `Read` it immediately.

## 1. Write the handoff doc to disk

Pick the most relevant repo/project for this work. Write to `<project-root>/docs/HANDOFF.md` (create `docs/` if needed). If there is no natural project yet, use the session scratchpad and say so in the email.

The doc must contain, in this order:

1. **What this is** — one-paragraph summary of the goal and current status/phase.
2. **Decisions locked so far** — every decision made this session, with the reasoning. If the session was a grill/design, number them to match the questions.
3. **Findings** — any research, technical facts, API details, constraints, or gotchas discovered (with sources/URLs where relevant). Do not make me re-derive these.
4. **Open items / where we paused** — the exact next unresolved question or step.
5. **Next steps** — the ordered plan to resume.
6. **Where context lives** — full absolute paths to every relevant file (this doc, project root, any artifacts, config).
7. **How to resume** — the literal sentence to paste into a new session.
8. **Bigger picture** — how this fits into any larger effort (other tasks, IDs, related repos).

## 2. Create the Gmail draft

Create a draft with the Gmail tool (`create_draft`), **addressed To: me** (default to my own email). The draft is a self-note — write it as one.

- **Subject:** `<Project> — resume context (<phase / where paused>)`
- **Body:** a condensed mirror of the handoff doc — the decisions, findings, open item, and next steps — PLUS a **"WHERE THE CONTEXT LIVES ON THIS MACHINE (full paths)"** block listing every absolute path, and a **"TO RESUME"** line with the exact sentence to paste into a new session.
- Keep the body plain-text-friendly (this is a note to self, not client-facing copy — the abtion-tone skill does not apply).

## 3. Report back

Tell me: the subject of the draft, the full path of the handoff doc, and the one-line resume instruction. Then note the account caveat: the draft lives in whichever Google account is connected to the Gmail integration, addressed to me — if that connected account isn't my primary, say where to look. Offer to verify the authenticated mailbox if unsure.

## Notes

- This skill is **read-only on the underlying task** — it captures state, it does not advance the work. After checkpointing, stop.
- If Gmail isn't authenticated, still write the handoff doc, then say the draft step was skipped and print the full email body so I can save it manually.
- Prefer updating an existing `HANDOFF.md` over creating a duplicate if one already exists for this project.
