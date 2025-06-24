class CreateRelationships < ActiveRecord::Migration[8.0]
  def change
    create_table :relationships do |t|
      t.integer :follower_id, index:true
      t.integer :followed_id, index:true

      t.timestamps
    end
    add_index :relationships, [:followed_id, :follower_id], unique: true
  end
end
