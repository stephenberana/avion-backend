class Profile
attr_accessor :full_name, :age, :address, :work
    def initialize (full_name, age, address, work)
        self.full_name = full_name
        self.age = age
        self.address = address
        self.work = work
    end
end        

#----test----#

my_profile = Profile.new('Juan', 18, 'Bulacan', 'Instructor')

puts my_profile.full_name
my_profile.full_name = 'Juan Cruz'

my_profile.age = 25
my_profile.work = 'Software Engineer'

puts my_profile.full_name
puts my_profile.age
puts my_profile.work
puts my_profile.address

# ###explicit instance methods
# #full_name
#     def full_name
#         @full_name
#     end    
#     def full_name=()
#         @full_name = ""
#     end    
# #age   
#     def age
#         @age
#     end    
#     def age=()
#         @age = 0
#     end
# #address
#     def address
#         @address
#     end    
#     def address=()
#         @address = ""
#     end
# #work
#     def work
#     end
#     def work=()
#         @work = ""
#     end    
# end