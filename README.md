For local development certificates are already generated (for issuing JWT tokens). For production use, certificates must be generated like so:

> Certiticate generation

    openssl genrsa -out private.pem 2048
    openssl rsa -in private.pem -pubout > public.pem

> Printing certificates

    awk -v ORS='\\n' '1' private.pem
    awk -v ORS='\\n' '1' public.pem

Public key goes into Hasura config in **HASURA_GRAPHQL_JWT_SECRET**, private key goes into **PRIVATE_KEY** build environment variable in game service.

> Running project

    git clone https://gitlab.result.si/GraphQL/planning-poker/game-service.git game_service/
    git clone https://gitlab.result.si/GraphQL/planning-poker/frontend.git frontend/
    docker create network sprint-planning-poker
    docker compose build
    docker compose up
    hasura migrate apply --admin-secret <ADMIN-SECRET>
    hasura metadata apply --admin-secret <ADMIN_SECRET>
