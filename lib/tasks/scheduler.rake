desc "This task is called by the Heroku scheduler add-on"
task :daily_texts => :environment do
  TextMessage.daily_texts
end