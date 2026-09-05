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
```

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
