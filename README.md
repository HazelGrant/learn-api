# Learn With Me - API

This application was created for a Learn With Me session at [CodeNewbie](http://www.codenewbie.org/). This session is dedicated to learning the basics of building an API for a Ruby on Rails application, and we will be following along with [this blog post](https://codelation.com/blog/rails-restful-api-just-add-water) from [The Codelation Blog](https://codelation.com/blog/) in order to construct a basic API.  

## About the Application  

rails  -v: 4.1.4  
ruby   -v: 2.0.0p481  

This application has two models with corresponding RESTful controllers & pages - Artist and Album. Artist has_many albums and Album belongs_to artist. An Artist has & must have a name. An Album has & must have both a title and an artist_id. Models and controllers are tested using ActiveSupport::TestCase and fixtures. The layouts are built using the twitter-bootstrap-rails gem.  

We will be working on the branch 'build-api'.  

## Troubleshooting Lessons Learned
- restart your server after you mess with your routes
- make sure you install kaminari gem; jbuilder came with with the original fork
(and I think with Rails)
