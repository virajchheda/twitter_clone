class Tweet < ApplicationRecord
  validates_presence_of :tweet
  belongs_to :user
  has_many :retweets, class_name: "Tweet", foreign_key:"parent_tweet_id", dependent: :destroy
  belongs_to :parent_tweet, class_name: "Tweet", optional: true 
  has_many :comments, dependent: :destroy
end
