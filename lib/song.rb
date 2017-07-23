class Song
attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  #creates a new instance of a
  # song from the file that's passed in

    def self.new_by_filename(file_name)
       artist_name = file_name.split(" - ")[0]
       song_name = file_name.split(" - ")[1]
       song = Song.new(song_name)
       song.artist_name = artist_name
       song
     end

  def artist_name=(name)
     artist = Artist.find_or_create_by_name(name)
     self.artist = artist
     artist.add_song(self)
   end
end
