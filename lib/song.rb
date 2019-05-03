class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def self.create(name)
    song = self.new
    song.name = name
    @@all << song
  end

  def save
    self.class.all << self
  end

  def method_name

  end

end
