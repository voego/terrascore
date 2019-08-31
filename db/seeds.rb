# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'Cleaning database...'
Category.destroy_all
Question.destroy_all
Answer.destroy_all



puts 'Creating categories...'
category_attributes = [
  {
    name: 'Travel',
    total: 0
  },
  {
    name: 'Home',
    total: 0
  },
  {
    name: 'Charity',
    total: 0
  }
]

Category.create!(category_attributes)



puts 'Creating questions...'
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
  }
]

Question.create!(question_attributes)



puts 'Creating options...'

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
]

Option.create!(option_attributes)

puts 'Finished!'







