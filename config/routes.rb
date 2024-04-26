Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  get '/kamigo/eat', to: 'kamigo#eat'

  get '/kamigo/request_headers', to: 'kamigo#request_headers'

  get  '/kamigo/request_body', to: 'kamigo#request_body'

  get '/kamigo/response_headers', to: 'kamigo#response_headers'

  get '/kamigo/response_body', to: 'kamigo#show_response_body'

  get '/kamigo/sent_request', to: 'kamigo#sent_request'

  post '/kamigo/webhook', to: 'kamigo#webhook'


  # Defines the root path route ("/")
  # root "posts#index"
end
