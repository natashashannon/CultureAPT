class CreateVenues < ActiveRecord::Migration
  def change
    create_table :venues do |t|
      t.string :name
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :url
      t.string :phone
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
