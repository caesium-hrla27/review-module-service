# review-module-service

This is a workspace to develop reviews module of Caesium-hrla27 Nike webpage mock-up.

# How to start this app

First, make sure postgreSQL is installed in your computer. If you are using macbook pro, postgreSQL app from the link provided below will be useful.

Detailed instructions here: 
- For mac users:
  - Install postgreSQL app from: <https://postgresapp.com/>

Then, start the postgreSQL app, 

1. **npm install**
2. **npm start**

On another terminal, start postgresql by entering:

**psql**

Once you are in the postgresql terminal, enter the following command:

**CREATE DATABASE review_module** 

to the terminal window. Now you should have seeded the data!

Once data are seeded, do:

**npm run build**

Now the app should be rendering in port 3003 from the localhost.

# For my personal todos -- You may disregard from here on.

## TODO:

### Initialization

- [x] Setup initial file structure

### Front-end TODO

- [x] Create drop down menu
  - [x] Create static "Free Shipping & Returns" menu
    - [x] Dynamically hide and show texts
  - [x] Create dynamically rendering "Reviews" menu
    - [x] Create "More Reviews" button for pop up window
  - [ ] Create dynamically rendering "More Info" menu
    - [ ] Request review data to the server
- [x] Create review page in the pop up window

### Back-end TODO

- [x] Learn how to use PostgreSQL
- [x] Implement the database schema
- [ ] Generate random review data
  - [x] Generate initial dummy data
  - [ ] Use sentencer
- [ ] Refactor server for interaction with database