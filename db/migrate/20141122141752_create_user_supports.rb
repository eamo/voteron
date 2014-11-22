class CreateUserSupports < ActiveRecord::Migration
  def change
    create_table :user_supports do |t|
      t.integer :user_id
      t.integer :candidate_id
      t.boolean :supported

      t.timestamps
    end
  end
end
