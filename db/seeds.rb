# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Patient.create(birthdate: "2001-01-01", patient_number: "ABC123")
<<<<<<< HEAD
CheckIn.create(user_id:1)
Screening.create(check_in_id:2,screening_type: "anxiety")
Screening.create(check_in_id:2,screening_type: "depression")
Question.create(question:["Little interest or pleasure in doing things", "Feeling down, depressed, or hopeless"],screening_id: 1)
Question.create(question:["bbbbbbbbbbbbbbbb", "ccccccccccccccccc"],screening_id: 2)
Question.create(question:["Little interest or pleasure in doing things", "Feeling down, depressed, or hopeless"],screening_id: 3)
Question.create(question:["bbbbbbbbbbbbbbbb", "ccccccccccccccccc"],screening_id: 4)
=======
CheckIn.create(user_id:1,patient_id:1)
Screening.create(screening_type: "depression",check_in_id:1,response:{"absbssbbb"=>"ababbabbbbbbba"})
Screening.create(screening_type: "anxiety",check_in_id:1,response:{"absbssbbb"=>"ababbabbbbbbba"})
Screening.create(screening_type: "depression",check_in_id:1,response:{"absbssbbb"=>"ababbabbbbbbba"})
Question.create(question:["Little interest or pleasure in doing things", "Feeling down, depressed, or hopeless"],screening_id: 1)
Question.create(question:["bbbbbbbbbbbbbbbb", "ccccccccccccccccc"],screening_id: 3)
Question.create(question:["vvajvjvahbvavbjhavs", "avkakvnanavks"],screening_id: 2)
>>>>>>> b64a0c356c3a8df684a4735dd2c902e5fc2f9c18
User.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?