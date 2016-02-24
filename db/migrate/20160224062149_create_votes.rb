class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.string :voter_id
      t.string :candidate_id

      t.timestamps null: false
    end
  end
end
