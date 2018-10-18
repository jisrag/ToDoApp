class SendEmailJob < ApplicationJob
  queue_as :default
  
  def perform(user)
    @user = user
    WeeklyMailer.sample_email(@user).deliver_later
    SendEmailJob.perform_later(wait: 7.days).perform_later(@user)
    
  end

end
