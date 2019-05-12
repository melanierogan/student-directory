# students = [
#     {name: "Dr. Hannibal Lecter", cohort: :november},
#     {name: "Darth Vader", cohort: :november},
#     {name: "Nurse Ratched", cohort: :november},
#     {name: "Michael Corleone", cohort: :november},
#     {name: "Alex DeLarge", cohort: :november},
#     {name: "The Wicked Witch of the West", cohort: :november},
#     {name: "Terminator", cohort: :november},
#     {name: "Freddy Krueger", cohort: :november},
#     {name: "The Joker", cohort: :november},
#     {name: "Joffrey Baratheon", cohort: :november},
#     {name: "Norman Bates", cohort: :november}
# ]

# def input_students
#     puts "Please enter the names of the students"
#     puts "To finish, just hit return twice"

#     students = []
#     name = gets.chomp

#     while !name.empty? do
#         students << {name: name, cohort: :november}
#         puts "Now we have #{students.count} students"
#         name = gets.chomp
#     end

#     students
# end


# def print_header
#     puts "The students of Villains Academy"
#     puts "-------------"
# end

# def print(students)
#     students.each do |student|
#         puts "#{student[:name]} (#{student[:cohort]} cohort)"
#     end
# end

# def print_footer(names)
#     puts "Overall, we have #{names.count} evil students"
# end

# students = input_students
# print_header
# print(students)
# print_footer(students)

# hash = Hash.new

# %w(cat dog wombat).each_with_index { |item, index|
#   hash[item] = index
# }

# puts hash

# students = [
#     {name: "Dr. Hannibal Lecter", cohort: :november, hobby: "Swimming"},
#     {name: "Darth Vader", cohort: :november, hobby: "Running"},
#     {name: "Alex DeLarge", cohort: :november, hobby: "Swimming"},
#     {name: "The Wicked Witch of the West", cohort: :november, hobby: "cooking"},
#     {name: "Terminator", cohort: :november, hobby: "Swimming"}, 
#     {name: "Freddy Krueger", cohort: :november, hobby: "drawing"},
#     {name: "The Joker", cohort: :november, hobby: "cooking"}, 
#     {name: "Joffrey Baratheon", cohort: :november, hobby: "Swimming"},
#     {name: "Norman Bates", cohort: :november, hobby: "Running"}
# ]

# Putting an index before each name in the hash:
# def print(students)
#     students.each.with_index do |student, index|
#         puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)"
#     end
# end
# print(students)

# Printing only the names of folks that start with a certain letter in the hash:
# students.each do |student|
#     puts "woo" if student[:name].start_with?('D')
# end

# Modify your program to only print the students whose name is shorter than 12 characters:
# students.each do |student|
#     puts "woo" if student[:name].length < 12
# end

# Our code only works with the student name and cohort. Add more information: hobbies, country of birth, height, etc:
# def print(students)
#     students.each.with_index do |student, index, hobby|
#         puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort) (hobby: #{student[:hobby]})"
#     end
# end
# print(students)

# Research how the method center() of the String class works. Use it in your code to make the output beautifully aligned:


def input_students
    puts "Please enter the names of students"
    puts "To finish, just hit return twice"

    students = []

    name = gets.chomp
    while !name.empty? do
    students << {name: name, cohort: :november}
    puts "Now we have #{student.count} students"
    name = gets.chomp
end 
students
end

def interactive_menu
    students = []
    loop do
      # 1. print the menu and ask the user what to do
      puts "1. Input the students"
      puts "2. Show the students"
      puts "9. Exit" # 9 because we'll be adding more items
      # 2. read the input and save it into a variable
      selection = gets.chomp
      # 3. do what the user has asked
      case selection
      when "1"
        students = input_students
      when "2"
        print_header
        print(students)
        print_footer(students)
      when "9"
        exit # this will cause the program to terminate
      else
        puts "I don't know what you meant, try again"
      end
    end
  end

def print_header
    puts "The students of Villains Academy"
    puts "-------------"
end

def print_footer(names)
    puts "Overall, we have #{names.count} evil students"
end

students = input_students
print_header
print(students)
print_footer(students)