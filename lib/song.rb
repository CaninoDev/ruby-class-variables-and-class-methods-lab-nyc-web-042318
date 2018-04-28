require 'pry'
class Song
  attr_accessor :name, :artist, :genre


  @@genres = []
  @@artists = []
  @@count = 0

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@artists << @artist

    @@genres << genre
    @@count += 1

  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    genre_count = {}
    self.genres.each do |genre_cat|
      genre_count[genre_cat] = @@genres.count(genre_cat)
    end
    genre_count
  end

  def self.artist_count
    artist_song_count = {}
    self.artists.each do |person|
      artist_song_count.store(person, @@artists.count(person))
    end
    artist_song_count.sort.to_h
  end

end
