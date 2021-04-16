# Homina

Homina is a cross-platform application that stores, syncs and backs up your contacts.

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->
## Table of Contents

- [Architecture Overview](#architecture-overview)
- [License](#license)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## Architecture Overview

- Backend:
	- REST API: NodeJS
	- Database: PostgreSQL
		- Password hashing: Argon2id
	- Hosting: Heroku
	- Authentication: Sessions (in a Redis cache)
- Frontend:
	- Web: React
	- Mobile: React Native
	- Hosting & CDN: Netlify

For an in-depth discussion of Homina's design and architecture, visit [Homina's official design doc](./design/DESIGN.md).

## License
[ISC](https://choosealicense.com/licenses/isc/)