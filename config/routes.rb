Rails.application.routes.draw do
  resources :blogs do 
    resources :comments
  end
  resources :users
  get 'blog' => "blogs#index"
  get 'about' => "pages#about", as: :about
  get 'contact' => "pages#contact", as: :contact
  get 'register' => "users#new", as: :register
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
