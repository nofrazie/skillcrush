class Media

	attr_accessor :name

	def play
		return "Now playing"
	end

	def stop
		return "Stopped"
	end

end

class Album < Media

	attr_accessor :artist_name, :song

end

class Movie < Media

	attr_accessor :actor_name

end


first_album = Album.new
first_album.name = "Nostalgia Ultra"
media_name = first_album.name
first_album.artist_name = "Frank Ocean"
artist_name = first_album.artist_name
first_album.song = "Novacane"
album_song = first_album.song
puts "#{artist_name}'s new album, #{media_name} includes the song #{album_song}."

first_movie = Movie.new
first_movie.name = "Hitch"
media_name = first_movie.name
first_movie.actor_name = "Will Smith"
actor_name = first_movie.actor_name
puts "My favorite movie is #{media_name}, which stars #{actor_name}."


puts first_album.inspect
puts first_movie.inspect
