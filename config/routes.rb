Rails.application.routes.draw do
  root 'welcome#index'

  # GET
  get 'auth/logout'

  # POST
  post 'auth/login'
  post 'auth/lost_password'

  namespace "api" do
    namespace "v1" do
      resources :users, :except => [:new, :edit]
    end

    namespace "v1" do
      resources :vehicles, :except => [:new, :edit]
    end

    namespace "v1" do
      resources :offers, :except => [:new, :edit]
    end
  end
end
