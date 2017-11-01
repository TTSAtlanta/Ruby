@students = []
@courses = Array.new

class Student
  attr_accessor :name, :age 
  def initialize(name, age)
  	@name = name
  	@age = age
  end
end

class Course
  attr_accessor :name, :description 
  def initialize(name, description)
  	@name = name
  	@description = description
  end
end

def print_menu
	puts "Enter a selection from the menu: "
	puts "1. Add a Student"
	puts "2. List students"
  puts "3. Create a course"
  puts "4. List courses"
  puts "5. Assign Student to Course"
  puts "6. Print student roster"
  puts "E: Exit "

	@choice = gets.chomp.upcase
end 

def add_a_student
  puts "Enter the student's name: "
  name = gets.chomp
  puts "Enter the student's age: "
  age = gets.chomp.to_i

  student = Student.new(name,age)

  @students.push(student)

  puts "******* Student added *******" #adds a student
end

def list_students #lists students
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

def list_courses #lists students
  puts "The courses in the system are: "
  @courses.each_with_index do |course, index|
    puts "#{index+1}. Name: #{course.name} :: Description: #{course.description}" 
  end
end

while @choice != "E" do 
	
	if @choice == "1"
	  add_a_student
    print_menu
	elsif @choice == "2"
	  list_students
	  print_menu
	elsif @choice == "3"
    add_a_course
    print_menu	
  elsif @choice == "4"
    list_courses
    print_menu    	
	else
	  puts "Please select from the menu"
	  print_menu	
	end
end
	
puts "Bye!"