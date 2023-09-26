class CreateUserData < ActiveRecord::Migration[7.0]
  def change
    create_table :user_data do |t|
      t.string :name
      t.string :age
      t.string :user_type

      #t.references :user_types, null: false, foreign_key: true

      t.timestamps
    end
  end
end
