@students = []
@courses = Array.new

class Student
  def initialize(name, age)
  	@name = name
  	@age = age
  end

  def name
  	@name
  end
  def age
  	@age
  end
end

class Course
  def initialize(name, description)
  	@name = name
  	@description = description
  end

  def name
  	@name
  end
  def description
  	@description
  end
end

def print_menu
	puts "Enter a selection from the menu: "
	puts "1. Add a Student"
	puts "2. List students"
	@choice = gets.chomp.upcase
end 

def imnotagoodpersontopick
  puts "Enter the student's name: "
  name = gets.chomp
  puts "Enter the student's age: "
  age = gets.chomp.to_i

  student = Student.new(name,age)

  @students.push(student)

  puts "******* Student added *******" #adds a student

end

def yomama #lists students
  puts "The students in the system are: "
  @students.each_with_index do |student, index|
    puts "#{index+1}. Name: #{student.name} :: Age: #{student.age}" 
  end
end

def add_a_course
  puts "Enter the course name: "
  name = gets.chomp
  puts "Enter the course description: "
  description = gets.chomp

  course = Course.new(name,description)

  @courses.push(course)

  puts "******* Course added *******" #adds a course	
end

while @choice != "E" do 
	
	if @choice == "1"
	  imnotagoodpersontopick
      print_menu
	elsif @choice == "2"
	  yomama
	  print_menu
	elsif @choice == "3"
      add_a_course
      print_menu		
	else
	  puts "Please select from the menu"
	  print_menu	
	end
end
	
puts "Bye!"