# Abstract application record
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
