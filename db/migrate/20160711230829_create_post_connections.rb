class CreatePostConnections < ActiveRecord::Migration
  def change
    create_table :post_connections do |t|

    	t.integer :person_following_id, :null => false
    	t.integer :person_followed_id, :null => false

     	t.timestamps null: false
    end
  end
end
