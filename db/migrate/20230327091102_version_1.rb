  class Version1 < ActiveRecord::Migration[7.0]
    def change
    
      create_table "users" do |t|
        t.string "name"
        t.string "email"
        t.string "password"
      end
      create_table "posts" do |t|
        t.text "text"
        t.boolean "is_banned", default: false
        t.boolean "is_archived", default: false
        t.string "likes", array: true
        t.string "dislikes", array: true
      end
  
      add_reference :posts, :user, foreign_key: true
    end
end
