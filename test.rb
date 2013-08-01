require_relative 'app'

# test cohort
# - test class method where - query the db
# - test class method find - query the db

# - creating an object
# - retreiving attribute of object
# - set attribute of object

# - search for student associated with cohort


# test student
# - test class method where - query the db
# - test class method find - query the db

# - creating an instance
# - retreiving attribute of object
# - set attribute of object
# - find a student's cohort
# - reassign a student's cohort


#Cohort Tests
#Class Methods

######################################

# cohort_one = Cohort.find('1') #=> array with one entry
# p cohort_one[:name] == 'Alpha'

# student_three = Student.find('3')
# p student_three[:first_name] == 'Florine'


# cohort_two = Cohort.where('name = ?', 'Delta')
# p cohort_two.first[:id] == 3

# student_fourty = Student.where('first_name = ?', 'Annabel')
# p student_fourty.first[:id] == 40


Cohort.create(:name => 'martins')
test = Cohort.where('name = ?', 'martins')
p test.first[:name] == 'martins'

Student.create :first_name => 'A',
 :last_name  => 'Johnson',
 :email      => 'slam@dunk.com',
 :birthdate  => DateTime.now,
 :gender     => 'm',
 :cohort_id  => 3

johnsons = Student.where('first_name = ?', 'A')
p johnsons.select {|entry| entry[:last_name] == 'Johnson' } 

########################################

# p Cohort.all.size
# p Student.all.size
