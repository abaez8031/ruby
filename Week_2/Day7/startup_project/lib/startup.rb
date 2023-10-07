require "employee"

class Startup

  attr_reader :name, :funding, :salaries, :employees

  def initialize(name, funding, salaries)
    @name = name
    @funding = funding
    @salaries = salaries
    @employees = []
  end

  def valid_title?(title)
    return true if salaries[title]
    false
  end

  def >(startup)
    self.funding > startup.funding
  end

  def hire(employee_name, title)
    if valid_title?(title)
      @employees << Employee.new(employee_name, title) 
    else
      raise Error.new("Not a valid title")
    end
  end

  def size
    @employees.length
  end

  def pay_employee(employee)
    employee_salary = salaries[employee.title]
    if @funding > employee_salary
      @funding -= employee_salary
      employee.pay(employee_salary)
    else
      Error.new("Not enough funding")
    end
  end

    def payday
      @employees.each do |employee|
        pay_employee(employee)
      end
    end

    def average_salary
      total_salary = 0
      @employees.each do |employee|
        total_salary += salaries[employee.title]
      end
      total_salary / size
    end

    def close
      @employees = []
      @funding = 0
    end

    def acquire(startup)
      @funding += startup.funding
      startup.salaries.each do |title, salary|
        @salaries[title] = salary if !@salaries[title]
      end
      @employees.concat(startup.employees)
      startup.close
    end

end
