# require 'pry'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning the database...'
Category.destroy_all
Question.destroy_all
Answer.destroy_all
User.destroy_all
Donation.destroy_all

puts 'Creating donations...'

donation = Donation.new(name: 'WWG', sku: 'WWF', price: 1000, description: "WWG is a leading independent conservation organisation. Our mission is to create a world where people and wildlife can thrive together. To achieve our mission, we're finding ways to help transform the future for the world’s wildlife, rivers, forests and seas; pushing for a reduction in carbon emissions that will avoid catastrophic climate change; and pressing for measures to help people live sustainably, within the means of our one planet. We’re acting now to make this happen.")
donation.remote_photo_url = 'https://res.cloudinary.com/dogyrtlff/image/upload/v1568916958/k3eyttgxsdmu74prvhwg.jpg'
donation.save!

donation = Donation.new(name: 'Saving Young Lives', sku: 'save-the-children', price: 1000, description: "We work alongside children in more than 100 countries, including the UK. Together, with Save the Children members around the world, we have three big goals. Our shared ambition is that by 2030, no child dies from preventable causes before their fifth birthday, all children learn from a quality basic education, and violence against children is no longer tolerated. We tackle big problems, but we know that every child is different, and every one of them has something special to bring to the world.")
donation.remote_photo_url = 'https://res.cloudinary.com/dogyrtlff/image/upload/v1568917007/nq5xai9uldfxdc4kk8yw.jpg'
donation.save!

donation = Donation.new(name: 'Cancer-Free World', sku: 'cancer-research', price: 1000, description: "We want survival in the UK to be among the best in the world. We’re focusing our efforts in four key areas – working to help prevent cancer, diagnose it earlier, develop new treatments and optimise current treatments by personalising them and making them even more effective. We’ll continue to support research into all types of cancer and across all age groups. And we’re keeping our focus on understanding the biology of cancer so we can use this vital knowledge to save more lives.")
donation.remote_photo_url = 'https://res.cloudinary.com/dogyrtlff/image/upload/v1568916981/ocg5ojppdyaku85vnfmw.jpg'
donation.save!

puts 'Creating greenseers...'

user = User.new(email: 'sam@ecomail.com',
   password: '123456',
  )
user.remote_photo_url = 'https://res.cloudinary.com/dogyrtlff/image/upload/v1569668151/wehxn9glwx6nva8p4zr4.jpg'
user.save!

user = User.new(email: 'egor@ecomail.com',
   password: '123456',
  )
user.remote_photo_url = 'https://res.cloudinary.com/dogyrtlff/image/upload/v1567256761/xu1udtfnjqdpceogiyfj_uc5viq.jpg'
user.save!

user = User.new(email: 'sunny@ecomail.com',
   password: '123456',
  )
user.remote_photo_url = 'https://res.cloudinary.com/dogyrtlff/image/upload/v1567256769/dxhmecdkkmsxytapykf2_fjgeiz.jpg'
user.save!

user = User.new(email: 'david@ecomail.com',
   password: '123456',
  )
user.remote_photo_url = 'https://res.cloudinary.com/dogyrtlff/image/upload/v1567256756/uskypjdm1wq9jw9iv4ec_yqdefh.jpg'
user.save!

puts 'Users created!'


puts "Creating categories..."
category_attributes = [
 {
  name: "Travel",
 },
 {
  name: "Home",
 },
 {
  name: "Consumption",
 },
 {
  name: "Society",
 }
]
Category.create!(category_attributes)

puts "Creating questions..."

question_attributes = [
 {
  category_id: 1,
  content: "How many return flights have you taken over past month?"
 },
 {
  category_id: 1,
  content: "What kind of vehicle do you mainly use for transportation?"
 },
 {
  category_id: 1,
  content: "How many hours a week do you spend on the train?"
 },
 {
  category_id: 1,
  content: "How many hours a week do you spend on the bus?"
 },
 {
  category_id: 2,
  content: "How many bedrooms does your house have?"
 },
 {
  category_id: 2,
  content: "How many people (aged 17 and over) live in your house?"
 },
 {
  category_id: 2,
  content: "Is your electricity on a green tariff?"
 },
 {
  category_id: 2,
  content: "How warm do you keep your home in winter?"
 },
  {
  category_id: 3,
  content: "How would you best describe your diet?"
 },
 {
  category_id: 3,
  content: "In a week, how much do you spend on food from restaurants, canteens and takeaways?"
 },
 {
  category_id: 3,
  content: "Of the food you buy how much is wasted and thrown away?"
 },
 {
  category_id: 3,
  content: "How often do you buy locally produced food that is not imported to the UK?"
 },
 {
  category_id: 4,
  content: "How much have you donated over the past month?"
 },
 {
  category_id: 4,
  content: "How many hours of volunteering have you done over the past month?"
 }
]

