require 'album_repository'

RSpec.describe AlbumRepository do 

    def reset_albums_table
        seed_sql = File.read('spec/seeds_albums.sql')
        connection = PG.connect({ host: '127.0.0.1', dbname: 'music_library_test' })
        connection.exec(seed_sql)
      end
      
      describe AlbumRepository do
        before(:each) do 
          reset_albums_table
        end
    end

    xit 'shows all albums' do
        repo = AlbumRepository.new

        albums = repo.all
        expect(albums.length).to eq 2
        expect(albums.first.id).to eq '1'
        expect(albums.first.title).to eq 'Waterloo'
    end

    it 'get a single album' do
        repo = AlbumRepository.new

        album = repo.find(1)
        expect(album.title).to eq 'Waterloo'
        expect(album.release_year).to eq '1974'
        expect(album.artist_id).to eq '2'
    end

    it "create a new album record" do
      repo = AlbumRepository.new

      new_album = Album.new
      new_album.title = 'Trompe le Monde'
      new_album.release_year = 1991
      new_album.artist_id = 1
      
      repo.create(new_album)
      all_albums = repo.all

      expect(all_albums).to include(
        have_attributes(
          title: new_album.title,
          release_year: '1991'
        )
      )   
      last_album = all_albums.last
      expect(last_album.title).to eq 'Trompe le Monde'
      expect(last_album.release_year).to eq '1991'

    end
end