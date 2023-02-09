# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

100.times do
  city = City.create!(name: Faker::Address.city)
end
100.times do
  doctor = Doctor.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,   
    zip_code: Faker::Address.zip_code,
    city: City.all.sample)
  patient = Patient.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    city: City.all.sample)
=begin
  specialty = Specialty.create!(
    field: Faker::Job.field,
  )
=end
end

100.times do
appointment = Appointment.create!(
  date: Faker::Date.forward(days: 365).to_datetime + rand(8..19).hours + (rand(0..3) * 15).minutes,
  doctor: Doctor.all.sample,
  patient: Patient.all.sample,
  city: City.all.sample)
=begin
specialty_doctor = JoinTableSpecialtyDoctor.create!(
  doctor: Doctor.all.sample,
  specialty: Specialty.all.sample
)
=end
end

