class CreateCandidatesAndStandpoints < ActiveRecord::Migration
  def change
    create_table :candidates do |t|
      t.string :name
      t.text :overview
      t.string :pic_url
      t.integer :election_id
      t.timestamps
    end
 
    create_table :standpoints do |t|
      t.string :name
      t.text :description
      t.timestamps
    end
 
    create_table :candidates_standpoints, id: false do |t|
      t.belongs_to :candidate
      t.belongs_to :standpoint
    end
  end
end
