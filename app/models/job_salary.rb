class JobSalary < ApplicationRecord
  has_many :jobs

  def display_name
    self.salary # or whatever column you want
  end

end
