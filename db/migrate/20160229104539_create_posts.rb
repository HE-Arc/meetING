class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.belongs_to :users, index:true
      t.date :date
      t.integer :id_user_owner
      t.text :description
      t.integer :id_user_target

      t.timestamps null: false
    end
  end
end
