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
   total: 30
 },
 {
   name: "Home",
   total: 20
 },
 {
   name: "Consumption",
   total: 10
 }
]
Category.create!(category_attributes)

puts "Creating questions..."

question_attributes = [
 {
   category_id: 1,
   content: "How many flights have you taken in the past 3 months?"
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
   content: "How many times do you use the washing machine a week?"
 },
 {
   category_id: 2,
   content: "How many energy saving bulbs do you have in your home?"
 },
 {
   category_id: 2,
   content: "In how many seasons do you put the heating on?"
 },
 {
   category_id: 2,
   content: "How many days a week do you wash your filthy body?"
 },
  {
   category_id: 3,
   content: "In a week, how often do you get food from restaurants, canteens and takeaways?"
 },
 {
   category_id: 3,
   content: "How often do you throw food away?"
 },
 {
   category_id: 3,
   content: "How many times a week do you eat meat?"
 },
 {
   category_id: 3,
   content: "How much of your consumables do you recycle?"
 }
]

Question.create!(question_attributes)

puts "Creating options..."
option_attributes = [
 {
   question_id: 1,
   content: "1-5",
   weight: 4
 },
 {
   question_id: 1,
   content: "6-10",
   weight: 3
 },
 {
   question_id: 1,
   content: "0",
   weight: 5
 },
 {
   question_id: 1,
   content: "11+",
   weight: 2
 },
 {
   question_id: 2,
   content: "car",
   weight: 3
 },
 {
   question_id: 2,
   content: "motorbike",
   weight: 3
 },
 {
   question_id: 2,
   content: "public transport",
   weight: 5
 },
 {
   question_id: 3,
   content: "0",
   weight: 5
 },
 {
   question_id: 3,
   content: "1-4",
   weight: 4
 },
 {
   question_id: 3,
   content: "5-10",
   weight: 3
 },
 {
   question_id: 3,
   content: "11+",
   weight: 2
 },
 {
   question_id: 4,
   content: "0",
   weight: 5
 },
 {
   question_id: 4,
   content: "1-4",
   weight: 4
 },
 {
   question_id: 4,
   content: "5-10",
   weight: 3
 },
 {
   question_id: 4,
   content: "11+",
   weight: 2
 },
  {
   question_id: 5,
   content: "1",
   weight: 4
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
   content: "20%",
   weight: 4
 },
  {
   question_id: 6,
   content: "40%",
   weight: 3
 },
  {
   question_id: 6,
   content: "60%",
   weight: 2
 },
  {
   question_id: 6,
   content: "80%+",
   weight: 1
 },
  {
   question_id: 7,
   content: "1",
   weight: 2
 },
  {
   question_id: 7,
   content: "2",
   weight: 3
 },
  {
   question_id: 7,
   content: "3",
   weight: 4
 },
  {
   question_id: 7,
   content: "5",
   weight: 5
 },
  {
   question_id: 8,
   content: "1-2",
   weight: 4
 },
  {
   question_id: 8,
   content: "3-4",
   weight: 3
 },
  {
   question_id: 8,
   content: "5-6",
   weight: 2
 },
  {
   question_id: 8,
   content: "7+",
   weight: 1
 },
  {
   question_id: 9,
   content: "1-2",
   weight: 4
 },
  {
   question_id: 9,
   content: "3-4",
   weight: 3
 },
  {
   question_id: 9,
   content: "5-6",
   weight: 2
 },
  {
   question_id: 9,
   content: "7+",
   weight: 1
 },
 {
   question_id: 10,
   content: "1-2",
   weight: 4
 },
  {
   question_id: 10,
   content: "3-4",
   weight: 3
 },
  {
   question_id: 10,
   content: "5-6",
   weight: 2
 },
  {
   question_id: 10,
   content: "7+",
   weight: 1
 },
  {
   question_id: 11,
   content: "1-2",
   weight: 4
 },
  {
   question_id: 11,
   content: "3-4",
   weight: 3
 },
  {
   question_id: 11,
   content: "5-6",
   weight: 2
 },
  {
   question_id: 11,
   content: "7+",
   weight: 1
 },
  {
   question_id: 12,
   content: "I try to recycle as much as I can",
   weight: 4
 },
  {
   question_id: 12,
   content: "I recycle a lot of goods but sometimes I forget",
   weight: 3
 },
  {
   question_id: 12,
   content: "I only recycle rarely",
   weight: 2
 },
  {
   question_id: 12,
   content: "What is recycling?",
   weight: 1
 },
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
   consumption_value: User.find(1).answers.where(date: Date.today).where(category_id: 3).map { |a| a.option.weight }.sum
 },
 {
   user_id: 1,
   category_id: 1,
   date: Date.today - 2,
   value: User.find(1).answers.where(date: Date.today - 2).map { |a| a.option.weight }.sum,
   travel_value: User.find(1).answers.where(date: Date.today - 2).where(category_id: 1).map { |a| a.option.weight }.sum,
   home_value: User.find(1).answers.where(date: Date.today - 2).where(category_id: 2).map { |a| a.option.weight }.sum,
   consumption_value: User.find(1).answers.where(date: Date.today - 2).where(category_id: 3).map { |a| a.option.weight }.sum
 },
 {
   user_id: 1,
   category_id: 1,
   date: Date.today - 4,
   value: User.find(1).answers.where(date: Date.today - 4).map { |a| a.option.weight }.sum,
   travel_value: User.find(1).answers.where(date: Date.today - 4).where(category_id: 1).map { |a| a.option.weight }.sum,
   home_value: User.find(1).answers.where(date: Date.today - 4).where(category_id: 2).map { |a| a.option.weight }.sum,
   consumption_value: User.find(1).answers.where(date: Date.today - 4).where(category_id: 3).map { |a| a.option.weight }.sum
 }
]
Score.create!(score_attributes)

puts "Finished!"
