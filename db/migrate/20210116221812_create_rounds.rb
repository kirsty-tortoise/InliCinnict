class CreateRounds < ActiveRecord::Migration[6.1]
  def change
    create_table :rounds do |t|
      t.string :type
      t.references :quiz, null: false, foreign_key: true
      t.integer :round_number

      t.timestamps
    end
  end
end
