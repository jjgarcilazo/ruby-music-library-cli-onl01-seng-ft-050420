require 'pry'

class Artist
  attr_accessor :name, :song, :musiclibrarycontroller, :musicimporter
  extend Concerns::Findable

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def self.destroy_all
    @@all.clear
  end

  def save
    @@all << self
  end

  def self.create(artist)
    artist = self.new(artist)
    artist.save
    artist
  end

  def songs
    @songs
  end

  def add_song(song)
    if song.artist == nil
      song.artist = self
    else
      nil
    end
    if @songs.include?(song)
      nil
    else
      @songs << song
    end
    song
  end

  def genres
    @new_array = []
    @songs.each do |song|
      if @new_array.include?(song.genre)
        nil
      else
        @new_array << song.genre
      end
    end
    @new_array
  end

end


genre = Genre.new("post-punk")
 genre2 = Genre.new("noise")
 band = Artist.new("Rexy")
 band2 = Artist.new("Black Dice")
 song = Song.new("Don't Turn Me Away",band, genre)
 song = Song.new("Kokomo",band, genre2)
 band.genres

 Song.new("Sexy Sadie",)
 Artist
 song = Song.new("Sexy Sadie")
 song = Song.create("Sexy Sadie")
 pop = Genre.new("Pop")
 ruby ../lib/song.rb
 song.genre = pop
