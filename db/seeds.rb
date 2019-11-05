# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

student_1 = Student.create(first_name: "Vannida",last_name: "Lim")
student_2 = Student.create(first_name: "Minseo",last_name: "Kim")
student_3 = Student.create(first_name: "Hello",last_name: "Kitty")

biology = SchoolClass.create(title: "Biology" , room_number: 200 )
math = SchoolClass.create(title: "Algebra", room_number: 115)
art = SchoolClass.create(title: "Art", room_number: 325)