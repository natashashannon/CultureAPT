class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :org_id
      t.integer :venue_id
      t.string :name
      t.date :start_date
      t.date :end_date
      t.string :start_time
      t.string :end_time
      t.text :description
      t.string :url
      t.text :spec_instruction
      t.text :ticket_rsvp_instruction
      t.float :price_low
      t.float :price_high
      t.text :restriction
      t.string :category
      t.string :subcategory

      t.timestamps
    end
  end
end
