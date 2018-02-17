class CreateArtists < ActiveRecord::Migration[5.1]
  def change
    create_table :artists do |t|
      t.string :username
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
