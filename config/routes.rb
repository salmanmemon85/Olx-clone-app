Rails.application.routes.draw do
  resources :categories
  resources :posts
  resources :sessions
  resources :users
  resources :messages
  root 'homes#index'
  get "/home-page", to: "homes#home_page"
  get "/ad-listing", to: "homes#ad_listing"
  get "/blog-grid", to: "homes#blog_grid"
  get "/blog-single", to: "homes#blog_single"
  get "/car-list", to: "homes#car_list"
  get "/car-list-view", to: "homes#car_list_view"
  get "/car-rent", to: "homes#car_rent"
  get "/cart", to: "homes#cart"
  get "/checkout", to: "homes#checkout"
  get "/contact-us", to: "homes#contact_us"
  get "/delete", to: "homes#delete"
  get "/listing-page", to: "homes#listing_page"
  get "/messege", to: "homes#messege"
  get "/owner-pf", to: "homes#owner_pf"
  get "/plan", to: "homes#plan"
  get "/posts-ads", to: "homes#posts_ads"
  get "/setting", to: "homes#setting"   
end
