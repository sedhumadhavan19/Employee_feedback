# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Importing users'

Employee.create(first_name: 'Micheal', last_name:'Kelvin Victor',email: 'mkv@commutatus.com')
Employee.create(first_name: 'Arian', last_name:'Edward',email: 'arian@commutatus.com')
Employee.create(first_name: 'Hiren', last_name:'Barai',email: 'hiren@commutatus.com')
Employee.create(first_name: 'Naveen', last_name:'TP',email: 'naveen@commutatus.com')
Employee.create(first_name: 'Surendhar', last_name:'',email: 'surendhar@commutatus.com')
Employee.create(first_name: 'Damo', last_name:'Dharan',email: 'dhamo@commutatus.com')
Employee.create(first_name: 'sedhu', last_name:'Madhav',email: 'sedhu@commutatus.com')
Employee.create(first_name: 'Barath', last_name:'Raj',email: 'barath@commutatus.com')
Employee.create(first_name: 'Abheek', last_name:'Talukdar',email: 'abheek@commutatus.com')
Employee.create(first_name: 'Mani', last_name:'Kandan',email: 'mani@commutatus.com')
Employee.create(first_name: 'Mathan', last_name:'Kumar',email: 'mathan@commutatus.com')
Employee.create(first_name: 'Vivek', last_name:'Sargunam',email: 'vivek@commutatus.com')
Employee.create(first_name: 'Kiruba', last_name:'karan',email: 'karan@commutatus.com')
Employee.create(first_name: 'Anbu', last_name:'',email: 'anbu@commutatus.com')
Employee.create(first_name: 'Manzur', last_name:'Khan',email: 'manzur@commutatus.com')
Employee.create(first_name: 'Mohmeed', last_name:'Irsath',email: 'irsath@commutatus.com')
Employee.create(first_name: 'Gookul', last_name:'EVR',email: 'gookul@commutatus.com')
Employee.create(first_name: 'Nischal', last_name:'Sharma',email: 'nischal@commutatus.com')
Employee.create(first_name: 'Nishanth', last_name:'Kumar',email: 'nishanth@commutatus.com')
Employee.create(first_name: 'Ramesh', last_name:'Nagaraj',email: 'ramesh@commutatus.com')

puts 'Admin role for user'
Fabricate(:user, email: 'mkv@commutatus.com', admin: true)