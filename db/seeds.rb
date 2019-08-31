# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Cleaning users...'
User.destroy_all

puts 'Creating dreamers...'

user = User.new(email: 'sam@dreamrunner.com',
    password: '123456',
  )
user.remote_photo_url = 'https://res.cloudinary.com/thaicharoens/image/upload/v1566038309/ever0nlb6berck508iw1.jpg'
user.save!

user = User.new(email: 'egor@dreamrunner.com',
    password: '123456',
  )
user.remote_photo_url = 'https://res.cloudinary.com/thaicharoens/image/upload/v1566039182/xu1udtfnjqdpceogiyfj.jpg'
user.save!

user = User.new(email: 'sunny@dreamrunner.com',
    password: '123456',
  )
user.remote_photo_url = 'https://res.cloudinary.com/thaicharoens/image/upload/v1565894997/dxhmecdkkmsxytapykf2.jpg'
user.save!

user = User.new(email: 'david@dreamrunner.com',
    password: '123456',
  )
user.remote_photo_url = 'https://res.cloudinary.com/thaicharoens/image/upload/v1566038679/uskypjdm1wq9jw9iv4ec.jpg'
user.save!

puts 'Users created!'

puts 'Cleaning dreams...'
Dream.destroy_all

puts 'Creating dreams...'

dream = Dream.new(name: 'Life as a Rails Console',
  category: 'Indulgent Ego-Death',
  price:  '125',
  description: "The dreaded human condition... Don't get us started. Don't despair - there is a solution (albeit, rather temporary). Turn into a rails console just for one night and experience the thrill of losing yor humanity. Escapism at its finest" ,
  user_id: 2,
)
dream.remote_photo_url = 'https://res.cloudinary.com/thaicharoens/image/upload/v1565291466/euzplpxyyawpikmosjcc.jpg'
dream.save!

dream = Dream.new(name: 'The Charge of the Light Brigade',
  category: 'Transcendental Death',
  price:  '345',
  description: 'The Balance of Powers has to be maintained", declares Queen Victoria. You are the man she is looking for. Lead a historic, yet completely unnecessary cavalry charge into a glorious death.',
  user_id: 1,
)
dream.remote_photo_url = 'https://res.cloudinary.com/thaicharoens/image/upload/v1565293293/z18uenshq7ctq82mg2lm.jpg'
dream.save!

dream = Dream.new(name: 'Psyche and the Winds of Zephyros',
  category: 'Erotic Reverie',
  price:  '250',
  description: "The life of a maiden was never meant for you. Luckily, Eros fell under the spell of his own arrow and now wishes to see you in his castle on the cloud. You'll be swept away by Zephyros, the Western Wind and be taken to a palace of sensual pleasure.",
  user_id: 2,
)
dream.remote_photo_url = 'https://res.cloudinary.com/thaicharoens/image/upload/v1565291960/stecsfcqsr3s67o8wvcm.jpg'
dream.save!

dream = Dream.new(name: 'The Oedipus Complex',
  category: 'Freudian delight',
  price:  '170',
  description: 'Liberation can sometime take strangely disgusting forms.',
  user_id: 2,
)
dream.remote_photo_url = 'https://res.cloudinary.com/thaicharoens/image/upload/v1565292953/iz46b0v2qeumoqo0vlu3.jpg'
dream.save!

dream = Dream.new(name: 'Get adopted by Mick Jagger',
  category: 'Nostalgia',
  price:  '70',
  description: 'And stop giving a shit about ordinary things',
  user_id: 1,
)
dream.remote_photo_url = 'https://res.cloudinary.com/thaicharoens/image/upload/v1565291825/txemauwpk1okiwtkaxxx.jpg'
dream.save!

dream = Dream.new(name: 'Quirky Ways of a Chinese Merchant of the 11th Century',
  category: 'Adventure',
  price:  '50',
  description: 'Lay the ideological foundations for the global banking system',
  user_id: 2,
)
dream.remote_photo_url = 'https://res.cloudinary.com/thaicharoens/image/upload/v1565291466/euzplpxyyawpikmosjcc.jpg'
dream.save!

dream = Dream.new(name: 'Speaking in Tongues - the Holy Salvation',
  category: 'Religious Experience',
  price:  '500',
  description: 'Live through the ecstatic days of early Christian fanaticism',
  user_id: 1,
)
dream.remote_photo_url = 'https://res.cloudinary.com/thaicharoens/image/upload/v1565293293/z18uenshq7ctq82mg2lm.jpg'
dream.save!

puts 'Finished dreams!'

puts 'Cleaning dreams...'
Review.destroy_all

puts 'Creating reviews...'
reviews_attributes = [
  {
    content: 'Pure perfection. Exactly as described.',
    accuracy: '10',
    value: '10',
    design: '10',
    dream_id: '1',
    user_id: '1'
  },
  {
    content: 'Ruby, ruby, ruby!!! What a dream!',
    accuracy: '10',
    value: '10',
    design: '10',
    dream_id: '1',
    user_id: '2'
  },
  {
    content: 'The stuff of dreams, this was so wild.',
    accuracy: '10',
    value: '10',
    design: '10',
    dream_id: '1',
    user_id: '3'
  },
  {
    content: 'This reminded me of my time at Le Wagon, a real blast from the past. Oh what a life it would be to stay as a rails console.',
    accuracy: '10',
    value: '10',
    design: '10',
    dream_id: '1',
    user_id: '4'
  },
  {
    content: 'Dreamy stuff... the charge to vicotry for Queen and country.',
    accuracy: '9',
    value: '9',
    design: '9',
    dream_id: '2',
    user_id: '1'
  },
  {
    content: 'I am a knight, I was born to fight.',
    accuracy: '9',
    value: '9',
    design: '9',
    dream_id: '2',
    user_id: '2'
  },
  {
    content: 'For there is no better way to die.',
    accuracy: '9',
    value: '9',
    design: '9',
    dream_id: '2',
    user_id: '3'
  },
  {
    content: 'What a ride!',
    accuracy: '9',
    value: '9',
    design: '9',
    dream_id: '2',
    user_id: '4'
  },
  {
    content: 'I was truly swept away...',
    accuracy: '8',
    value: '8',
    design: '8',
    dream_id: '3',
    user_id: '1'
  },
  {
    content: 'Pure unadulterated sensuality, what a journey.',
    accuracy: '8',
    value: '8',
    design: '8',
    dream_id: '3',
    user_id: '2'
  },
  {
    content: 'I never thought I could get this exited!',
    accuracy: '8',
    value: '8',
    design: '8',
    dream_id: '4',
    user_id: '2'
  },
  {
    content: 'Not for the faint of heart oh ho ho, not at all...',
    accuracy: '8',
    value: '8',
    design: '8',
    dream_id: '5',
    user_id: '3'
  },
  {
    content: 'It made me see god',
    accuracy: '8',
    value: '8',
    design: '8',
    dream_id: '6',
    user_id: '2'
  },
  {
    content: 'I feel like I now have unfinished business',
    accuracy: '8',
    value: '8',
    design: '8',
    dream_id: '7',
    user_id: '4'
  }
]

Review.create!(reviews_attributes)
puts 'Finished reviews!'
