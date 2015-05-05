class Seed
  def self.start
    new.generate
  end

  def generate
    create_students
    create_admin
    create_events
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

  def create_events
    10.times do |x|
      date = Faker::Time.between(x.days.ago, Date.today)
      Event.create(name: Faker::Company.catch_phrase,
                   description: Faker::Lorem.paragraph,
                   location: Faker::Address.street_address,
                   starts_at: date,
                   ends_at: date)
    end
  end
end

Seed.start