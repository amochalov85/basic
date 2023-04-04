class Version1 < ActiveRecord::Migration[7.0]
    def change
    
      create_table 'users' do |t|
      t.string :email, null: false
      t.string :encrypted_password, null: false
      t.timestamps
      end
    
      create_table 'posts' do |t|
      t.text :content, null: false 
      t.boolean :archived, default: false 
      t.integer :likes_count, default: 0
      t.integer :dislikes_count, default: 0
      t.datetime :banned_at
      t.timestamps
      end
    end
end
