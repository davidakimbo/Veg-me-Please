# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

david = User.create(first_name: "David", last_name: "Kim", email: "miniboie@gmail.com", password: "dkrules", password_confirmation: "dkrules")
frank = User.create(first_name: "Frank", last_name: "Underwood", email: "frank@fakemail.com", password: "frank", password_confirmation: "frank")

