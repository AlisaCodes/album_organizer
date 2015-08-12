class Album
  @@album = []
  define_method(:initialize) do |artist, title, year|
    @artist = artist
    @title = title
    @year = year
  end

  define_method(:artist) do
    @artist
  end

  define_method(:title) do
    @title
  end

  define_method(:year) do
    @year
  end

  define_method(:save) do
    @@album.push(self)
  end

  define_singleton_method(:all) do
    @@album
  end

  define_singleton_method(:clear) do
    @@album.clear()
  end

  define_singleton_method(:find) do |artist|
    found_albums = []
    @@album.each() do |album|
      if album.artist() == artist
        found_albums.push(album)
      end
    end
    found_albums
  end
end
