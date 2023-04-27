class AccountRepository

    def all
      # Executes the SQL query:
      # SELECT id, email, username FROM accounts;
  
      # Returns an array of Artist objects.
    end
  
    def find(id)
      # exectures the SQL query:
      # SELECT id, email, username FROM accounts WHERE id = $1
  
      # returns a single Account object
    end
  
    def create(account)
      # add a new account into the accounts table
    end
  
    def delete(account)
      # delte an existing account from the accounts table
    end
  
  
  end