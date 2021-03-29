# Homina

Homina is a cross-platform application that stores, syncs and backs up your contacts.

## Architecture

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

## License
[ISC](https://choosealicense.com/licenses/isc/)