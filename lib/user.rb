class User
  attr_accessor :username, :bio,  :website
  attr_reader :photos
  @@all = []

  def initialize(username)
    @username = username
    @@all << self
    @photos = []
  end

  def self.all
    @@all
  end

  def self.find_by_name(username)
    self.all.find {|user| user.username == username }
  end



end
