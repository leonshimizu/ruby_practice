# model information about an employee
# hash
# array
# class

# # array
# employee = ["Marjora", "Carter", 80000, true]
# p employee[0] + " " + employee[1] + " makes $" + employee[2].to_s + " per year."

# employee2 = ["Danilo", "Campos", 70000, false]
# p "#{employee2[0]} #{employee2[1]} makes $#{employee2[2]} per year."

# hash
# employee1 = {"first_name" => "Majora", "last_name" => "Carter", "salary" => 80000, "active" => true}
# p "#{employee1["first_name"]} #{employee1["last_name"]} makes $#{employee1["salary"]} per year."

# employee1 = {:first_name => "Danilo", :last_name => "Campos", :salary => 70000, :active => false}
# p "#{employee1[:first_name]} #{employee1[:last_name]} makes $#{employee1[:salary]} per year."

# employee1 = {first_name: "Danilo",last_name: "Campos",salary: 70000,active: false}
# p "#{employee1[:first_name]} #{employee1[:last_name]} makes $#{employee1[:salary]} per year."


# Majora Carter makes $80000 per year.


# class Person
  
#   def initialize(first_name, last_name, salary)
#     @first_name = first_name
#     @last_name = last_name
#     @salary = salary
#     @active = true
#   end

#   def first_name
#     @first_name
#   end
  
#   def last_name
#     @last_name
#   end

#   def salary
#     @salary
#   end

#   def active
#     @active
#   end

#   def changeName
#     puts "Please tell me the first name and then the last name here:"
#     name1 = gets.chomp
#     name2 = gets.chomp
#     @first_name = name1
#     @second_name = name2
#     return "#{@first_name} #{@last_name}"
#   end

#   def changeSalary
#     puts "Please tell me the new Salary here:"
#     number = gets.chomp.to_i
#     @salary = number
#   end

#   def changeStatus
#     @active = false
#   end

# end

# person1 = Person.new("Majora", "Carter", 80000)

# p person1.first_name
# p person1.last_name
# p person1.salary
# p person1.active
# p person1.changeStatus

# person1.changeSalary

# class
class Employee 
  def initialize(input_first_name, input_last_name, input_salary, input_active_status)
    @first_name = input_first_name
    @last_name = input_last_name
    @salary = input_salary
    @active_status = input_active_status
  end

  def first_name
    @first_name
  end

  def last_name
    @last_name
  end

  def salary
    @salary
  end

  def active_status
    @active_status
  end

  def print_info
    p "#{first_name} #{last_name} makes $#{salary} per year."
  end

  def first_name=(input_first_name)
    @first_name = input_first_name
  end
end

employee1 = Employee.new("Majora", "Carter", 80000, true)

employee1.print_info

