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