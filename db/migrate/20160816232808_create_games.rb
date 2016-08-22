class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :character
      t.string :house
      t.string :city


      t.timestamps null: false
    end
  end
end
