# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
 
User.create(
  email: "wirth@m.com",
  password: "pommes",
  name: "wirth",
  firstname: "jeremy",
  gender: "man")
  
User.create(
  email: "assuncao@m.com",
  password: "pommes",
  name: "assuncao",
  firstname: "jeshon",
  gender: "woman") 
  
User.create(
  email: "mut@m.com",
  password: "pommes",
  name: "mut",
  firstname: "horia",
  gender: "man")

$i = 0
$num = 15
$gender = "";
until $i > $num  do
  if(Faker::Number.between(0,1) == 0)
    $gender = "man";
  else
    $gender = "woman";
  end
  Post.create(
    users_id: Faker::Number.between(1, 3),
    date: Faker::Date.between(2.days.ago, Date.today),
    title: Faker::Name.title,
    description: Faker::Lorem.paragraph,
    name: Faker::Name.last_name,
    firstname: Faker::Name.first_name,
    image: Faker::Avatar.image,
    gender: $gender
    )
    $i += 1;
end