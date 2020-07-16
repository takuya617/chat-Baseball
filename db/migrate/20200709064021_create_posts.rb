class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.text :player
      t.text :team
      t.text :Recommended_player
      t.text :image
      t.string :name
      t.timestamps
    end
  end
end

