Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/command_center/super_admin', as: 'rails_admin'
  get '/admin', to: 'users#admin'

  post '/invite', to: 'users#invite'

  # devise_for :users, controllers: {
	#   #  sessions: 'users/sessions',
	#   #  passwords: 'users/passwords',
	#    registrations: 'users/registrations'
	# }

  devise_for :users

  root 'users#index'
end
