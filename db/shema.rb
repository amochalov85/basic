# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
ActiveRecord::Schema[7.0].define(version: 2023_03_22_01) do
  
    create_table :posts do |t|
        t.references :user, foreign_key: true, null: false
        t.text :content, null: false 
        t.boolean :archived, default: false 
        t.integer :likes_count, default: 0
        t.integer :dislikes_count, default: 0
        t.datetime :banned_at
        t.timestamps
      end
  
    create_table :users do |t|
        t.string :name, null: false
        t.string :email, null: false
        t.string :encrypted_password, null: false
        t.timestamps
      end
  
      add_index :users, :email, unique: true
    end
  
    add_foreign_key "posts", "users"
  end
