class ExperienceLevel < ApplicationRecord
  has_many :jobs

  def display_name
    self.level # or whatever column you want
  end

end
