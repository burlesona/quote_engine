QuoteEngine::Application.routes.draw do
	resources :quotes
	resources :sources
	resources :categories
  root :to => "home#show"
end
