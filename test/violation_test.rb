require "minitest/autorun"
require "minitest/pride"
require "./lib/violation"

class ViolationTest < Minitest::Test
  attr_reader :violation

  def setup
    @violation = Violation.new({violation_id: "204851",
                              inspection_id: "261019",
                              violation_category: "Vegetation",
                              violation_date: "2012-01-03 00:00:00",
                              violation_date_closed: "2012-01-17 00:00:00",
                              violation_type: "Refuse Accumulation"})
  end

  def test_it_exists
    assert_instance_of Violation, violation
  end

  def test_violation_has_a_violation_id
    assert_equal "204851", violation.violation_id
  end

  def test_violation_has_a_inspection_id
    assert_equal "261019", violation.inspection_id
  end

  def test_violation_has_a_violation_category
    assert_equal "Vegetation", violation.violation_category
  end

  def test_violation_has_a_violation_date
    assert_equal "2012-01-03 00:00:00", violation.violation_date
  end

  def test_violation_has_a_email_address
    assert_equal "2012-01-17 00:00:00", violation.violation_date_closed
  end

  def test_violation_has_a_home_phone
    assert_equal "Refuse Accumulation", violation.violation_type
  end
end
