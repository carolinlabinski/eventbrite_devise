
User.destroy_all
Event.destroy_all

b=1
10.times do
  User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    description: Faker::Lorem.paragraph(sentence_count: 3),
    email: Faker::Name.first_name.downcase + b.to_s + "@yopmail.com",
    password: "mdpmdp"
  )
  b+=1
end


multiple_of_five = [5, 10, 15, 20, 25, 30, 35, 40, 45, 50, 55, 60]
a=1
20.times do
  Event.create!(
    start_date: Faker::Time.between(from: DateTime.now, to: DateTime.now+30),
    duration: multiple_of_five.sample,
    title: "Fake Event " + a.to_s,
    description: Faker::Lorem.paragraph,
    price: Faker::Number.between(from: 20, to: 1000),
    location: Faker::Address.city,
  )
a+=1
end