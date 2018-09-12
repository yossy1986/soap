Rails.application.routes.draw do
  

  get 'login' => 'users#login_form'
  post 'login' => 'users#login'
  post "logout" => "users#logout"

  get 'posts/index' => 'posts#index'
  get 'posts/new' => 'posts#new'
  get 'posts/:id' => 'posts#show'
  post 'posts/create' => 'posts#create'
  get 'posts/:id/edit' => 'posts#edit'
  post 'posts/:id/update' => 'posts#update'
  post 'posts/:id/destroy' => 'posts#destroy'
  
  get '/' => 'home#top'
  get 'lesson' => 'home#lesson'
  get 'gallery' => 'home#gallery'
  get 'access' => 'home#access'
  get 'contact' => 'home#contact'
  post 'contact' => 'home#create'
  get 'thanks' => 'home#thanks'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
