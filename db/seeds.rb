# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'ffaker'
require 'faker'

# user = User.create!(absence: 5, avatar_url: "https://some_url/img.jpg", fav_prog: "Ruby", index_nr: "345A", last_name: "Kowalski", name: "Jan", phone_nr: "601-35-45-90", marks: [3, 4, 5])
# user.schools.create!(campus: "Campus A", degree: "bachellor", secondary_school: "Secondary School", university: "MIT")
# user.addresses.create!(city: "Warsaw", street_adress: "Wislana", zip_code: "03-900")

400.times do
    marks = []
    rand(3..6).times do
        marks << rand(2..5)
    end
    absence = -3*marks.inject(:+).to_f.round/marks.size+15
    user = User.create!(absence: absence,
                        avatar_url: FFaker::Avatar.image,
                        fav_prog:   FFaker::Skill.tech_skills, 
                        index_nr:   Faker::Number.leading_zero_number(8), 
                        last_name:  FFaker::NamePL.last_name, 
                        name:       FFaker::NamePL.first_name, 
                        phone_nr:   Faker::PhoneNumber.cell_phone, 
                        marks:      marks
                        )
    user.schools.create!(campus:            Faker::Educator.campus, 
                         degree:            FFaker::Education.degree, 
                         secondary_school:  FFaker::Education.school, 
                         university:        FFaker::Education.school
                         )
    user.addresses.create!(city:            FFaker::Address.city, 
                           street_adress:   FFaker::Address.street_address, 
                           zip_code:        FFaker::AddressUS.zip_code)
end
