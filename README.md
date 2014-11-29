# Learn With Me - API

This application was created for a Learn With Me session at [CodeNewbie](http://www.codenewbie.org/). This session is dedicated to learning the basics of building an API for a Ruby on Rails application, and we will be following along with [this blog post](https://codelation.com/blog/rails-restful-api-just-add-water) from [The Codelation Blog](https://codelation.com/blog/) in order to construct a basic API.  

## About the Application  

rails  -v: 4.1.4  
ruby   -v: 2.0.0p481  

This application has two models with corresponding RESTful controllers & pages - Artist and Album. Artist has_many albums and Album belongs_to artist. An Artist has & must have a name. An Album has & must have both a title and an artist_id. Models and controllers are tested using ActiveSupport::TestCase and fixtures. The layouts are built using the twitter-bootstrap-rails gem.  

## Get it up and running  

### If you would like to push the code to your own GitHub account for future reference:  

+ Fork the GitHub repo & clone to your machine  

### Else, you can just:  

+ Clone the repo  

### Make sure nothing is broken 

+ cd into learn-api
+ bundle install
+ run tests with bundle exec rake

### If anything goes wrong  

+ Feel free to send me an email:
	+ wendybeth010 [at] gmail [dot] com  
+ Or submit an issue