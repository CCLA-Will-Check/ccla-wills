# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Firm.create(name: "Firm 1", address: "Address 1:", city: "Ottawa", province: "Ontario", country: "Canada", postal_code: "X1X 1X1", telephone: "613-555-5555", lsuc: "12345")
Firm.create(name: "Firm 2", address: "Address 2:", city: "Edmonton", province: "Alberta", country: "Canada", postal_code: "X2X 2X2", telephone: "780-555-5555", lsuc: "67890")
Will.create(first_name: "Ina", last_name: "Garten", alt_last_name: "none", city_of_birth: "Boston", country_of_birth: "United States", last_resided: "Boston", firm_id: 2)
Will.create(first_name: "Nigella", last_name: "Lawson", alt_last_name: "none", city_of_birth: "London", country_of_birth: "England", last_resided: "New York", firm_id: 1)
Request.create(applicant: "William Gibson", email: "great@dismal.com", telephone: "514-555-5555", testator_first: "Ada", testator_last: "Lovelace", testator_alt: "Byron", testator_dob: "1813-02-02", testator_city: "London", testator_province: "NA", testator_country: "England", testator_last_resident: "London")
