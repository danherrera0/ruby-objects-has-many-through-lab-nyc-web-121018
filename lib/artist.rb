class Artist

  attr_accessor :name, :song
  # attr_reader

  @@all =[]

  def initialize(name)
    @name =name
    @song =nil
    # @genre =genre
    # @song = song
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
  song = Song.new(name, self, genre)
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
