class CreateSightings < ActiveRecord::Migration[5.2]
  def change
    create_table :sightings do |t|
      t.column(:longitude, :float)
      t.column(:latitude, :float)
      t.column(:date, :date)
      t.column(:animal_id, :integer)

      t.timestamps
    end
  end
end
