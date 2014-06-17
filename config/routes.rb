Nexmo::Application.routes.draw do
  root 'sms#new'

  resources :sms

  post '/callback' => "sms#callback"

end
