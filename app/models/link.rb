class Link < ApplicationRecord
  validates :url_long, presence: true
  validates :url_long, format: { with: /(https?:\/\/)?([\w\.]+)\.([a-z]{2,6}\.?)(\/[\w\.]*)*\/?/,
      message: "should be a similar to https://bit.ly/2lXiz9G"}
  before_create :generate_short_url

  def generate_short_url
    self.url_short = ("a".."z").to_a.insert(-1, 1, 2,3,4,5,6,7,8,9,0).sample(5).join
  end
end
