class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :second_name
      t.string :patronymic
      t.date :birthday
      t.string :email

      t.timestamps
    end
  end
end
