class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
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

    def self.artist_count
      artist_hash = {}
      @@artists.each do |x|
        if artist_hash[x]
          artist_hash[x] += 1
        else
          artist_hash[x] = 1
        end
      end
      artist_hash
    end

    def self.genre_count
      genre_hash = {}
      @@genres.each do |x|
        if genre_hash[x]
          genre_hash[x] += 1
        else
          genre_hash[x] = 1
      end
    end
    genre_hash
  end

end
