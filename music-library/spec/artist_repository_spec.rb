require 'artist_repository'
require 'artist'

RSpec.describe ArtistRepository do

    def reset_artists_table
        seed_sql = File.read('spec/seeds_artists.sql')
        connection = PG.connect({ host: '127.0.0.1', dbname: 'artists' })
        connection.exec(seed_sql)
    end
      
    describe ArtistRepository do
        before(:each) do 
          reset_artists_table
        end
    end

    it "gets all artists" do
        repo = ArtistRepository.new
        artists = repo.all
        expect(artists.length).to eq 1
        expect(artists.first.id).to eq '1'
        expect(artists.first.name).to eq 'ABBA'

    end

    it "returns the Pixies as a single artist" do
        repo = ArtistRepository.new

        artist = repo.find(1)
        expect(artist.name).to eq 'Pixies'
        expect(artist.genre).to eq 'Rock'
    end


end