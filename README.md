-------------------------
## Learn With Me - API ##
-------------------------

This application was created for a Learn With Me session at [CodeNewbie](http://www.codenewbie.org/). This session is dedicated to learning the basics of building an API for a Ruby on Rails application, and we will be following along with [this blog post](https://codelation.com/blog/rails-restful-api-just-add-water) from [The Codelation Blog](https://codelation.com/blog/) in order to construct a basic API.  

# About the Application  

This application has two models with corresponding RESTful controllers & pages - Artist and Album. Artist has_many albums and Album belongs_to artist. An Artist has & must have a name. An Album has & must have both a title and an artist_id. Models and controllers are tested using ActiveSupport::TestCase and fixtures. The layouts are built using the twitter-bootstrap-rails gem.  

# Get it up and running  

+ clone the repo
+ cd into learn-api
+ bundle install
+ if you want to, run tests with bundle exec rake
+ if you are struggling to get the application up and running, feel free to email me at wendybeth010[at]gmail[dot]com with problems/concerns.