class Photo

  attr_accessor :caption, :image_url
  attr_reader :user
  @@all = []
  def initialize(user, image_url)
    @user = user
    @image_url = image_url
    @@all << self
  end

  def self.all
    @@all
  end



end
