def load_students(filename = "students.csv")
    file = File.open("students.csv", "r")
    file.readlines.each do |line|
      name, cohort = line.chomp.split(",")
      array_push(name, cohort)
    end
    file.close
  end
  
  def input_students
    puts "Please enter the names of the students"
    puts "To finish, just hit return twice"
    name = STDIN.gets.chomp
    cohort = STDIN.gets.chomp
    while !name.empty? do
      array_push(name, cohort)
      puts "Now we have #{@students.count} students"
      # get another name from the user
      name = STDIN.gets.chomp
    end
  end
  
  def array_push(name, cohort)
    @students << {name: name, cohort: cohort.to_sym}
  end

  input_students