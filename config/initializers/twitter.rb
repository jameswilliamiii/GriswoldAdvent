Twitter.configure do |config|
  config.consumer_key = ENV['GRISWOLD_TWITTER_CONSUMER_KEY']
  config.consumer_secret = ENV['GRISWOLD_TWITTER_CONSUMER_SECRET']
  config.oauth_token = ENV['GRISWOLD_TWITTER_OAUTH_TOKEN']
  config.oauth_token_secret = ENV['GRISWOLD_TWITTER_OAUTH_TOKEN_SECRET']
end