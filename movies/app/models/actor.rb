class Actor < ActiveRecord::Base

  validates :first_name, :last_name, presence: true

  has_many :roles
  has_many :movies, through: :roles

  def full_name
    "#{last_name}, #{first_name}"
  end
end
