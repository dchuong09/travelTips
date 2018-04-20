Rails.application.routes.draw do
  
	root to: 'locations#index'

	get '/users/new', to: 'users#new', as: 'new_user'
	post '/users', to: 'users#create'
	get '/users/:id', to: 'users#show', as: 'user'


	get '/login', to: 'sessions#new'
	get '/logout', to: 'sessions#destroy'
	post '/sessions', to: 'sessions#create'


	get '/locations', to: 'locations#index'
	get '/locations/:id', to:'locations#show', as: 'location'

	
	resources :review


end
#  root GET  /                   users#index
#        rails_service_blob GET  active_storage/blobs#show
# rails_blob_representation GET  active_storage/representations#show
#        rails_disk_service GET  active_storage/disk#show
# update_rails_disk_service PUT  active_storage/disk#update
#      rails_direct_uploads POST active_storage/direct_uploads#create

