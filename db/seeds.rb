# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# User.create(username: 'richard', first_name: 'richard', email: 'richard@turing.io', phone: '333-333-3333', role: 'user', password: 'password')


class Seed
  def self.start
    new.generate
  end

  def generate
    create_students
    create_admin
  end

  def create_students
    10.times do |x|
      first_name = Faker::Name.first_name
      last_name  = Faker::Name.last_name
      User.create(first_name: first_name,
                  last_name: last_name,
                  username: "student#{x}",
                  password: "password",
                  email: Faker::Internet.email,
                  phone: Faker::PhoneNumber.phone_number,
                  role: 0,
                  dob: Faker::Date.between(18.years.ago, 13.years.ago))
    end
    puts "#{User.count} students created."
  end

  def create_admin
    User.create(first_name: "Admin",
                last_name: "Administrator",
                username: "admin",
                password: "password",
                email: Faker::Internet.email,
                phone: Faker::PhoneNumber.phone_number,
                role: 1)
    puts "Admin created. Username: admin, password: password."
  end
end

Seed.start