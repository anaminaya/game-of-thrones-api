class Game < ActiveRecord::Base
  validates :character, :city, :house, presence: true 
end
