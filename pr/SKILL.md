---
name: pr
description: Use this to create a Github Pull Request
---

Gather the context for this PR from the branch itself: read the commit messages (`git log main..HEAD`) and the diff to understand what changed and why.
If a plan or task file happens to be present (for example `.claude/plans/plan.md`, `.claude/plans/task.md`, or another file under `.claude/plans/`), use it as additional context — but do not require one. The report must be produced from the branch's commits and diff when no such file exists.
Compare this branch to main
Provide a report of the changes
Include a section titled "Change breakdown" that classifies the changes by the role they play, before any of the diagram sections. Use three subsections: (1) Core changes — the changes that directly implement the PR's intent (the essence; everything else exists to support these). If the PR has more than one distinct goal, identify a core for each. (2) Ramification changes — changes that are forced consequences of a core change rather than independent decisions (e.g. removed dead code paths, re-wired call sites, added dependencies and lockfile churn, new prerequisites); for each, state which core change it falls out of and why it was unavoidable. (3) Non-changes — changes that are neither core nor ramification, such as documentation, comments, and renames, plus notable files a reviewer might expect to change but that were deliberately left untouched (state why). Name the specific files in each subsection. End with one sentence naming the single decision that cascades into the most files.
Include a section with a mermaid diagram showing which part of the system architecture was changed, how, and why
Include a section with a mermaid diagram showing which part of the codebase architecture was changed, how, and why
If applicable, Include a section with a mermaid diagram showing a low fidelity UI sketch of the change, how it was changed, and why
Include a detailed section about which tests were added or changed, a sub section for unit tests, and a sub section for integration tests, and a sub section for e2e tests. Make sure to add a brief max-2 line summary of what the test does, how are they relevant to the changes made, and what is being mocked for the test to run. Also what was the reasoning behind making a test either unit, integration, or e2e.
Include a section on how to test this PR. Do not include how to run the branch locally. Only include steps for after the app is running locally. Make sure to create different list of steps if mobile and web differs for this app, if applicable. Some of our codebases contain code for web, some contain code for mobile, and some contain code for both.
Once the report is complete, open a PR against main and post the report to the PR description with collapsed sections. GitHub Markdown supports `<details><summary>` toggles. The report stays complete but sections are collapsed by default, so reviewers can expand only what they care about.
Please fetch the current branch name, to know which branch to open the PR for
