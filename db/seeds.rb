
10.times do
  character = Faker::GameOfThrones.character
  house = Faker::GameOfThrones.house
  city = Faker::GameOfThrones.city

  Game.create(
  character: character,
  house: house,
  city: city
  )
end
