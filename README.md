# BOOKMARK MANAGER

Description
-------
This sinatra app allows the user to store a list of favourite urls to ensure quick browsing

User Stories 
-------
```
As a user
In order to find my saved websites quickly
I want to see a list of bookmarks 

As a time-pressed user
So that I can save a website
I would like to add the site's address and title to bookmark manager
```

Installation
-------
* $ `get clone git@github.com:CazaBelle/bookmark-manager.git`
* $ `cd bookmark-manager`
* $ `bundle` install required gems

Database Configuration
-------
$`brew install postgresql`
$`brew services start postgresql`
$ `psql` 
=# `CREATE DATABASE bookmark_manager_test;`
=# `\l` to ensure that db has been created 
=# `CREATE DATABASE bookmark_manager_development;`
=# `\l` to ensure that db has been created 
<!-- bookmark_manager=# `CREATE TABLE bookmarks (id serial PRIMARY KEY, url VARCHAR(60));` 
bookmark_manager=# `INSERT INTO bookmarks(url) VALUES ('INSERT URL HERE');` add as many url to your db table -->

ORM
-------
Datamapper_setup.rb will allow url inputed by the user to persist in the database that is created

Domain Model
-------
![](images/domain_model_bookmark_manager.png)

Extensions
-------
* Add a login page 
* Add CSS



