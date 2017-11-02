require "minitest/autorun"
require "minitest/pride"
require "./lib/generator"

class GeneratorTest < Minitest::Test
  attr_reader :generator

  def setup
    @generator = Generator.new("./data/violations-2012.csv")
  end

  def test_it_exists
    assert_instance_of Generator, generator
  end

  def test_it_has_contents_after_reading_a_file
    assert_instance_of Array, generator.content
  end

  def test_its_contents_consist_of_violations
    assert_instance_of Violation, generator.content.first
  end

  def test_its_contents_consist_of_many_violations
    assert_equal 545, generator.content.count
  end
end