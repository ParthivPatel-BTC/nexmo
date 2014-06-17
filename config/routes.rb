Nexmo::Application.routes.draw do
  root 'sms#new'

  resources :sms

  get '/sms/callback', to: "sms#callback"

end
