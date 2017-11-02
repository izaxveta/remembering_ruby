require 'generator'

class ViolationDatabase
  attr_reader :database

  def initialize(file_path)
    @database = generate_database(file_path)
  end

  def generate_database(file_path)
    generator = Generator.new(file_path)
    generator.content
  end
end

# https://github.com/piotrmurach/tty-table