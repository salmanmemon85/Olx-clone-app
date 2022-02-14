class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.string :message  
      t.references :sender, references: :users, foreign_key: {to_table: :users}
      t.references :receiver, references: :users, foreign_key: {to_table: :users}
      t.references :post, null: false, foreign_key: true
      t.timestamps
    end
  end
end