Question.create!(question_attributes)

puts "Creating options..."
option_attributes = [
 {
  question_id: 1,
  content: "none",
  weight: 5
 },
 {
  question_id: 1,
  content: "1-3",
  weight: 3
 },
 {
  question_id: 1,
  content: "4-6",
  weight: 2
 },
 {
  question_id: 1,
  content: "11+",
  weight: 1
 },
 {
  question_id: 2,
  content: "car",
  weight: 2
 },
 {
  question_id: 2,
  content: "motorbike",
  weight: 2
 },
 {
  question_id: 2,
  content: "public transport",
  weight: 5
 },
 {
  question_id: 3,
  content: "none",
  weight: 5
 },
 {
  question_id: 3,
  content: "1-4",
  weight: 3
 },
 {
  question_id: 3,
  content: "5-10",
  weight: 2
 },
 {
  question_id: 3,
  content: "11+",
  weight: 1
 },
 {
  question_id: 4,
  content: "none",
  weight: 5
 },
 {
  question_id: 4,
  content: "1-4",
  weight: 3
 },
 {
  question_id: 4,
  content: "5-10",
  weight: 2
 },
 {
  question_id: 4,
  content: "11+",
  weight: 1
 },
  {
  question_id: 5,
  content: "1",
  weight: 5
 },
  {
  question_id: 5,
  content: "2",
  weight: 3
 },
  {
  question_id: 5,
  content: "3",
  weight: 2
 },
  {
  question_id: 5,
  content: "4+",
  weight: 1
 },
  {
  question_id: 6,
  content: "1",
  weight: 5
 },
  {
  question_id: 6,
  content: "2",
  weight: 3
 },
  {
  question_id: 6,
  content: "3",
  weight: 2
 },
  {
  question_id: 6,
  content: "4+",
  weight: 1
 },
  {
  question_id: 7,
  content: "I don't know",
  weight: 0
 },
  {
  question_id: 7,
  content: "No",
  weight: 2
 },
  {
  question_id: 7,
  content: "Yes, but that tariff is less than 100% renewables",
  weight: 3
 },
  {
  question_id: 7,
  content: "Yes, 100%",
  weight: 5
 },
  {
  question_id: 8,
  content: "Below 14 C",
  weight: 5
 },
  {
  question_id: 8,
  content: "14-17 C",
  weight: 4
 },
  {
  question_id: 8,
  content: "18-21 C",
  weight: 3
 },
  {
  question_id: 8,
  content: "Over 21 C",
  weight: 2
 },
  {
  question_id: 9,
  content: "Meat in every meal",
  weight: 0
 },
  {
  question_id: 9,
  content: "Meat in some meals",
  weight: 2
 },
  {
  question_id: 9,
  content: "Meat very rarely",
  weight: 3
 },
  {
  question_id: 9,
  content: "No meat",
  weight: 5
 },
 {
  question_id: 10,
  content: "£0",
  weight: 5
 },
  {
  question_id: 10,
  content: "£1-£10",
  weight: 3
 },
  {
  question_id: 10,
  content: "£10-£50",
  weight: 2
 },
  {
  question_id: 10,
  content: "More than £50",
  weight: 0
 },
  {
  question_id: 11,
  content: "None",
  weight: 5
 },
  {
  question_id: 11,
  content: "0%-10%",
  weight: 3
 },
  {
  question_id: 11,
  content: "10%-30%",
  weight: 2
 },
  {
  question_id: 11,
  content: "More than 30%",
  weight: 0
 },
  {
  question_id: 12,
  content: "A lot of the food I buy is locally sourced",
  weight: 5
 },
  {
  question_id: 12,
  content: "Some of the food I buy is locally sourced",
  weight: 3
 },
  {
  question_id: 12,
  content: "I don't worry about where my food comes from",
  weight: 0
 },
 {
  question_id: 13,
  content: "Nothing",
  weight: 0
 },
 {
  question_id: 13,
  content: "under £20",
  weight: 3
 },
 {
  question_id: 13,
  content: "£20-£50",
  weight: 4
 },
 {
  question_id: 13,
  content: "More than £50",
  weight: 5
 },
 {
  question_id: 14,
  content: "None",
  weight: 1
 },
 {
  question_id: 14,
  content: "Less than 5 hours",
  weight: 3
 },
 {
  question_id: 14,
  content: "5 to 10 hours",
  weight: 4
 },
 {
  question_id: 14,
  content: "More than 10 hours",
  weight: 5
 }
]

