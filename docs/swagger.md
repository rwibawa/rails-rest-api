You can show interactive API documentation in Rails **exactly like Swagger UI** by using **RSwag**, the official and widely‑used Swagger/OpenAPI toolkit for Rails. RSwag generates OpenAPI specs from your RSpec request tests and serves a built‑in Swagger UI inside your Rails app.   [Github](https://github.com/rswag/rswag/blob/master/README.md)  [Github](https://github.com/rswag/rswag?tab=readme-ov-file)  [RubyDoc.info](https://www.rubydoc.info/github/rswag/rswag/master)  [deepwiki.com](https://deepwiki.com/rswag/rswag/4-rswag-ui:-interactive-api-documentation)

---

## ✅ Concise takeaway  
Install **rswag-api**, **rswag-ui**, and **rswag-specs**, run the generators, write RSpec request specs using RSwag’s DSL, and Rails will automatically expose a Swagger UI page (usually at `/api-docs`).   [rubystacknews.com](https://rubystacknews.com/2025/06/09/generating-executable-api-documentation-for-ruby-on-rails-with-rswag/)

---

## 🚀 Step-by-step: Add Swagger UI to Rails using RSwag

### **1. Add the gems**
```ruby
# Gemfile
gem 'rswag-api'
gem 'rswag-ui'

group :development, :test do
  gem 'rswag-specs'
  gem 'rspec-rails'
end
```
  [rubystacknews.com](https://rubystacknews.com/2025/06/09/generating-executable-api-documentation-for-ruby-on-rails-with-rswag/)

Then install:
```bash
bundle install
```

---

### **2. Install RSwag components**
```bash
rails g rswag:api:install
rails g rswag:ui:install
RAILS_ENV=test rails g rswag:specs:install
```
These generators:  
- Mount `/api-docs` route  
- Add initializers  
- Scaffold OpenAPI helpers  
  [rubystacknews.com](https://rubystacknews.com/2025/06/09/generating-executable-api-documentation-for-ruby-on-rails-with-rswag/)

---

### **3. Write API documentation inside RSpec tests**
RSwag uses a Swagger‑based DSL inside request specs. Example:

```ruby
require 'swagger_helper'

RSpec.describe 'Posts API', type: :request do
  path '/posts' do
    get 'List posts' do
      tags 'Posts'
      produces 'application/json'

      response '200', 'posts found' do
        run_test!
      end
    end
  end
end
```

RSwag automatically generates OpenAPI JSON/YAML from these tests.  
  [Github](https://github.com/rswag/rswag/blob/master/README.md)

---

### **4. View Swagger UI**
Start your Rails server:

```bash
rails s
```

Visit:

```
http://localhost:3000/api-docs
```

You’ll see a full Swagger UI interface served by RSwag’s Rails engine.  
  [deepwiki.com](https://deepwiki.com/rswag/rswag/4-rswag-ui:-interactive-api-documentation)

---

## 🧠 Why RSwag is the recommended solution
- Generates **OpenAPI 3.0** specs automatically from tests  
- Ensures documentation stays in sync with real behavior  
- Bundles a full **Swagger UI** viewer  
- Supports authentication schemes, examples, schemas, versioning  
  [Github](https://github.com/rswag/rswag/blob/master/README.md)  [deepwiki.com](https://deepwiki.com/rswag/rswag/4-rswag-ui:-interactive-api-documentation)

---
