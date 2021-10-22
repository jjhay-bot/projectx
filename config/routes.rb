Rails.application.routes.draw do

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'users/index'

  # devise_for :users, controllers: {
	#   #  sessions: 'users/sessions',
	#   #  passwords: 'users/passwords',
	#    registrations: 'users/registrations'
	# }

  devise_for :users

  root 'users#index'
end
