QuoteEngine::Application.routes.draw do
	resources :quotes
	resources :sources do
		resources :quotes, :only => :index
	end
	resources :categories do
		resources :quotes, :only => :index
	end
  root :to => "home#show"
end
