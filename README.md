# rails-rest-api

## 1. Setup
```shell
$ bin/rails g model Post title:string content:text
      invoke  active_record
      create    db/migrate/20260905040640_create_posts.rb
      create    app/models/post.rb
      invoke    test_unit
      create      test/models/post_test.rb
      create      test/fixtures/posts.yml

$ bin/rails db:migrate
== 20260905040640 CreatePosts: migrating ======================================
-- create_table(:posts)
   -> 0.0029s
== 20260905040640 CreatePosts: migrated (0.0030s) =============================

$ bin/rails g controller Posts
      create  app/controllers/posts_controller.rb
      invoke  test_unit
      create    test/controllers/posts_controller_test.rb

```

## 2. Add API docs `RSwag`
```shell
$ bin/rails g rswag:api:install
      create  config/initializers/rswag_api.rb
       route  mount Rswag::Api::Engine => '/api-docs'

$ bin/rails g rswag:ui:install
      create  config/initializers/rswag_ui.rb
       route  mount Rswag::Ui::Engine => '/api-docs'

$ RAILS=test bin/rails g rswag:specs:install
DEPRECATION WARNING: Rswag::Ui: WARNING: The method will be renamed to "openapi_endpoint" in v3.0 (called from block in <main> at /home/ryan/workspaces/workspace_ror/rails-rest-api/config/initializers/rswag_ui.rb:11)
      create  spec/swagger_helper.rb

$ bin/rails g rspec:swagger Api::V1::PostsController
DEPRECATION WARNING: Rswag::Ui: WARNING: The method will be renamed to "openapi_endpoint" in v3.0 (called from block in <main> at /home/ryan/workspaces/workspace_ror/rails-rest-api/config/initializers/rswag_ui.rb:11)
      create  spec/requests/api/v1/posts_spec.rb

$ bin/rails g rspec:install
DEPRECATION WARNING: Rswag::Ui: WARNING: The method will be renamed to "openapi_endpoint" in v3.0 (called from block in <main> at /home/ryan/workspaces/workspace_ror/rails-rest-api/config/initializers/rswag_ui.rb:11)
      create  .rspec
       exist  spec
      create  spec/spec_helper.rb
      create  spec/rails_helper.rb

$ RAILS=test bin/rake rswag:specs:swaggerize
/home/ryan/.rvm/rubies/ruby-3.2.0/bin/ruby -I/home/ryan/.rvm/gems/ruby-3.2.0@rails_api_gems/gems/rspec-core-3.13.6/lib:/home/ryan/.rvm/gems/ruby-3.2.0@rails_api_gems/gems/rspec-support-3.13.7/lib /home/ryan/.rvm/gems/ruby-3.2.0@rails_api_gems/gems/rspec-core-3.13.6/exe/rspec --pattern spec/requests/\*\*/\*_spec.rb,\ spec/api/\*\*/\*_spec.rb,\ spec/integration/\*\*/\*_spec.rb --format Rswag::Specs::SwaggerFormatter --dry-run --order defined
DEPRECATION WARNING: Rswag::Ui: WARNING: The method will be renamed to "openapi_endpoint" in v3.0 (called from block in <main> at /home/ryan/workspaces/workspace_ror/rails-rest-api/config/initializers/rswag_ui.rb:11)
DEPRECATION WARNING: Rswag::Ui: WARNING: The method will be renamed to "openapi_endpoint" in v3.0 (called from block in <main> at /home/ryan/workspaces/workspace_ror/rails-rest-api/config/initializers/rswag_ui.rb:11)
Generating Swagger docs ...
Swagger doc generated at /home/ryan/workspaces/workspace_ror/rails-rest-api/swagger/v1/swagger.yaml

Finished in 0.00314 seconds (files took 2.04 seconds to load)
7 examples, 0 failures

$ bin/rails s -p 4000
```

[Swagger UI](http://localhost:4000/api-docs/index.html)



This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
