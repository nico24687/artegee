class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :user_name
      t.string :password_digest
      t.string :bio
      t.string :profile_picture
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :location

      t.timestamps
    end
  end
end
