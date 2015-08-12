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
end
