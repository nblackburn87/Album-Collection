require 'rspec'
require 'Album'

describe 'Album' do
  it "is initialized with an artist and album name" do
    test_entry = Album.new("The Police", "Ghost in the Machine")
    test_entry.should be_an_instance_of Album
  end

  describe '.all' do
    it "has nothing in it at first" do
      Album.all.should eq []
    end
  end

  describe '.create' do
    it 'creates a new listing with artist and album' do
      test_entry = Album.create("The Police", "Ghost in the Machine")
      Album.all.should eq test_entry
    end
  end

  describe 'list_albums' do
    it 'lists all known albums by title' do
      test_entry = Album.new("The Police", "Ghost in the Machine")
      Album.all
    end
  end
end


describe "Artist" do
  it "is initialized with an artist's name" do
    test_artist = Artist.new("The Police")
    test_artist.should be_an_instance_of Artist
  end
end
