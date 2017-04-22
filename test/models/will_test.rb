require 'test_helper'

class WillTest < ActiveSupport::TestCase
  test "should not save will without a first name" do
    will = Will.new
    assert_not will.save, "Saved the will without a first name"
  end
  test "should not save will without a last name" do
    will = Will.new
    will.first_name = "Test"
    assert_not will.save, "Saved the will without a last name"
  end
  test "should not save will without a date of birth" do
    will = Will.new
    will.first_name = "Test"
    will.last_name = "Test"
    assert_not will.save, "Saved the will without a date of birth"
  end
  test "should not save will without a city of birth" do
    will = Will.new
    will.first_name = "Test"
    will.last_name = "Test"
    will.dob = "2017-01-01"
    assert_not will.save, "Saved the will without a city of birth"
  end
  test "should not save will without a country of birth" do
    will = Will.new
    will.first_name = "Test"
    will.last_name = "Test"
    will.dob = "2017-01-01"
    will.city_of_birth = "Test City"
    assert_not will.save, "Saved the will without a country of birth"
  end
  test "should not save will without a lawyer name" do
    will = Will.new
    will.first_name = "Test"
    will.last_name = "Test"
    will.dob = "2017-01-01"
    will.city_of_birth = "Test City"
    will.country_of_birth = "Test Country"
    assert_not will.save, "Saved the will without a lawyer name"
  end
  test "should not save will without an LSUC number" do
    will = Will.new
    will.first_name = "Test"
    will.last_name = "Test"
    will.dob = "2017-01-01"
    will.city_of_birth = "Test City"
    will.country_of_birth = "Test Country"
    will.lawyer_name = "Joe Blow"
    assert_not will.save, "Saved the will without an LSUC number"
  end
  test "should not save will without a firm name" do
    will = Will.new
    will.first_name = "Test"
    will.last_name = "Test"
    will.dob = "2017-01-01"
    will.city_of_birth = "Test City"
    will.country_of_birth = "Test Country"
    will.lawyer_name = "Joe Blow"
    will.lsuc = "12345"
    assert_not will.save, "Saved the will without a firm name"
  end
  test "should not save will without a telephone number" do
    will = Will.new
    will.first_name = "Test"
    will.last_name = "Test"
    will.dob = "2017-01-01"
    will.city_of_birth = "Test City"
    will.country_of_birth = "Test Country"
    will.lawyer_name = "Joe Blow"
    will.lsuc = "12345"
    will.firm_name = "Test Firm"
    assert_not will.save, "Saved the will without a telephone number"
  end
  test "should not save will without a year" do
    will = Will.new
    will.first_name = "Test"
    will.last_name = "Test"
    will.dob = "2017-01-01"
    will.city_of_birth = "Test City"
    will.country_of_birth = "Test Country"
    will.lawyer_name = "Joe Blow"
    will.lsuc = "12345"
    will.firm_name = "Test Firm"
    will.telephone = "780-555-5555"
    assert_not will.save, "Saved the will without a year"
  end
end
