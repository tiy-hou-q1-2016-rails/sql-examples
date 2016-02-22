class Article
  attr_accessor :name, :id, :description, :date_added

  def initialize(id, name, description, date_added)
    self.id = id
    self.name = name
    self.description = description
    self.date_added = date_added
  end
end
