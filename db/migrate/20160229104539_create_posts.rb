class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.belongs_to :users, index:true
      t.date :date
      t.string :title
      t.text :description
      t.string :name
      t.string :firstname
      t.string :gender
 
      t.timestamps null: false
    end
  def self.up
    change_table :posts do |t|
      t.has_attached_file :image
    end
  end

  def self.down
    drop_attached_file :posts, :image
  end
  
  end
end
