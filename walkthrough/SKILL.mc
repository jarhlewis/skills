---
name: walkthrough
description: Inspect the codebase at hand to provide a thorough onboarding walkthrough of the codebase. Use this only when the user asks for it because the user may already be familair with the codebase.
---

Provide the with a concise top-down index-like walkthrough of this codebase across the following dimensions

## Domain

* What are the core models in this system?
* What are the auxiliary models in this system?

## System design

* What are the different components of the system design of this codebase, and how do they interact with each other?
* Which ones are owned, which ones are open source, and which ones are commercial third parties?

## Stack

* What tools are used to run the lifecycle of the development->release of this codebase?
* What is the tech stack and runtimes that host the logic this application is about?

## Codebase architecture

* How are the files organized in this codebase? 
* What are the different modules that compose it? 
* What are the seams? 
* How is data fetched? 
* How is data serverd?
* How are the core models inserted into the system, how are they read and by who?
* How does the folder structures serve as the taxonomy for the behaviors found?
* Are there any known patterns used?

## Entrypoints: UIs, APIs, and Jobs

* What are the different user roles, third party systems, and background jobs that trigger a data flow in this system? Group them by the taxonomy reflected in the file system structure.
* What are the data flows that these entry points trigger?
* What are the data flows triggered automatically by time triggers such as background jobs? 

## Side effects

* What are the most common business logic side effects of each dataflow?

## Cross cutting concerns

* How are Logging, Audit logging, Observability, Metrics, Monitoring handled?
