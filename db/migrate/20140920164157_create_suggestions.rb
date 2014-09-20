class CreateSuggestions < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
      t.string :org_name
      t.integer :org_id
      t.integer :venue_id
      t.string :event_name
      t.date :start_date
      t.date :end_date
      t.string :start_time
      t.string :end_time
      t.text :description
      t.string :event_url
      t.text :spec_instruction
      t.text :ticket_rsvp_instruction
      t.float :price_low
      t.float :price_high
      t.text :restriction
      t.string :category
      t.string :subcategory
      t.string :venue_name
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :venue_url
      t.string :phone
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
