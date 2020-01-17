Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/product2_url" => "products#product2_action"
    get "/product1_url" => "products#product1_action"
    get "/all_products_url" => "products#allproducts_method"
    get "/any_product_url" => "products#product_query_action"
    get "/any_product_url/:id" => "products#product_query_action"
  end
end
