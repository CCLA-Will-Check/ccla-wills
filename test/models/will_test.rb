require 'test_helper'

class WillTest < ActiveSupport::TestCase
  test "should not save firm without a first name" do
    will = Will.new
    assert_not will.save, "Saved the will without a first name"
  end
  test "should not save firm without a last name" do
    will = Will.new
    will.first_name = "Test"
    assert_not will.save, "Saved the will without a last name"
  end
  test "should not save firm without a date of birth" do
    will = Will.new
    will.first_name = "Test"
    will.last_name = "Test"
    assert_not will.save, "Saved the will without a date of birth"
  end
  test "should not save firm without a city of birth" do
    will = Will.new
    will.first_name = "Test"
    will.last_name = "Test"
    will.dob = "2017-01-01"
    assert_not will.save, "Saved the will without a city of birth"
  end
  test "should not save firm without a country of birth" do
    will = Will.new
    will.first_name = "Test"
    will.last_name = "Test"
    will.dob = "2017-01-01"
    will.city_of_birth = "Test City"
    assert_not will.save, "Saved the will without a country of birth"
  end
  test "should not save without an associated firm" do
    will = Will.new
    will.first_name = "Test"
    will.last_name = "Test"
    will.dob = "2017-01-01"
    will.city_of_birth = "Test City"
    will.country_of_birth = "Test Country"
    assert_not will.save, "Saved the will without an associated firm"
  end
end
