class Link < ApplicationRecord
  validates :url_long, presence: true
  validates :url_long, format: { with: /(https?:\/\/)?([\w\.]+)\.([a-z]{2,6}\.?)(\/[\w\.]*)*\/?/,
      message: "should be a similar to https://bit.ly/2lXiz9G"}
end
