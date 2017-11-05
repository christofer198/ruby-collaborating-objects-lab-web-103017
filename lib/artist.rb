require 'pry'
class Artist
    attr_accessor :name, :songs, :all

    @@all = []
    @@artists = []

    def initialize(name)
      @name = name
      @@artists << self
      @songs = []
      self.save
    end

    def add_song(song)
      @songs << song
    end

    def save
      @@all << self
    end

    def self.all
      @@all
    end

    def self.find_or_create_by_name(artist_name)
      artist = @@artists.select{|x| x.name == artist_name}
      if artist == []
        self.new(artist_name)
      else
        artist[0]
      end
    end

    def print_songs
      @songs.each {|x| puts x.name}
    end
  end
