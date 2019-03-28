# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'
puts "Seeding Data ..."

# Helper functions
def open_asset(file_name)
  File.open(Rails.root.join('db', 'seed_assets', file_name))
end

# Only run on development (local) instances not on production, etc.
unless Rails.env.development?
  puts "Development seeds only (for now)!"
  exit 0
end

# Let's do this ...

## USER
AboutMe.destroy_all
Profile.destroy_all
Education.destroy_all
Carrer.destroy_all
User.destroy_all
puts "Creating new Users ..."



usr1 = User.create(
  :email => Faker::Internet.email,
  :password => '123456',
  :password_confirmation => '123456'
)
usr2 = User.create(
  :email => Faker::Internet.email,
  :password => '123456',
  :password_confirmation => '123456'
)
usr3 = User.create(
  :email => Faker::Internet.email,
  :password => '123456',
  :password_confirmation => '123456'
)
usr4 = User.create(
  :email => Faker::Internet.email,
  :password => '123456',
  :password_confirmation => '123456'
)
usr5 = User.create(
  :email => Faker::Internet.email,
  :password => '123456',
  :password_confirmation => '123456'
)

## PROFILE

puts "Re-creating Profiles ..."

Profile.create(
  :phone_number =>  Faker::PhoneNumber.cell_phone,
  :postal_code => Faker::Address.postcode,
  :street_address => Faker::Address.street_address,
  :region => Faker::Address.city,
  :country => Faker::Address.country,
  :user => usr1
)

Profile.create(
  :phone_number =>  Faker::PhoneNumber.cell_phone,
  :postal_code => Faker::Address.postcode,
  :street_address => Faker::Address.street_address,
  :region => Faker::Address.city,
  :country => Faker::Address.country,
  :user => usr2
)

Profile.create(
  :phone_number =>  Faker::PhoneNumber.cell_phone,
  :postal_code => Faker::Address.postcode,
  :street_address => Faker::Address.street_address,
  :region => Faker::Address.city,
  :country => Faker::Address.country,
  :user => usr3
)

Profile.create(
  :phone_number =>  Faker::PhoneNumber.cell_phone,
  :postal_code => Faker::Address.postcode,
  :street_address => Faker::Address.street_address,
  :region => Faker::Address.city,
  :country => Faker::Address.country,
  :user => usr4
)

Profile.create(
  :phone_number =>  Faker::PhoneNumber.cell_phone,
  :postal_code => Faker::Address.postcode,
  :street_address => Faker::Address.street_address,
  :region => Faker::Address.city,
  :country => Faker::Address.country,
  :user => usr5
)



## EDUCATION

puts "Re-creating Educations ..."



edu1 = usr1.educations.create!({
  school_name:  Faker::Educator.university,
  degree: Faker::Educator.degree,
  start_date: Faker::Date.backward(14),
  end_date: Faker::Date.backward(14),
  notes: Faker::GreekPhilosophers.quote
})

edu2 = usr1.educations.create!({
  school_name:  Faker::Educator.university,
  degree: Faker::Educator.degree,
  start_date: Faker::Date.backward(14),
  end_date: Faker::Date.backward(14),
  notes: Faker::GreekPhilosophers.quote
})

edu3 = usr1.educations.create!({
  school_name:  Faker::Educator.university,
  degree: Faker::Educator.degree,
  start_date: Faker::Date.backward(14),
  end_date: Faker::Date.backward(14),
  notes: Faker::GreekPhilosophers.quote
})

edu4 = usr2.educations.create!({
  school_name:  Faker::Educator.university,
  degree: Faker::Educator.degree,
  start_date: Faker::Date.backward(14),
  end_date: Faker::Date.backward(14),
  notes: Faker::GreekPhilosophers.quote
})

edu5 = usr2.educations.create!({
  school_name:  Faker::Educator.university,
  degree: Faker::Educator.degree,
  start_date: Faker::Date.backward(14),
  end_date: Faker::Date.backward(14),
  notes: Faker::GreekPhilosophers.quote
})

edu6 = usr2.educations.create!({
  school_name:  Faker::Educator.university,
  degree: Faker::Educator.degree,
  start_date: Faker::Date.backward(14),
  end_date: Faker::Date.backward(14),
  notes: Faker::GreekPhilosophers.quote
})

edu7 = usr2.educations.create!({
  school_name:  Faker::Educator.university,
  degree: Faker::Educator.degree,
  start_date: Faker::Date.backward(14),
  end_date: Faker::Date.backward(14),
  notes: Faker::GreekPhilosophers.quote
})

