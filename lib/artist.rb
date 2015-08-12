class Artist
  @@artists = []

  define_method(:initialize) do |name|
    @name = name
    @albums = []
  end

  define_method(:name) do
    @name
  end

  define_method(:save) do
    @@artists.push(self)
  end

  define_method(:add_album) do |album|
    @albums.push(album)
  end

  define_method(:albums) do
    @albums
  end

  define_singleton_method(:all) do
    @@artists
  end

  define_singleton_method(:clear) do
    @@artists.clear()
  end

end
