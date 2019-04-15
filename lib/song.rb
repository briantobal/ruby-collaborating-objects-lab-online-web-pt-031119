require 'pry'
class Song 
  attr_accessor :name, :artist 

  def initialize (name)
    @name = name 
  end     #def 
  
  def self.new_by_filename(file)     
    artist, song = file.split(" - ") 
    new_song = self.new(song)
    new_artist = Artist.find_or_create_by_name(artist)
    new_song.artist = new_artist
    new_song
    binding.pry 
  end     #def 

end