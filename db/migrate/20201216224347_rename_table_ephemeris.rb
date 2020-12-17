class RenameTableEphemeris < ActiveRecord::Migration[6.0]
  def up
    rename_table :ephemeris, :ephemeries
  end

  def down
    rename_table :ephemeries, :ephemeris
  end
end
