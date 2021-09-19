Class User
    attr_accessor :name :password :ip_address

    def initialize (name, password, ip_address)
        @name = name
        @password = password
        @ip_address = ip_address
    end

    def edit_users_profile
        #some code
    end

    def change_password
        puts "Kindly input your new password."
        new_password = gets
        user.update(password: new_password)
    end

protected
def login
    puts "User logged in. IP address: #{ip_address}."
end
end

class Admin < User
    def admin_login
        login
    end
end

class Buyer < User
    def buyer_login
        login
    end
    def buy
        puts "Please input the item that you want to buy."
        item = gets.chomp
    def checkout
        puts "Confirming that you would like to purchase #{item}? Y/N"
       prompt = gets.chomp
       if prompt == "Y" 
        puts "Successfully bought #{item}!"
       else
        puts ":("
    end


##execute

my_admin = Admin.new('avionuser', 'password', '127.0.0.1')
    my_admin.admin_login
    my_admin.edit_users_profile
    my_admin.change_password = 'new_password'

buyer = Buyer.new('Juan', 'password', '127.0.0.1')
    buyer.buyer_login
    buyer.buy
    buyer.change_password = 'new_password'