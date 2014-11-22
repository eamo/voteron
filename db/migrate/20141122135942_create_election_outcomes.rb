class CreateElectionOutcomes < ActiveRecord::Migration
  def change
    create_table :election_outcomes do |t|
      t.integer :election_id
      t.integer :candidate_id
      t.boolean :outcome

      t.timestamps
    end
  end
end