Option.create!(option_attributes)

puts "Creating answers..."
answer_attributes = [
{
   user_id: 1,
   option_id: 2,
   category_id: 1,
   date: Date.today - 1
 },
 {
  user_id: 1,
  option_id: 5,
  category_id: 1,
  date: Date.today - 1
 },
 {
   user_id: 1,
   option_id: 9,
   category_id: 1,
   date: Date.today - 1
 },
 {
   user_id: 1,
   option_id: 14,
   category_id: 1,
   date: Date.today - 1
 },
 {
  user_id: 1,
  option_id: 17,
  category_id: 2,
  date: Date.today - 1
 },
  {
   user_id: 1,
   option_id: 23,
   category_id: 2,
   date: Date.today - 1
 },
  {
  user_id: 1,
  option_id: 25,
  category_id: 2,
  date: Date.today - 1
 },
  {
  user_id: 1,
  option_id: 31,
  category_id: 2,
  date: Date.today - 1
 },
 {
   user_id: 1,
   option_id: 35,
   category_id: 3,
   date: Date.today - 1
 },
  {
   user_id: 1,
   option_id: 39,
   category_id: 3,
   date: Date.today - 1
 },
  {
   user_id: 1,
   option_id: 43,
   category_id: 3,
   date: Date.today - 1
 },
  {
   user_id: 1,
   option_id: 46,
   category_id: 3,
   date: Date.today - 1
 },
  {
   user_id: 1,
   option_id: 47,
   category_id: 4,
   date: Date.today - 1
 },
  {
   user_id: 1,
   option_id: 50,
   category_id: 4,
   date: Date.today - 1
 }
]
Answer.create!(answer_attributes)

answer_attributes = [
{
  user_id: 1,
  option_id: 2,
  category_id: 1,
  date: Date.today - 2
 },
 {
  user_id: 1,
  option_id: 4,
  category_id: 1,
  date: Date.today - 2
 },
 {
  user_id: 1,
  option_id: 8,
  category_id: 1,
  date: Date.today - 2
 },
 {
  user_id: 1,
  option_id: 13,
  category_id: 1,
  date: Date.today - 2
 },
 {
  user_id: 1,
  option_id: 16,
  category_id: 2,
  date: Date.today - 2
 },
  {
  user_id: 1,
  option_id: 22,
  category_id: 2,
  date: Date.today - 2
 },
  {
  user_id: 1,
  option_id: 26,
  category_id: 2,
  date: Date.today - 2
 },
  {
  user_id: 1,
  option_id: 29,
  category_id: 2,
  date: Date.today - 2
 },
 {
  user_id: 1,
  option_id: 31,
  category_id: 3,
  date: Date.today - 2
 },
  {
  user_id: 1,
  option_id: 36,
  category_id: 3,
  date: Date.today - 2
 },
  {
  user_id: 1,
  option_id: 39,
  category_id: 3,
  date: Date.today - 2
 },
  {
  user_id: 1,
  option_id: 42,
  category_id: 3,
  date: Date.today - 2
 },
  {
   user_id: 1,
   option_id: 47,
   category_id: 4,
   date: Date.today - 2
 },
  {
   user_id: 1,
   option_id: 54,
   category_id: 4,
   date: Date.today - 2
 }
]
Answer.create!(answer_attributes)
answer_attributes = [
{
  user_id: 1,
  option_id: 3,
  category_id: 1,
  date: Date.today - 4
 },
 {
  user_id: 1,
  option_id: 5,
  category_id: 1,
  date: Date.today - 4
 },
 {
  user_id: 1,
  option_id: 8,
  category_id: 1,
  date: Date.today - 4
 },
 {
  user_id: 1,
  option_id: 12,
  category_id: 1,
  date: Date.today - 4
 },
 {
  user_id: 1,
  option_id: 16,
  category_id: 2,
  date: Date.today - 4
 },
  {
  user_id: 1,
  option_id: 20,
  category_id: 2,
  date: Date.today - 4
 },
  {
  user_id: 1,
  option_id: 25,
  category_id: 2,
  date: Date.today - 4
 },
  {
  user_id: 1,
  option_id: 26,
  category_id: 2,
  date: Date.today - 4
 },
 {
  user_id: 1,
  option_id: 31,
  category_id: 3,
  date: Date.today - 4
 },
  {
  user_id: 1,
  option_id: 4,
  category_id: 3,
  date: Date.today - 4
 },
  {
  user_id: 1,
  option_id: 39,
  category_id: 3,
  date: Date.today - 4
 },
  {
  user_id: 1,
  option_id: 42,
  category_id: 3,
  date: Date.today - 4
 },
  {
   user_id: 1,
   option_id: 49,
   category_id: 4,
   date: Date.today - 4
 },
  {
   user_id: 1,
   option_id: 53,
   category_id: 4,
   date: Date.today - 4
 }
]
Answer.create!(answer_attributes)

