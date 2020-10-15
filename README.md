[![Planning Poker](public/logo.png "Planning Poker")](https://github.com/resultdoo/planning-poker "Planning Poker")

> Planning poker, also called Scrum poker, is a consensus-based, gamified technique for estimating, mostly used to estimate effort or relative size of development goals in software development. In planning poker, members of the group make estimates by playing numbered cards face-down to the table, instead of speaking them aloud. The cards are revealed, and the estimates are then discussed. By hiding the figures in this way, the group can avoid the cognitive bias of anchoring, where the first number spoken aloud sets a precedent for subsequent estimates.

This is a ready to deploy Planning Poker application based on React, Hasura and NodeJS.

Made with :heart: at RESULT d.o.o.

## Live app

The app can be used at [plan-poker.app](https://plan-poker.app).

The rooms are valid for 8 hours (after that JWT tokens expire).

## Local development

For local development certificates are already generated (for issuing JWT tokens).

The frontend is located in the `frontend` directory, the game service (creating games and custom logic) is located in the `game_service` directory.

> Setting up environment

    git clone git@github.com:resultdoo/planning-poker.git --recurse-submodules
    docker create network sprint-planning-poker
    docker compose build
    docker compose up
    hasura migrate apply --admin-secret <ADMIN-SECRET>
    hasura metadata apply --admin-secret <ADMIN_SECRET>

> Running project

In the root folder do the following to show the frontend:

    cd frontend/
    yarn install
    yarn start:dev

## Creating your own instance

*If you fork this project or use it at your own company, please let us know so we can add it to our list of users.*

For production use, certificates must be generated like so:

> Certiticate generation

    openssl genrsa -out private.pem 2048
    openssl rsa -in private.pem -pubout > public.pem

> Printing certificates

    awk -v ORS='\\n' '1' private.pem
    awk -v ORS='\\n' '1' public.pem

Public key goes into Hasura config in `HASURA_GRAPHQL_JWT_SECRET`, private key goes into `PRIVATE_KEY `build environment variable in game service.

Docker files are located in their respective folders for custom deployment on your infrastructure.

## Authors and contributions

[![RESULT d.o.o.](public/result.png "RESULT d.o.o.")](https://www.result.eu/graphql "RESULT d.o.o.")

Pull requests are always welcome.