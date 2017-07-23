class Artist
attr_accessor :name, :songs
@@all = []

  def initialize (name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song (song)
   @songs << song
 end

 def save
   @@all << self
 end

 def self.find_or_create_by_name(artist_name)
    new_artist = @@all.find {|artist| artist.name == artist_name}
    if new_artist.nil?
      new_artist = self.new(artist_name)
      new_artist.save
    end
    new_artist
  end

  def print_songs
    songs.each { |song|
    puts song.name} #lists all of the artist's songs

end
end