answer_attributes = [
{
  user_id: 1,
  option_id: 1,
  category_id: 1,
  date: Date.today - 6
 },
 {
  user_id: 1,
  option_id: 6,
  category_id: 1,
  date: Date.today - 6
 },
 {
  user_id: 1,
  option_id: 10,
  category_id: 1,
  date: Date.today - 6
 },
 {
  user_id: 1,
  option_id: 15,
  category_id: 1,
  date: Date.today - 6
 },
 {
  user_id: 1,
  option_id: 16,
  category_id: 2,
  date: Date.today - 6
 },
  {
  user_id: 1,
  option_id: 22,
  category_id: 2,
  date: Date.today - 6
 },
  {
  user_id: 1,
  option_id: 27,
  category_id: 2,
  date: Date.today - 6
 },
  {
  user_id: 1,
  option_id: 28,
  category_id: 2,
  date: Date.today - 6
 },
 {
  user_id: 1,
  option_id: 33,
  category_id: 3,
  date: Date.today - 6
 },
  {
  user_id: 1,
  option_id: 39,
  category_id: 3,
  date: Date.today - 6
 },
  {
  user_id: 1,
  option_id: 41,
  category_id: 3,
  date: Date.today - 6
 },
  {
  user_id: 1,
  option_id: 44,
  category_id: 3,
  date: Date.today - 6
 },
  {
   user_id: 1,
   option_id: 50,
   category_id: 4,
   date: Date.today - 6
 },
  {
   user_id: 1,
   option_id: 51,
   category_id: 4,
   date: Date.today - 6
 }
]
Answer.create!(answer_attributes)

answer_attributes = [
{
  user_id: 1,
  option_id: 4,
  category_id: 1,
  date: Date.today - 8
 },
 {
  user_id: 1,
  option_id: 6,
  category_id: 1,
  date: Date.today - 8
 },
 {
  user_id: 1,
  option_id: 8,
  category_id: 1,
  date: Date.today - 8
 },
 {
  user_id: 1,
  option_id: 12,
  category_id: 1,
  date: Date.today - 8
 },
 {
  user_id: 1,
  option_id: 17,
  category_id: 2,
  date: Date.today - 8
 },
  {
  user_id: 1,
  option_id: 20,
  category_id: 2,
  date: Date.today - 8
 },
  {
  user_id: 1,
  option_id: 27,
  category_id: 2,
  date: Date.today - 8
 },
  {
  user_id: 1,
  option_id: 30,
  category_id: 2,
  date: Date.today - 8
 },
 {
  user_id: 1,
  option_id: 35,
  category_id: 3,
  date: Date.today - 8
 },
  {
  user_id: 1,
  option_id: 38,
  category_id: 3,
  date: Date.today - 8
 },
  {
  user_id: 1,
  option_id: 43,
  category_id: 3,
  date: Date.today - 8
 },
  {
  user_id: 1,
  option_id: 45,
  category_id: 3,
  date: Date.today - 8
 },
  {
   user_id: 1,
   option_id: 50,
   category_id: 4,
   date: Date.today - 8
 },
  {
   user_id: 1,
   option_id: 52,
   category_id: 4,
   date: Date.today - 8
 }
]
Answer.create!(answer_attributes)

