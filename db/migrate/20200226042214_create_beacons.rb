class CreateBeacons < ActiveRecord::Migration[6.0]
  def change
    create_table :beacons do |t|
      t.string :uuid
      t.integer :major
      t.integer :minor
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
