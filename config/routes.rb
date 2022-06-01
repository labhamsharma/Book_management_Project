Rails.application.routes.draw do
  root to: "books#index"
  resources :books
  devise_for :users
  resources :book_requests do
    member do
      patch :update_status
    end
  end
   get 'book_request', to: 'book_requests#show'
   get 'approved_book', to: 'book_requests#approved_book'
end