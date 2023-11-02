# First set of code
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

employee1 = EmployeeHash.new(first_name: "Dwight", last_name: "Shrute", salary: 50000, active: true)
employee2 = EmployeeHash.new(first_name: "Michael", last_name: "Scott", salary: 60000, active: true)

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

  def give_annual_increase
    @employees.each do |employee|
      employee.give_annual_increase
    end

end
end

manager = Manager.new(first_name: "Michael", last_name: "Scott", salary: 41500, active: true, employees: 3)
manager_alt = Manager.new(first_name: "Pam", last_name: "Halpert", salary: 41500, active: true, employees: [employee1, employee2])

# manager.send_report
# manager.print_info_Pam
# manager_alt.print_info_Pam
# @employee1 # Dwight Shrute
# employee2 # Michael Scott
# p manager
manager.give_annual_increase
