class Employee

  attr_reader :first_name, :last_name, :active
  attr_writer :active

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end

  def test
    p 1
  end

end

employee1 = Employee.new({first_name: "Majora", last_name: "Carter", salary: 80000, active: true})
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)
# employee1.print_info
# employee2.print_info

class Manager < Employee

  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  def send_report
    puts "Sending email..."
    # use email sending library...
    puts "Email sent!"
  end

  def give_all_raises
    i = 0
    @employees.length.times do
      p @employees[i].give_annual_raise
      i += 1
    end
  end

  def fire_all_employees
    i = 0
    @employees.length.times do
      @employees[i].active = false 
      p @employees[i].active
    end
  end

  def test
    p 5
  end

end

manager = Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2])
# manager.print_info
# manager.send_report

# manager.give_all_raises

# manager.fire_all_employees

# Bonus
# I'm going to test it but I believe what happens is the method will get overwritten to when the code runs

employee1.test
manager.test
employee2.test
manager.test