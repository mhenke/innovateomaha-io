class Testimony < ActiveRecord::Base
  attr_accessible :content, :screen_name, :tweet_id

  def self.pull_tweets
    Twitter.favorites("railscasts").each do |tweet|
      unless exists?(tweet_id: tweet.id.to_s)
        create!(
          tweet_id: tweet.id.to_s,
          content: tweet.text,
          screen_name: tweet.user.screen_name,
        )
      end
    end
  end
end