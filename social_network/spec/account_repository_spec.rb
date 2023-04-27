require 'account_repository'

RSpec.describe AccountRepository do
    def reset_accounts_table
        seed_sql = File.read('spec/seeds_accounts.sql')
        connection = PG.connect({ host: '127.0.0.1', dbname: 'social_network_test' })
        connection.exec(seed_sql)
    end
      
    describe AccountRepository do
    before(:each) do 
        reset_accounts_table
    end
    end
   
    it "returns a list of all the accounts" do
        repo = AccountRepository.new
        accounts = repo.all

        expect(accounts.first.id).to eq '1'
        expect(accounts.length).to eq 6
        expect(accounts.first.email).to eq 'vw@gmail.com'
        expect(accounts.first.username).to eq 'vw'
    end

    it  'Get a single account' do
        repo = AccountRepository.new

        account = repo.find(1)
        expect(account.id)to.eq '1'
        expect(account.username)to.eq 'vw'
        expect(account.email)to.eq 'vw@gmail.com'
    end

end