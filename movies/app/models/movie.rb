class Movie < ActiveRecord::Base

  validates :title, presence: true
  has_many :roles
  has_many :actors, through: :roles
end
