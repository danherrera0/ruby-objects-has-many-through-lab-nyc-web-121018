class Artist

  attr_accessor :name,:genre, :song, :songs
  # attr_reader

  @@all =[]

  def initialize(name)
    @name =name
    # @genre =genre
    # @song = song
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre, artist=nil)
    name = Song.new
    # name.artist.name = self
    # name.artist.genre = genre
    # name.genre = genre
    artist.name = self
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    self.songs.map do |song|
      song.genre
    end
  end



end
