Nexmo::Application.routes.draw do
  root 'sms#new'

  resources :sms

  get '/callback' => "sms#callback"

end
