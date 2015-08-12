require('rspec')
require('artist')

describe(Artist) do
  before() do
    Artist.clear()
  end

  describe('#name') do
    it('returns the name of the artist') do
      test_artist = Artist.new("Bob Dylan")
      expect(test_artist.name()).to(eq("Bob Dylan"))
    end
  end

  describe('#save') do
    it('saves the artist inside of the artist array') do
      test_artist = Artist.new("Bob Dylan")
      test_artist.save()
      expect(Artist.all()).to(eq([test_artist]))
    end
  end

  describe('.all') do
    it('starts empty') do
      expect(Artist.all()).to(eq([]))
    end
  end

  describe('#add_album') do
    it('adds an album to the artist\'s album list') do
      test_artist = Artist.new("Bob Dylan")
      test_album = Album.new(test_artist, "Blonde on Blonde", 1966)
      test_artist.add_album(test_album)
      expect(test_artist.albums()).to(eq([test_album]))
    end
  end
end
