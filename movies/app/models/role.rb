class Role < ActiveRecord::Base
  belongs_to :actor
  belongs_to :movie

  validates :actor, :movie, presence: true
end
