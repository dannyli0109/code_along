## 1. Create new rails app with postgresql without tests:

```
rails new my_awesome_app -d=postgresql -T
cd my_awesome_app
```

## 2. Create the database based on default settings in database.yml

```
rails db:create
```
## 3. use a **resource** generator to generate:
a **model**, a **controller** and a **migration** file:
```
rails generate model product name:string description:text  
```
or use a model generator to generate:
a **model** and a **migration** file:
```
rails generate resource product name:string description:text
```
## 4. run migrations to create tables

```
rails db:migrate
```

controller name and view folder name are based on your route

## 5. given the following route:

```ruby
get '/things', to: 'products#index'
```

the controller name will be **products**, the method inside the controller will be **index**, the index.html.erb will be in a sub folder named **products** and the controller filename will be **products_controller.rb**

```ruby
class ProductsController < ApplicationController

  def index
  end

end
```
view template for index `/views/products/index.html.erb`

model file `product.rb` and filename: **always** singular

```ruby
class Product < ApplicationRecord
end
```







