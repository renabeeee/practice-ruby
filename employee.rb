class Employee
	def initialize (input_first_name, input_last_name, input_salary, input_active)
	@first_name = input_first_name
	@last_name = input_last_name
  @salary = input_salary
  @active = input_active
end
# This is an example of a class using an array

def yearly_salary_increase
  @salary = 1.05 * @salary
end

def print_info
  yearly_salary_increase
  return "#{@first_name} #{@last_name} makes #{@salary} a year."
end

end

employee1 = Employee.new("Majora", "Carter", 100000, true)
puts employee1.print_info
