require 'pry'

class Song

 def initilize(name,artist=nil,genre=nil)
   @name = name
   self.artist=(artist) if artist != nil
   self.genere=(genre) if genre != nil
 end