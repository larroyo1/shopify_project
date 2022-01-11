# Shopify Internship Challenge

CRUD application that allows you to manage a warehouses inventory by viewing, creating, editing, and deleting it's items. Built for the Shopify internship opportunity.

## Author 

- Luis Arroyo [github](https://github.com/larroyo1)

## Technologies Used

- Rails Version 5.2.6
- Ruby Version 2.7.2 
- Postgresql Database
- Test Suite built with RSpec

Ruby gems used for testing: Launchy, Capybara, shoulda-matchers, & Pry

## Getting Started 

If you need to setup your enviornment with Rails, click [here](https://www.digitalocean.com/community/tutorials/how-to-install-ruby-on-rails-with-rbenv-on-macos) 

1. Clone this repo to your local enviornment
2. Enter the root directory of this project 
3. Run the following in your terminal: 
  - ```bundle install``` 
  - ```rails db:{create,migrate,seed}```
  - ```rails s```
4. Visit 'localhost:3000' in your web browser to see the app in action! 

You can also see the app deployed [here] (https://safe-spire-76414.herokuapp.com)

If you would like to run the test suite, run: 
```bundle exec rspec```

## Database Design 

This app uses a postgresql database with two tables: 

1. A warehouses(parent) table that has one column for location.
2. A items(child) table with three columns for name, quantity, and price of the item.

The relationship is a one to many relationship, meaning a warehouse has many items, and an item belongs to one warehouse.

![Screen Shot 2022-01-10 at 12 58 56 AM](https://user-images.githubusercontent.com/79363697/148733846-2ab58d48-f3ed-46c2-9bc7-425a21dc5218.png)
