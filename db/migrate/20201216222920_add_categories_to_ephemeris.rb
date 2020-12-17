class AddCategoriesToEphemeris < ActiveRecord::Migration[6.0]
  def up
    add_reference :ephemeris, :category, null: false, foreign_key: true
  end

  def down
    remove_reference :ephemeris, :category
  end
end
