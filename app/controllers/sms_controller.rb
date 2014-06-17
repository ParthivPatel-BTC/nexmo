class SmsController < ApplicationController
  require 'nexmo'
  def new
    @sms = Sms.new
  end

  def create
    nexmo = Nexmo::Client.new('751b4bd3', '520dd4e3')
    if params[:sms][:phone_number].present?
      response = nexmo.send_message! ({:to => "91#{params[:sms][:phone_number]}", :from => 'demo123', :text => 'Your authentication code is :- 12345'})

      if response
        redirect_to  new_sm_path
      else
        puts "===================not sent"
      end
    else
      render :new
    end
  end

  def callback
    puts "========================> Called back"
    puts "#{params}"
  end
end