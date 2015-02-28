# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.create(username: "jhstephenson", 
						email: "jstephen@scc-i.com", 
						password: "acknbssb1", 
						password_confirmation: "acknbssb1")
User.create(username: "jhstephenson2", 
						email: "jstephen2@scc-i.com", 
						password: "acknbssb2", 
						password_confirmation: "acknbssb2")
User.create(username: "jhstephenson3", 
						email: "jstephen3@scc-i.com", 
						password: "acknbssb3", 
						password_confirmation: "acknbssb3")
User.create(username: "jhstephenson4", 
						email: "jstephen4@scc-i.com", 
						password: "acknbssb4", 
						password_confirmation: "acknbssb4")
User.create(username: "jhstephenson5", 
						email: "jstephen5@scc-i.com", 
						password: "acknbssb5", 
						password_confirmation: "acknbssb5")
p "Test Users Created"