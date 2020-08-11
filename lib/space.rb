require "database_connection"

class Space
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def self.all
    DatabaseConnection.setup('makersbnb_test')
    result = DatabaseConnection.query("SELECT * FROM spaces;")
    result[0]['name']
  end

end
