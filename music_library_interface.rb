require './lib/Album'

def main_menu
  puts "Press 'a' to add a new Album"
  puts "Press 'l' to list all currently available Albums"
  puts "Press 's' to list all albums by a given artist"
  puts "Press 'x' to leave."

  menu_choice = gets.chomp

  case menu_choice
  when 'a'
    add_album
  when 'l'
    list_albums
  when 's'
    list_artist
  when 'x'
    puts "Enjoy your music!"
  else
    puts "Please choose again.\n"
    main_menu
  end
end

def add_album
  puts "Please enter the artist's name:"
  new_artist = gets.chomp
  puts "Please enter the name of #{new_artist}'s new album:"
  new_album = gets.chomp
  new_entry = Album.create(new_artist, new_album)
  main_menu
end



def list_artist
  puts "Please enter the artist who's albums you'd like listed:"
  artist_choice = gets.chomp
  puts "\n"
  puts "#{artist_choice}:"
  Album.all.each do |entry|
    if artist_choice == entry.artist.artist_name
      puts "#{entry.album_name}"
    end
  end
  main_menu
end



def list_albums
# Attempt to use .uniq to output only one instance of each artist
main_menu