edu8 = usr3.educations.create!({
  school_name:  Faker::Educator.university,
  degree: Faker::Educator.degree,
  start_date: Faker::Date.backward(14),
  end_date: Faker::Date.backward(14),
  notes: Faker::GreekPhilosophers.quote
})

edu9 = usr3.educations.create!({
  school_name:  Faker::Educator.university,
  degree: Faker::Educator.degree,
  start_date: Faker::Date.backward(14),
  end_date: Faker::Date.backward(14),
  notes: Faker::GreekPhilosophers.quote
})

edu10 = usr3.educations.create!({
  school_name:  Faker::Educator.university,
  degree: Faker::Educator.degree,
  start_date: Faker::Date.backward(14),
  end_date: Faker::Date.backward(14),
  notes: Faker::GreekPhilosophers.quote
})

edu11 = usr4.educations.create!({
  school_name:  Faker::Educator.university,
  degree: Faker::Educator.degree,
  start_date: Faker::Date.backward(14),
  end_date: Faker::Date.backward(14),
  notes: Faker::GreekPhilosophers.quote
})

edu12 = usr4.educations.create!({
  school_name:  Faker::Educator.university,
  degree: Faker::Educator.degree,
  start_date: Faker::Date.backward(14),
  end_date: Faker::Date.backward(14),
  notes: Faker::GreekPhilosophers.quote
})

edu13 = usr4.educations.create!({
  school_name:  Faker::Educator.university,
  degree: Faker::Educator.degree,
  start_date: Faker::Date.backward(14),
  end_date: Faker::Date.backward(14),
  notes: Faker::GreekPhilosophers.quote
})

edu14 = usr4.educations.create!({
  school_name:  Faker::Educator.university,
  degree: Faker::Educator.degree,
  start_date: Faker::Date.backward(14),
  end_date: Faker::Date.backward(14),
  notes: Faker::GreekPhilosophers.quote
})

edu15 = usr5.educations.create!({
  school_name:  Faker::Educator.university,
  degree: Faker::Educator.degree,
  start_date: Faker::Date.backward(14),
  end_date: Faker::Date.backward(14),
  notes: Faker::GreekPhilosophers.quote
})

edu16 = usr5.educations.create!({
  school_name:  Faker::Educator.university,
  degree: Faker::Educator.degree,
  start_date: Faker::Date.backward(14),
  end_date: Faker::Date.backward(14),
  notes: Faker::GreekPhilosophers.quote
})

edu17 = usr5.educations.create!({
  school_name:  Faker::Educator.university,
  degree: Faker::Educator.degree,
  start_date: Faker::Date.backward(14),
  end_date: Faker::Date.backward(14),
  notes: Faker::GreekPhilosophers.quote
})


## CARRER

puts "Re-creating Carrer ..."


carr1 = usr1.carrers.create!({
  job_category:  Faker::Job.field,
  job_title: Faker::Job.title,
  month_experience: Faker::Number.between(1, 100),
  description: Faker::Hipster.paragraph(3)
})

carr2 = usr2.carrers.create!({
  job_category:  Faker::Job.field,
  job_title: Faker::Job.title,
  month_experience: Faker::Number.between(1, 100),
  description: Faker::Hipster.paragraph(3)
})

carr3 = usr3.carrers.create!({
  job_category:  Faker::Job.field,
  job_title: Faker::Job.title,
  month_experience: Faker::Number.between(1, 100),
  description: Faker::Hipster.paragraph(3)
})

carr4 = usr4.carrers.create!({
  job_category:  Faker::Job.field,
  job_title: Faker::Job.title,
  month_experience: Faker::Number.between(1, 100),
  description: Faker::Hipster.paragraph(3)
})

carr5 = usr5.carrers.create!({
  job_category:  Faker::Job.field,
  job_title: Faker::Job.title,
  month_experience: Faker::Number.between(1, 100),
  description: Faker::Hipster.paragraph(3)
})



## ABOUTME

puts "Re-creating About_me ..."


AboutMe.create(
  :description => Faker::Hipster.paragraph(3),
  :user => usr1
)

AboutMe.create(
  :description => Faker::Hipster.paragraph(3),
  :user => usr2
)

AboutMe.create(
  :description => Faker::Hipster.paragraph(3),
  :user => usr3
)

AboutMe.create(
  :description => Faker::Hipster.paragraph(3),
  :user => usr4
)

AboutMe.create(
  :description => Faker::Hipster.paragraph(3),
  :user => usr5
)
