---
name: ftg
description: Fetch and triage PR review comments on the current branch's open PR, verify them against a local worktree containing the PRs branch code, apply your recommendation, answer the comment, and resolve the thread. Then report back with each decision and its reason why.
---

For the mentioned PR(s):
- Load the issue, PR description, asana task context where applicable.
- Ensure there is a local worktree pointing at the PRs branch
- Use gh cli graphql api to pull all unresolved and unanswered review threads
- For each, verify their claim against the local worktree copy and any relevant
  and accessible official documentation online
- Decide whether this suggestion represents an improvement to the solution
  proposed for the issue stated.
- If you decide the suggestion represents an improvement, make the changes,
  commit, push, post a reply to the thread with the commit hash that addresses
it, write a brief description of why it represents a real improvement, and
resolve the thread.
- If you decide the suggestion is not worth applying, reply to the the thread
  with a brief description of why this is not a correct suggestion, and resolve
the thread

Once you are done, with theses steps, for each of the mentioned PRs, make sure
prompt the user in this chat session with a summary per review thread of what was
suggested, why it was suggested, what decision was made, how it was verified, and what was changed if applicable.

<example>
Suggestion: [suggestion]
Reason: [reason]
Decision: [Address/Discard]
Reason: [reason]
Verification: [verification]
Changes: Conditional updated at (xyz.ts:120), etc
</example>

