Rails.application.routes.draw do
  devise_for :pharmacists, controllers: {
    sessions:        'pharmacists/sessions',
    passwords:       'pharmacists/passwords',
    registrations:   'pharmacists/registrations'
  }
  devise_for :users, controllers: {
    sessions:      'users/sessions',
    passwords:     'users/passwords',
    registrations: 'users/registrations'         
  }
  get 'questions/index'
 root to: "questions#index"
end
