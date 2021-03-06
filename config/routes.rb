Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


namespace :api do
  namespace :v1 do
    resources :users, only: [:index, :show, :create, :update] do
      collection do
        post 'login'
        get 'validate', to: 'users#validate'
        get 'average', to: 'users#average'
        # get 'current_user'
      end
    end
  end
end

# not used yet
namespace :api do
  namespace :v1 do
    resources :spending_data, only: [:index, :create] do
      collection do
        get 'average', to: 'spending_data#average'
        # get 'current_user'
      end
    end
  end
end

# not used yet
namespace :api do
  namespace :v1 do
    resources :household_spendings, only: [:index]
  end
end

# not used yet
  namespace :api do
    namespace :v1 do
      resources :spending_categories, only: [:index, :show, :create]
    end
  end

# not used yet
  namespace :api do
    namespace :v1 do
      resources :spending_targets, only: [:index, :show, :create]
    end
  end

# not used yet
  namespace :api do
    namespace :v1 do
      resources :age_options, only: [:index, :show]
    end
  end

# not used yet
namespace :api do
  namespace :v1 do
    resources :national_averages, only: [:index, :show]
  end
end

# not used yet
namespace :api do
  namespace :v1 do
    resources :children_options, only: [:index, :show]
  end
end

# not used yet
  namespace :api do
    namespace :v1 do
      resources :city_options, only: [:index, :show]
    end
  end

# not used yet
  namespace :api do
    namespace :v1 do
      resources :spending_categories, only: [:index, :show]
    end
  end


#session functionality

  #get "/login", to: 'sessions#new', as: 'login'
  post 'session', to: 'sessions#create', as: 'sessions'
  post '/logout', to: 'sessions#destroy', as: 'logout'



end
