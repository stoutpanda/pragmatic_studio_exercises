class Song
  attr_reader :name, :artist, :duration

  def initialize(name, artist, duration)
    @name = name
    @artist = artist
    @duration = duration
  end

  def play
    puts "Playing '#{name}' by #{artist} (#{duration} mins)..."
  end
end

class Playlist
  include Enumerable
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def each()
    @songs.each { |songs| yield songs }
  end
  def play_songs()
    each { |s| s.play }
  end

end



songg = Song.new("Doorbell", "The White Strips", 2)
songh = Song.new("Blue Veins", "The Raconteurs", 5)
songi = Song.new("No Children", "The Mountain Goats", 3)
songj = Song.new("Bye Bye Bye", "Nsync", 4)

jashpl = Playlist.new("Jash Playlist")
  jashpl.add_song(songg)
  jashpl.add_song(songh)
  jashpl.add_song(songi)
  jashpl.add_song(songj)

jashpl.play_songs


blue_songs = jashpl.select { |song| song.name =~ /Blue/ }
p blue_songs
