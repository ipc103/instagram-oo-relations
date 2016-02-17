class User
  attr_accessor :username, :bio,  :website
  attr_reader :photos
  @@all = []

  def initialize(username)
    @username = username
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find_by_name(username)
    self.all.find {|user| user.username == username }
  end

  def photos
    Photo.all.select { |photo| photo.user == self }
  end

  def add_photo(image_url)
    photo = Photo.new(self, image_url)
  end



end
