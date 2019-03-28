class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :phone_number
      t.string :postal_code
      t.string :street_address
      t.string :region
      t.string :country
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
