# review-module-service

This is a workspace to develop reviews module of Caesium-hrla27 Nike webpage mock-up.

## How to start this app

> First, make sure postgreSQL is installed in your computer. *If your postgreSQL is already set up, skip this block quotes.* If you are a mac user and have not yet installed your postgreSQL, try using postgreSQL app from the link provided below. I highly recommend using one.
> 
> Detailed instructions here: <https://www.postgresql.org/docs/11/tutorial-install.html>
> 
> If this is your first time installing postgreSQL, please refer to the following link: <https://www.postgresql.org/docs/11/installation.html>
> 
> Macbook has a postgreSQL app that would make database management easier. Please check the following link: <https://postgresapp.com/>
>
> **When setting up the postgreSQL, make sure you reload the terminal after everything is configured.**

Once you are in the postgreSQL terminal, enter the following command:

`CREATE DATABASE review_module;`

Once your database is created, follow the following commands from the root of this repo to install dependencies, seed mock data, and start the server:

1. `npm install`

2. `psql review_module < ./reviewDataBackup.sql`

3. `npm start`

Now the app should be rendering in port `3003` from the `localhost`.

**If you want to generate more reviews,** uncomment the commentGenerator function in dataGenerator.js. Then use any number 'n', with the function: `commentGenerator(n)`.

## TODOs -- Please disregard from here on: 

### Initialization

- [x] Setup initial file structure

### Front-end TODO

| Checklist | Tasks |
| :-------: | ----- |
| [x] | Create drop down menu |
| [x] | Create static "Free Shipping & Returns" menu |
| [x] | Dynamically hide and show texts |
| [x] | Create dynamically rendering "Reviews" menu |
| [x] | Create "More Reviews" button for pop up window |
| [x] | Request review data to the server |
| [x] | Create review page in the pop up window |
| [x] | Create nav bar in the pop up window |

### Back-end TODO

| Checklist | Tasks |
| :-------: | ----- |
| [x] | Learn how to use PostgreSQL |
| [x] | Implement the database schema |
| [x] | Generate random review data |
| [x] | Generate initial dummy data |
| [x] | Refactor server for interaction with database |