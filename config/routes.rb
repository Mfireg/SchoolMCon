Rails.application.routes.draw do
  root 'index#home'
  

      Rails.application.routes.draw do
      devise_for :users, controllers: {
        sessions: 'users/sessions',
        omniauth_callbacks: "users/omniauth_callbacks"
      }
    end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
