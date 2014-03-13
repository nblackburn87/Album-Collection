class Album
require "./lib/Artist"

  @@albums = []
  attr_reader(:artist, :album_name)

  def initialize(artist, album_name)
    @artist = artist
    @album_name = album_name
  end

  def artist
    @artist
  end

  def album_name
    @album_name
  end

  def Album.all
    @@albums
  end

  def Album.create(artist_name, album_name)
    new_artist = Artist.new(artist_name)
    new_album = Album.new(new_artist, album_name)
    @@albums << new_album
  end
end
