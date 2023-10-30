# Employee Array Class

# class Employee
#   def initialize (input_first_name, input_last_name, input_salary, input_active)
#     @first_name = input_first_name
#     @last_name = input_last_name
#     @salary = input_salary
#     @active = input_active
#   end
#   # This is an example of a class using an array

#   def yearly_salary_increase
#     @salary = 1.05 * @salary
#   end

#   def print_info
#     yearly_salary_increase
#     return "#{@first_name} #{@last_name} makes #{@salary} a year."
#   end
# end

# employee1 = Employee.new("Majora", "Carter", 100000, true)
# puts employee1.print_info



############################################################################################
# Employee Hash Class

class EmployeeHash
  attr_reader :first_name, :last_name, :active
  attr_writer :salary

  def initialize (input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end
  # This is an example of a class using a hash

  def yearly_salary_increase
    @salary = 1.05 * @salary
  end

  def print_info
    yearly_salary_increase
    return "#{@first_name} #{@last_name} makes #{@salary} a year."
  end
end

employee1 = EmployeeHash.new(first_name: "Majora", last_name: "Carter", salary: 100000, active: true)
puts employee1.print_info


############################################################################################

# This code is an example of a Manager's data. Except, they also need to send the reports. We could write it like this: 1) copy all the code from the employee class and call it Manager 2) Add a method for 'sending reports' 3) all done, I can run your code!... but this is not the best way to write maintainable code.

# class Manager
#   def initialize (input_first_name, input_last_name, input_salary, input_active)
#     @first_name = input_first_name
#     @last_name = input_last_name
#     @salary = input_salary
#     @active = input_active
#   end
# # This is an example of a class using an array

#   def yearly_salary_increase
#     @salary = 1.05 * @salary
#   end

#   def print_info
#     yearly_salary_increase
#     return "#{@first_name} #{@last_name} makes #{@salary} a year."
#   end

#   def send_report
#     puts "sending emails..."
#     # sending system
#     puts "email sent!"
#   end
# end


# manager = Manager.new("Jim", "Halpert", 90000, true)
# puts manager.print_info

############################################################################################

# We can rewrite the Manager class to be a lot more maintable by using 'inheritance'. To do this, use the '<' symbol next to the class name "Manager" followed by the name of the class it should inherit. Then, add any new methods that are specific to the manager. In this case, it's sending reports.

# class Manager < Employee
#   def initialize (input_first_name, input_last_name, input_salary, input_active)
#     @first_name = input_first_name
#     @last_name = input_last_name
#     @salary = input_salary
#     @active = input_active
#   end

#   def send_report
#     puts "sending emails..."
#     # sending system
#     puts "email sent!"
#   end
# end

# manager = Manager.new("Jim", "Halpert", 90000, true)
# puts manager.print_info
# puts manager.send_report
# puts manager.yearly_salary_increase


############################################################################################

# Let's say the manager wants to track another piece of data. There are two ways we can do this: 1) We can rewrite the initialize method from the Employee class and tack on the new argument/data point. Or 2) we can use "super" to tack on the new data point AND refer to the Employee def initialization arguments/data points. I'll try both ways beginning with copying and pasting the entire initialization method from Employee:

# class Manager < Employee
#   def initialize (input_first_name, input_last_name, input_salary, input_active, input_employees)
#     @first_name = input_first_name
#     @last_name = input_last_name
#     @salary = input_salary
#     @active = input_active
#     #This is the new data point:
#     @employees = input_employees
#   end

#   def send_report
#     puts "sending emails..."
#     # sending system
#     puts "email sent!"
#   end

#   def print_info_Jim
#     puts "#{@first_name} #{@last_name} makes #{@salary} per year and oversees #{@employees} employees."
#   end
# end

# manager = Manager.new("Jim", "Halpert", 90000, true, 10) # number of arguments needs to match the initialize method
# puts manager.print_info_Jim
# puts manager.send_report
# puts manager.yearly_salary_increase

############################################################################################

# This option works! It allowed us to add more data points for the Manager to use + use all the methods from the Employee class. Howver.... it's WET and can be more maintainable (DRY). I'll try using 'super' now, but oops, this is still using an array. 'super' doesn't work with arrays! So first, I shall convert the data to a hash and then use 'super':

# class Manager < Employee
#   def initialize (input_options)
#     @first_name = input_options[:first_name]
#     @last_name = input_options[:last_name]
#     @salary = input_options[:salary]
#     @active = input_options[:active]
#     #This is the new data point:
#     # @employees = input_employees
#   end

#   def send_report
#     puts "sending emails..."
#     # sending system
#     puts "email sent!"
#   end
# end

# manager = Manager.new(first_name: "Pam", last_name: "Halpert", salary: 41500, active: true)
# puts manager.print_info
# puts manager.send_report

############################################################################################

# It's a hash now! And I've decided to focus on Pam now as a manager. So now, I'll try the 'super' maintainable way of tacking on a new data point while still utilizing the data points in the Employee class. But first, I'll also need to make the Employee class (the parent class) use a hash as well because both the parent class and child need to be the same data format. For the sake of this exercise file, I'll be creating a new EmployeeHash class for this exercise to use (second piece of code up at the top.)

class Manager < EmployeeHash
  attr_reader :first_name, :last_name, :active, :employees

  def initialize (input_options)
    super
    #This is the new data point:
    @employees = input_options[:employees]
  end

  def send_report
    puts "sending emails..."
    # sending system
    puts "email sent!"
  end

  def print_info_Pam
    puts "#{@first_name} #{@last_name} works with #{@employees} employees in the Sales department."
  end
end

manager = Manager.new(first_name: "Pam", last_name: "Halpert", salary: 41500, active: true, employees: 3)
manager_alt = Manager.new(first_name: "Pam", last_name: "Halpert", salary: 41500, active: true, employees: [employee1]) # Objects listed from the parent class 'EmployeeHash' can be added by putting it in an array

manager.send_report
manager.print_info_Pam
manager_alt.print_info_Pam
