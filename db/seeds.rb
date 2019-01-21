require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



  User.create(
    username: Faker::Friends.character, password: 'hi', avatar: Faker::Fillmurray.image
  )
  User.create(
    username: Faker::Friends.character, password: 'hi', avatar: Faker::Fillmurray.image
  )
  User.create(
    username: Faker::Friends.character, password: 'hi', avatar: Faker::Fillmurray.image
  )
  User.create(
    username: Faker::Friends.character, password: 'hi', avatar: Faker::Fillmurray.image
  )


    Puzzle.create(
      imageUrl: Faker::Placeholdit.image,
      score_id: 2
    )
    Puzzle.create(
      imageUrl: Faker::Placeholdit.image,
      score_id: 3
    )
    Puzzle.create(
      imageUrl: Faker::Placeholdit.image,
      score_id: 0
    )


  Score.create(
    user_id: 1,
    puzzle_id: 1,
    game_score: 20
  )
  Score.create(
    user_id: 2,
    puzzle_id: 2,
    game_score: 10
  )
  Score.create(
    user_id: 3,
    puzzle_id: 3,
    game_score: 50
  )
  Score.create(
    user_id: 0,
    puzzle_id: 0,
    game_score: 4
  )

