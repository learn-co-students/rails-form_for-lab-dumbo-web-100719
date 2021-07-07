# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

school1 = SchoolClass.create(title: "Orel School",room_number: 43)
school2 = SchoolClass.create(title: "Union School",room_number: 12)


student1 = Student.create(first_name: "Yuriy", last_name: "Berezskyy")
student2 = Student.create(first_name: "Vova", last_name: "Pan")