Nexmo::Application.routes.draw do
  root 'sms#new'

  resources :sms

  post '/sms/callback' => "sms#callback"

end
