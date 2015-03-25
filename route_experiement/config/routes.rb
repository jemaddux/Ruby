RouteExperiement::Application.routes.draw do
  resources :articles do
    resources :comments
  end

  #resource :dashboard, :except => [:new, :edit]

end
