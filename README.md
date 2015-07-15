Creamofthecrop
================

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

This application was generated with the [rails_apps_composer](https://github.com/RailsApps/rails_apps_composer) gem
provided by the [RailsApps Project](http://railsapps.github.io/).

Rails Composer is open source and supported by subscribers. Please join RailsApps to support development of Rails Composer.

Problems? Issues?
-----------

Need help? Ask on Stack Overflow with the tag 'railsapps.'

Your application contains diagnostics in the README file. Please provide a copy of the README file when reporting any issues.

If the application doesn't work as expected, please [report an issue](https://github.com/RailsApps/rails_apps_composer/issues)
and include the diagnostics.

Ruby on Rails
-------------

This application requires:

- Ruby 2.2.2
- Rails 4.2.1

Learn more about [Installing Rails](http://railsapps.github.io/installing-rails.html).

Initial Release
---------------
I am pleased to announce that an alpha alpha (pre-alpha?) of my Iron Yard demo day app is currently live on Heroku [here](http://creamofthecrop.herokuapp.com/).


A couple of notes about it:


1. All it does right now is take a roster of the user’s wrestlers and organize them based on card position and alignment, and then “generate card!” button creates a list of matches between random heel and face wrestlers at particular card positions (1 each for the Main Event and Undercard, 2 each for the High Card, Mid Card, and Low Card).


2. Since an entire card is eight matches, this means that you need at least 16 wrestlers loaded into the app for the match generation to work properly. While you might have fun inventing that many wrestlers (and I certainly will for my demo day), if you want to see how the app works RIGHT NOW, I’ve created a user that has a random assortment of 30 wrestlers already. You may sign in as Ulrich User  with email “ulrichuser@example.com”  with password “ulrichuser”.


3. The google oauth works, but I would suggest that you create an account with your real email first, and then sign in with the ouath, since the sign up page allows you to enter your name and the name of your wrestling promotion.


4. Alternatively, feel free to sign up with a fake email address as long as it is of the form words@example.com. The only drawback to this is that my password recovery *does* work, and *does* require a real email address to send to.


5. Everything about the app is still a work in progress, but especially the front end CSS stuff. I know a lot of it is ugly, it is being worked on. Suggestions are super appreciated though.


6. Don’t get too attached to anything you save only in the database; I’m probably going to have to introduce the database to little Bobby DROP_TABLES a few times before this is over.


In general, I welcome your questions, comments or concerns.

Documentation and Support
-------------------------

-------
