require 'pry'
class User
    attr_accessor :email, :age
    @@array_user = []
  
    def initialize(email, age)
      @email = email
      @age = age
      @@array_user << self
    end
  
    def self.all
      @@array_user
    end

    def self.find_by_email(email)
      @@array_user.each do |user|
        if user.email == email
          return user
        end
      end
      if false
      puts "Aucun utilisateur utilise cet email"
    end
  end

binding.pry
puts "end of file"
end
