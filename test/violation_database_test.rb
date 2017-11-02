require "minitest/autorun"
require "minitest/pride"
require "./lib/violation_database"

class ViolationDatabaseTest < Minitest::Test
  attr_reader :database

  def setup
    @database = ViolationDatabase.new("./data/violations-2012.csv")
  end

  def test_it_exists
    assert_instance_of ViolationDatabase, database
  end

  def test_database_has_generator
    assert_instance_of Array, database.database
  end

  def test_generator_database_consists_of_violations
    assert_instance_of Violation, database.database.first
    assert_instance_of Violation, database.database.last
    assert_equal 545, database.database.count
  end

end