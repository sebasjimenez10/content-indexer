class Site < ApplicationRecord
  has_many :elements

  validates :url, presence: true
end
