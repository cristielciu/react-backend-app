class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :token
      t.string :email
      t.string :name

      t.timestamps
    end
  end
end
