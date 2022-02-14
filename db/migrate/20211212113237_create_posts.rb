class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :model
      t.string :mfg
      t.string :price
      t.string :km
      t.text :desc
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