puts "Creating scores..."
score_attributes = [
 {
  user_id: 1,
  category_id: 1,
  date: Date.today - 8,
  value: User.find(1).answers.where(date: Date.today - 8).map { |a| a.option.weight }.sum,
  travel_value: User.find(1).answers.where(date: Date.today - 8).where(category_id: 1).map { |a| a.option.weight }.sum,
  home_value: User.find(1).answers.where(date: Date.today - 8).where(category_id: 2).map { |a| a.option.weight }.sum,
  consumption_value: User.find(1).answers.where(date: Date.today - 8).where(category_id: 3).map { |a| a.option.weight }.sum,
  society_value: User.find(1).answers.where(date: Date.today - 8).where(category_id: 4).map { |a| a.option.weight }.sum
 },
 {
  user_id: 1,
  category_id: 1,
  date: Date.today - 6,
  value: User.find(1).answers.where(date: Date.today - 6).map { |a| a.option.weight }.sum,
  travel_value: User.find(1).answers.where(date: Date.today - 6).where(category_id: 1).map { |a| a.option.weight }.sum,
  home_value: User.find(1).answers.where(date: Date.today - 6).where(category_id: 2).map { |a| a.option.weight }.sum,
  consumption_value: User.find(1).answers.where(date: Date.today - 6).where(category_id: 3).map { |a| a.option.weight }.sum,
  society_value: User.find(1).answers.where(date: Date.today - 6).where(category_id: 4).map { |a| a.option.weight }.sum
 },
 {
  user_id: 1,
  category_id: 1,
  date: Date.today - 4,
  value: User.find(1).answers.where(date: Date.today - 4).map { |a| a.option.weight }.sum,
  travel_value: User.find(1).answers.where(date: Date.today - 4).where(category_id: 1).map { |a| a.option.weight }.sum,
  home_value: User.find(1).answers.where(date: Date.today - 4).where(category_id: 2).map { |a| a.option.weight }.sum,
  consumption_value: User.find(1).answers.where(date: Date.today - 4).where(category_id: 3).map { |a| a.option.weight }.sum,
  society_value: User.find(1).answers.where(date: Date.today - 4).where(category_id: 4).map { |a| a.option.weight }.sum
 },
 {
  user_id: 1,
  category_id: 1,
  date: Date.today - 2,
  value: User.find(1).answers.where(date: Date.today - 2).map { |a| a.option.weight }.sum,
  travel_value: User.find(1).answers.where(date: Date.today - 2).where(category_id: 1).map { |a| a.option.weight }.sum,
  home_value: User.find(1).answers.where(date: Date.today - 2).where(category_id: 2).map { |a| a.option.weight }.sum,
  consumption_value: User.find(1).answers.where(date: Date.today - 2).where(category_id: 3).map { |a| a.option.weight }.sum,
  society_value: User.find(1).answers.where(date: Date.today - 2).where(category_id: 4).map { |a| a.option.weight }.sum
 },
 {
  user_id: 1,
  category_id: 1,
  date: Date.today - 1,
  value: User.find(1).answers.where(date: Date.today - 1).map { |a| a.option.weight }.sum,
  travel_value: User.find(1).answers.where(date: Date.today - 1).where(category_id: 1).map { |a| a.option.weight }.sum,
  home_value: User.find(1).answers.where(date: Date.today - 1).where(category_id: 2).map { |a| a.option.weight }.sum,
  consumption_value: User.find(1).answers.where(date: Date.today - 1).where(category_id: 3).map { |a| a.option.weight }.sum,
  society_value: User.find(1).answers.where(date: Date.today - 1).where(category_id: 4).map { |a| a.option.weight }.sum
 }
]
Score.create!(score_attributes)

puts "Finished!"

