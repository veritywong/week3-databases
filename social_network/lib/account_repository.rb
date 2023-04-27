require_relative './account'

class AccountRepository

    def all
      sql = 'SELECT id, email, username FROM accounts;'
      result_set = DatabaseConnection.exec_params(sql, [])

      accounts = []
      result_set.each do |record|
         account = Account.new
         account.id = record['id']
         account.email = record['email']
         account.username = record['username']

         accounts << account
      end

      return accounts
    end
  
    def find(id)
      sql = 'SELECT id, email, username FROM accounts WHERE id = $1;'
      sql_param = [id]
      result_set = DatabaseConnection.exec_params(sql, sql_param)

      record = result_set[0]
      account = Account.new
      account.id = record['id']
      account.email = record['email']
      account.username = record['username']
      
      return account
    end
  
    def create(account)
      # add a new account into the accounts table
    end
  
    def delete(account)
      # delte an existing account from the accounts table
    end
  
  
  end