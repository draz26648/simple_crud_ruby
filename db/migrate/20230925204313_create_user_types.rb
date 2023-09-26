class CreateUserTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :user_types do |t|
      
      t.string :user_type
      t.string :rules

      t.references :user_data, null: false, foreign_key: true
      t.timestamps
    end
  end
end
