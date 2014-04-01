# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

david = User.create(name: "David Kim", email: "miniboie@gmail.com", password: "dkrules", password_confirmation: "dkrules")
frank = User.create(name: "Frank Underwood", email: "frank@fakemail.com", password: "frank", password_confirmation: "frank")

