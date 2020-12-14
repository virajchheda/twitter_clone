class AddParentTweetIdToTweets < ActiveRecord::Migration[5.1]
  def change
    add_column :tweets, :parent_tweet_id, :integer, allow: nil
  end
end
