require 'test_helper'

class FirmTest < ActiveSupport::TestCase
  test "should not save firm without a name" do
    firm = Firm.new
    assert_not firm.save, "Saved the firm without a name"
  end
  test "should not save firm without an address" do
    firm = Firm.new
    firm.name = "Test Firm"
    assert_not firm.save, "Saved the firm without an address"
  end
  test "should not save firm without a city" do
    firm = Firm.new
    firm.name = "Test Firm"
    firm.address = "Test Address"
    assert_not firm.save, "Saved the firm without a city"
  end
  test "should not save firm without a province" do
    firm = Firm.new
    firm.name = "Test Firm"
    firm.address = "Test Address"
    firm.city = "Test City"
    assert_not firm.save, "Saved the firm without a province"
  end
  test "should not save firm without a country" do
    firm = Firm.new
    firm.name = "Test Firm"
    firm.address = "Test Address"
    firm.city = "Test City"
    firm.province = "Test Province"
    assert_not firm.save, "Saved the firm without a country"
  end
  test "should not save firm without a postal code" do
    firm = Firm.new
    firm.name = "Test Firm"
    firm.address = "Test Address"
    firm.city = "Test City"
    firm.province = "Test Province"
    firm.country = "Test Country"
    assert_not firm.save, "Saved the firm without a postal code"
  end
  test "should not save firm without a telephone number" do
    firm = Firm.new
    firm.name = "Test Firm"
    firm.address = "Test Address"
    firm.city = "Test City"
    firm.province = "Test Province"
    firm.country = "Test Country"
    firm.postal_code = "X1X 1X1"
    assert_not firm.save, "Saved the firm without a telephone number"
  end
  test "should not save firm without an LSUC number" do
    firm = Firm.new
    firm.name = "Test Firm"
    firm.address = "Test Address"
    firm.city = "Test City"
    firm.province = "Test Province"
    firm.country = "Test Country"
    firm.postal_code = "X1X 1X1"
    firm.telephone = "555-555-5555"
    assert_not firm.save, "Saved the firm without an LSUC number"
  end
end
