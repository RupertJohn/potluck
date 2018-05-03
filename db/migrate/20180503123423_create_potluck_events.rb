class CreatePotluckEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :potluck_events do |t|
      t.string :name
      t.string :location
      t.string :location_nickname
      t.datetime :date

      t.timestamps
    end
  end
end
