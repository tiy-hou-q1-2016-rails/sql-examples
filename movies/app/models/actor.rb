class Actor < ActiveRecord::Base

  validates :first_name, :last_name, presence: true

  def full_name
    "#{last_name}, #{first_name}"
  end
end
