class AddEphemeris < ActiveRecord::Migration[6.0]
  def change
    create_table :ephemeris do |t|
      t.datetime :ephemer_date
      t.string :text
      t.string :image

      t.timestamps
    end
  end
end
