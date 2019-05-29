class User
  attr_accessor :id

  def initialize(id)
    @id = id
  end

  def self.find(id)
    new(id)
  end

  def sites
    Site.where(user_id: @id)
  end
end
