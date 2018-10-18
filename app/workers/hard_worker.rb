class HardWorker
  include Sidekiq::Worker

  def perform(*args)
    # Do something
  
    User.all.each do |user|
     WeeklyMailer.sample_email(user).deliver
    end
  end
end
