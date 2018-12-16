class Song

attr_accessor :artist, :genre
attr_reader :name

@@all =[]

def initialize(name, artist, genre)
  @name = name
  @artist = artist
  @genre = genre
  @@all << self
end

def self.all
  @@all
end

def artists
  Artist.all.select do |artist|
    artist.song == self
  end
end

def genres
  self.artists.map do |artist|
    artist.genre
  end
end

end
