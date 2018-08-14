Rails.application.routes.draw do

  devise_for :users
resources :customers do
 resources :visits
 
get "/customers/:customer_id/visits" => "visit#show2"
end
 root 'welcome#index'
 end
