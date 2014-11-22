class CreateElections < ActiveRecord::Migration
  def change
    create_table :elections do |t|
      t.string :name
      t.string :district
      t.text :overview
      t.date :vote_date
      t.integer :positions

      t.timestamps
    end
  end
end
