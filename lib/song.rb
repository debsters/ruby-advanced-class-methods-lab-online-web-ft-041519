class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.create
    new_song = self.new
    new_song.save
    new_song
  end

  def self.new_by_name(string)
    new_song = self.new
    new_song.name = string
    new_song
  end

  def self.create_by_name(string)
    new_song = self.new
    new_song.name = string
    new_song.save
    new_song
  end

  def self.find_by_name(string)
    self.all.find {|song| song.name == string}
  end

  def Song.find_or_create_by_name(string)
    # return a matching song instance with that name
    # or
    # create a new song with the name and return the song instance.
    self.find_by_name(string) || self.create_by_name(string)
  end

  def self.alphabetical
    self.all.sort {|a,b| a.name <=> b.name }
  end


  def self.new_from_filename(string)
    song = self.new
    song.name = (string.split(/\.|\s-\s/))
    song.artist_name = (song.name[0])


    # song.name.delete_if {|word| word == "mp3"}
  end

end
