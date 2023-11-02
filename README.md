# Akustikaproov II

## Backend

Run BE [docker]([DockerHub](https://link-url-here.org):

1. Run: docker-compose up (-d)
2. ????
3. profit


Run BE locally:

You need Java and PostgreSQL installed. Create env.properties file in src/main/resources where DB_URL, DB_USER, DB_PASSWORD will be the values for connectiong to your PostgreSQL database. When running backend Flyway will automagically create DB and prefill it with data.


### Deploy to docker hub:
Run: .\build-and-deploy-img.bat