class SendEmailJob < ApplicationJob
  queue_as :default
  
  def perform(user)
    @user = user
    WeeklyMailer.sample_email(@user).deliver
    
    
  end

end
