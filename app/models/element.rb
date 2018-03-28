class Element < ApplicationRecord
  belongs_to :site

  validates :tag, :content, :site, presence: true
end
