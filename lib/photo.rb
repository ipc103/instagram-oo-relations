class Photo

  attr_accessor :caption, :image_url
  attr_reader :user

  def initialize(user, image_url)
    @user = user
    @image_url = image_url
  end



end
