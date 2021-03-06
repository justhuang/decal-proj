# Project Summary

Food Delivery program for a restaurant.

**Figma prototype: https://www.figma.com/file/WjuxVWpCzM7amQ9LNa0lKhB4/Rails-Proj**

The software is designed for one restaurant only and each customer can only order one meal

The main components are:

- **Employees** (manager)
- **Meals** that can be ordered
- **Orders** made by customers, and assigned to a manager

Please make sure you consistently keep your repo up to date by running git pull origin master. If you're having bundle install issues, feel free to reach out to me for help.

## 1 - (`Meal`)

The restaurant sells meals, so we will store the meals that belong to the customer in a database. Each meal has a name and a price.

Then let's move to the controller. Here are the **user actions** we want to implement:

- `List` all meals available in the restaurant
- `Add` a new meal

## 2 - (`Employee`)

The restaurant has only one type of employee: **manager**.
Employees are assigned orders automatically based on how many existing orders they already have. 


With a username and password, we can implement a **login** logic in our app to have one dashboard for the manager
Now when you run the food delivery app, the first thing you can do is to **sign in**, then you will see a dashboard with commands.


## 3 - (`Order`) Link all the models here.

An order is taken for a customer, containing a **meal** (to simplify things, let's say that an order can only contain **one meal**) and is then assigned to a given **employee**. The orders are automatically assigned to employees based on how many orders they already have. Finally, the `Order` model needs to record whether or not the meal has been delivered.

Then, we need to make sure that the following actions are implemented in the program:

As an manager, I can:
-log in
-add a meal
-view all meals
-view all orders

# Food Delivery

The software is designed for one restaurant only and each customer can only order one meal.
The customer and employees will be able to login through a UI.
Once logged in, each will be presented with a host of options.


The employee would be able to:
```
1. Add a meal
2. List available meals
3. View all orders
4. Exit
```

The customer would be able to:
```
1. See available meals
2. Place an order
3. Exit
```


The main components are:

- **Employees** (manager)
- **Meals** that can be ordered
- **Orders** made by customers, and assigned to a manager

## Getting Started

```
rails s
```

### Prerequisites

Need to have ruby 2.3.5p installed
If not:

First we need to clean up any previous Ruby installation you might have:
```
rvm implode && sudo rm -rf ~/.rvm
sudo rm -rf $HOME/.rbenv /usr/local/rbenv /opt/rbenv /usr/local/opt/rbenv
```

Now let's get rbenv and ruby-build packages from Homebrew, they'll be useful.
```
brew uninstall --force rbenv ruby-build
brew install rbenv
```
Again, quit all your terminal windows and restart.

Now, you are ready to install the latest ruby version, and set it as the default version.
```
rbenv install 2.3.5
Once the ruby installation is done, run this command to tell the system to use the 2.3.5 version by default.

rbenv global 2.3.5
Then restart your Terminal again (close it and reopen it).

ruby -v
```

Run
```
bundle install
```
if prompted

## Deployment

Heroku Deployment
https://www.heroku.com

## Built With

* [Rails](http://rubyonrails.org/) - Back-end Web Framework
* [Javascript](React) - Front-end Web Framework

## Authors

* **Justin Huang** - **Sarah Hammond** - **Matty Choi** - **Timmy Cheng** 

## License

This project is licensed under the Rails-Decal-Project License
## Acknowledgments

* Stackoverflow 
