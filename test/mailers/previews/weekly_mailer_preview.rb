# Preview all emails at http://localhost:3000/rails/mailers/weekly_mailer
class WeeklyMailerPreview < ActionMailer::Preview
    def sample_mail_preview
        WeeklyMailer.sample_email(User.first)
      end
    
end
