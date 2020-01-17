Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end

  namespace :api do
    get "/product2_url" => "products#product2_method"
    get "/product1_url" => "products#product1_method"
    get "/all_products_url" => "products#allproducts_method"
  end
end
