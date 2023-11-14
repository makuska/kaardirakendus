# Akustikaproov II

## Backend

Run BE [docker](https://hub.docker.com/r/saskia02/kaardirakendus):

	.env setup:
		1. add .env to the root folder.
		2. add 2 values into the .env file:
			a. POSTGRES_USER=<usrName>
			b. POSTGRES_PASSWORD=<pwd>

		* when trying to run or build with out .env file follow these commands:
			a. docker build --build-arg POSTGRES_USER=<usrName> --build-arg POSTGRES_PASSWORD=<pwd> -t your_image .
			b. docker run --env POSTGRES_USER=<usrName> --env POSTGRES_PASSWORD=<pwd>

	Run docker:
		1. add the .env file
		2. Run: docker-compose up (-d)
		3. ????
		4. profit

		* You could also add the varables in side of the docker-compose.yml file and skip .env file:
			  service_name:
				  environment:
			      	- POSTGRES_USER=<usrName>
			      	- POSTGRES_PASSWORD=<pwd>


Run BE locally:

You need Java and PostgreSQL installed. Create env.properties file in src/main/resources where DB_URL, DB_USER, DB_PASSWORD will be the values for connectiong to your PostgreSQL database. When running backend Flyway will automagically create DB and prefill it with data.


### Deploy to docker hub:
Run: .\build-and-deploy-img.bat
