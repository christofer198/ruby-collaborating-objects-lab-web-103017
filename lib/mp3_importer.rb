require 'pry'
class MP3Importer

  attr_accessor :path

  def initialize(music_path)
    @path = music_path
  end

  def files
    #binding.pry
    @file = Dir.entries(path).reject{|entry| entry == "." || entry == ".."}
    @file
  end

  def import
     song_list = files
     song_list.each {|file| Song.new_by_filename(file)
     }

   end
end
