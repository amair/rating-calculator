class CreateBoats < ActiveRecord::Migration
  def change
    create_table :boats do |t|
      t.string :name
      t.string :sail_no
      t.string :cert_no
      t.date :issue_date
      t.string :cert_year
      t.float :tcc
      t.boolean :endorsed
      t.boolean :dayboat
      t.boolean :short_handed
      t.float :non_spin
      t.decimal :crew, :precision => 3, :scale => 0
      t.float :dlr
      t.decimal :lh, :precision => 5, :scale => 2
      t.decimal :draft, :precision => 5, :scale => 2
      t.string :headsails
      t.string :series_date
      t.string :age_date
      t.decimal :racing_area, :precision => 3, :scale => 0

      t.timestamps
    end
  end
end
