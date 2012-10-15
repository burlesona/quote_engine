QuoteEngine::Application.routes.draw do
	resources :quotes
	resources :sources
	resources :categories
	get 'quotes' => 'quotes#index', :as => 'admin'
  root :to => "home#show"
end
