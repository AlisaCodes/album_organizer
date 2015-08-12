require('rspec')
require('album')

describe(Album) do
  describe('#title') do
    it('returns the title of the album') do
      test_album = Album.new("The Other Side of Bob Dylan")
      expect(test_album.title()).to(eq("The Other Side of Bob Dylan"))
    end
  end
end
