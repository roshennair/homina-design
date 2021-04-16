# Homina Design Document

**Author:** Roshen Nair

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
## Table of Contents

- [Introduction](#introduction)
- [Context](#context)
- [Scope](#scope)
  - [Goals](#goals)
  - [Non-Goals](#non-goals)
- [User Interfaces](#user-interfaces)
- [System Architecture](#system-architecture)
  - [System Overview](#system-overview)
  - [Front End Architecture](#front-end-architecture)
  - [Server Architecture](#server-architecture)
  - [Data Storage](#data-storage)
- [Milestones](#milestones)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Introduction

The purpose of this document is to provide an in-depth description of Homina's design and architecture in its entirety. The document first provides some context for the necessity of this system i.e. the *why* behind Homina. Next, the scope of the project is explained in terms of its primary goals and quantifiable success metrics. The user interfaces section then showcases mockups of both the web and mobile UIs while conveying the intended end-to-end user experience. Next, the document takes a deep-dive into Homina's technical architecture, explaining the various interlinking components on both the clients and the server. Finally, the document goes over all major milestones from inception to completion of the project.

## Context

The reason I started this project was to gain a deeper understanding of the process of designing, building and deploying a full-stack application from scratch. I decided to pick a simple problem to solve, contact storage, because I found that existing solutions are either subpar or require us to trust large technology corporations with our personal data. I decided that I would try to create a simple open-source solution to the problem of contact storage while building on the ideas and issues faced by existing solutions. During the design phase of this project, feature development and UX flow was centered around the user story of a hypothetical user named **David**.

As David, I want to save my contacts online, so that I can access them from any location via any Internet-connected device. I also want to back up all my smartphone contacts, so that I don't have to worry about losing any of my data. This would also make it effortless for me to migrate my contacts over to new digital devices at a moment's notice. However, I need to be sure that my data is kept secure and private so that I can rest assured that malicious individuals or organizations aren't exploiting my data for profit. I would also like to group contacts into different categories or labels, so that they can be easily found at a moment's notice. Besides that, I want to be able to update my contacts in real time, so that these updates will be reflected on all my digital devices instantly. Above all, I want contacts storage to be both intuitive and frictionless in my daily life, such that it runs in the background with minimal configuration. Any proposed solutions to this problem need to make my life easier and save me both time and effort, instead of requiring me to do any extra work.

## Scope

### Goals

### Non-Goals

## User Interfaces

## System Architecture

### System Overview

![Homina Architecture](./HominaArchitectureV1.png)

Homina is a cross-platform application that stores, syncs and backs up users' contacts on the cloud. It consists of a front end written in React (web) and React Native (mobile), a web server written in Node.js and Express, a Redis cache for session storage, and a PostgreSQL database for contacts storage. The back end (server and database) is hosted on Heroku while the front end (web and mobile clients) is hosted on and distributed via Netlify.

### Front End Architecture

### Server Architecture

### Data Storage

## Milestones