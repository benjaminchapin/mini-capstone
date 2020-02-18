 Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  get "/products" => "products#index"
  get "/products/new" => "products#new"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
  get "/products/:id/edit" => "products#edit"
  patch "/products/:id" => "products#update"
  delete "/products/:id/" => "products#destroy"

  namespace :api do
    # get "/product2_url" => "products#product2_action"
    # get "/product1_url" => "products#product1_action"
    # get "/all_products_url" => "products#allproducts_method"
    # get "/any_product_url" => "products#product_query_action"
    # get "/any_product_url/:id" => "products#product_query_action"
    get "/products" => "products#index"
    get "/products/:id" => "products#show"
    post "/products" => "products#create"
    patch "/products/:id" => "products#update"
    delete "/products/:id" => "products#destroy"

    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    post "/orders" => "orders#create"
    get "/orders" => "orders#index"
    get "/orders/:id" => "orders#show"

    post "/carted_products" => "carted_products#create"
  end
end
