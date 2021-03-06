require('rspec')
require('album')

describe(Album) do
  before() do
    Album.clear()
  end

  describe('#title') do
    it('returns the title of the album') do
      test_artist = Artist.new("Bob Dylan")
      test_album = Album.new(test_artist, "The Other Side of Bob Dylan", 2007)
      expect(test_album.title()).to(eq("The Other Side of Bob Dylan"))
    end
  end

  describe('#artist') do
    it('returns the artist of the album') do
      test_artist = Artist.new("Bob Dylan")
      test_album = Album.new(test_artist, "The Other Side of Bob Dylan", 2007)
      expect(test_album.artist()).to(eq(test_artist))
    end
  end

  describe('#year') do
    it('returns the year the album was created') do
      test_artist = Artist.new("Bob Dylan")
      test_album = Album.new(test_artist, "The Other Side of Bob Dylan", 2007)
      expect(test_album.year()).to(eq(2007))
    end
  end

  describe('#save') do
    it('saves album to albums array') do
      test_album = Album.new("Bob Dylan", "Blonde on Blonde", 1966)
      test_album.save()
      expect(Album.all()).to(eq([test_album]))
    end
  end

  describe('.all') do
    it('starts out empty') do
      expect(Album.all()).to(eq([]))
    end
  end

  describe('.find') do
    it('finds the album by artist') do
      test_album = Album.new("Bob Dylan", "Blonde on Blonde", 1966)
      test_album.save()
      expect(Album.find('Bob Dylan')).to(eq([test_album]))
    end
    it('finds the album by title') do
      test_album = Album.new("Bob Dylan", "Blonde on Blonde", 1966)
      test_album.save()
      expect(Album.find('Blonde on Blonde')).to(eq([test_album]))
    end
    it('finds the album by year') do
      test_album = Album.new("Bob Dylan", "Blonde on Blonde", 1966)
      test_album.save()
      expect(Album.find(1966)).to(eq([test_album]))
    end
  end

end
