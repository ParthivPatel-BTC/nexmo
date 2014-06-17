Nexmo::Application.routes.draw do
  root 'sms#new'

  resources :sms

  post '/sms/callback', to: "sms#callback"

end
