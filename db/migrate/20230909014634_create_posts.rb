class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.text :postname
      t.text :picturename
      t.string :picture

      t.timestamps
    end
  end
end
