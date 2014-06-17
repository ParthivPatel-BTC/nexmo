class SmsController < ApplicationController
  require 'nexmo'
  def new
    @sms = Sms.new
  end

  def create
    nexmo = Nexmo::Client.new('751b4bd3', '520dd4e3')
    response = nexmo.send_message! ({:to => "91#{params[:sms][:phone_number]}", :from => 'demo123', :text => 'Your authentication code is :- 12345'})

    if response
      puts "******************sent"
    else
      puts "===================not sent"
    end

    redirect_to  new_sm_path
  end

  def callback
    puts "========================> Called back"
    puts "#{params}"
  end
end