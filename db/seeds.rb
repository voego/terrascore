require 'pry'
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

puts 'Creating greenseers...'

user = User.new(email: 'sam@terrascore.com',
    password: '123456',
  )
user.remote_photo_url = 'https://res.cloudinary.com/dogyrtlff/image/upload/v1567256749/ever0nlb6berck508iw1_oamwfs.jpg'
user.save!

user = User.new(email: 'egor@terrascore.com',
    password: '123456',
  )
user.remote_photo_url = 'https://res.cloudinary.com/dogyrtlff/image/upload/v1567256761/xu1udtfnjqdpceogiyfj_uc5viq.jpg'
user.save!

user = User.new(email: 'sunny@terrascore.com',
    password: '123456',
  )
user.remote_photo_url = 'https://res.cloudinary.com/dogyrtlff/image/upload/v1567256769/dxhmecdkkmsxytapykf2_fjgeiz.jpg'
user.save!

user = User.new(email: 'david@terrascore.com',
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
   content: "0%%-10%%",
   weight: 3
 },
  {
   question_id: 11,
   content: "10%%-30%%",
   weight: 2
 },
  {
   question_id: 11,
   content: "More than 30%%",
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
  weight: 0
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
   option_id: 1,
   category_id: 1,
   date: Date.today
 },
 {
   user_id: 1,
   option_id: 5,
   category_id: 1,
   date: Date.today
 },
 {
   user_id: 1,
   option_id: 9,
   category_id: 1,
   date: Date.today
 },
 {
   user_id: 1,
   option_id: 14,
   category_id: 1,
   date: Date.today
 },
 {
   user_id: 1,
   option_id: 17,
   category_id: 2,
   date: Date.today
 },
  {
   user_id: 1,
   option_id: 23,
   category_id: 2,
   date: Date.today
 },
  {
   user_id: 1,
   option_id: 27,
   category_id: 2,
   date: Date.today
 },
  {
   user_id: 1,
   option_id: 30,
   category_id: 2,
   date: Date.today
 },
  {
   user_id: 1,
   option_id: 32,
   category_id: 2,
   date: Date.today
 },
  {
   user_id: 1,
   option_id: 35,
   category_id: 2,
   date: Date.today
 },
  {
   user_id: 1,
   option_id: 38,
   category_id: 2,
   date: Date.today
 },
  {
   user_id: 1,
   option_id: 41,
   category_id: 2,
   date: Date.today
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
 }
]
Answer.create!(answer_attributes)

puts "Creating scores..."
score_attributes = [
  {
   user_id: 1,
   category_id: 1,
   date: Date.today,
   value: User.find(1).answers.where(date: Date.today).map { |a| a.option.weight }.sum,
   travel_value: User.find(1).answers.where(date: Date.today).where(category_id: 1).map { |a| a.option.weight }.sum,
   home_value: User.find(1).answers.where(date: Date.today).where(category_id: 2).map { |a| a.option.weight }.sum,
   consumption_value: User.find(1).answers.where(date: Date.today).where(category_id: 3).map { |a| a.option.weight }.sum,
   society_value: User.find(1).answers.where(date: Date.today).where(category_id: 4).map { |a| a.option.weight }.sum
 },
 {
   user_id: 1,
   category_id: 1,
   date: Date.today - 2,
   value: User.find(1).answers.where(date: Date.today - 2).map { |a| a.option.weight }.sum,
   travel_value: User.find(1).answers.where(date: Date.today - 2).where(category_id: 1).map { |a| a.option.weight }.sum,
   home_value: User.find(1).answers.where(date: Date.today - 2).where(category_id: 2).map { |a| a.option.weight }.sum,
   consumption_value: User.find(1).answers.where(date: Date.today - 2).where(category_id: 3).map { |a| a.option.weight }.sum,
   society_value: User.find(1).answers.where(date: Date.today).where(category_id: 4).map { |a| a.option.weight }.sum
 },
 {
   user_id: 1,
   category_id: 1,
   date: Date.today - 4,
   value: User.find(1).answers.where(date: Date.today - 4).map { |a| a.option.weight }.sum,
   travel_value: User.find(1).answers.where(date: Date.today - 4).where(category_id: 1).map { |a| a.option.weight }.sum,
   home_value: User.find(1).answers.where(date: Date.today - 4).where(category_id: 2).map { |a| a.option.weight }.sum,
   consumption_value: User.find(1).answers.where(date: Date.today - 4).where(category_id: 3).map { |a| a.option.weight }.sum,
   society_value: User.find(1).answers.where(date: Date.today).where(category_id: 4).map { |a| a.option.weight }.sum
 }
]
Score.create!(score_attributes)

puts "Finished!"
