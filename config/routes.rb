Rails.application.routes.draw do
  namespace :api do
<<<<<<< HEAD
    resources :ingredients
    resources :recipes
    resources :recipe_ingredients, only: [:create, :destroy, :new]
=======
    #API ROUTES SHOULD GO HERE
>>>>>>> initial commit
  end

  #Do not place any routes below this one
  if Rails.env.production?
    get '*other', to: 'static#index'
  end
end
