class CreateOwnerships < ActiveRecord::Migration[6.0]
  def change
    create_table :ownerships do |t|
      t.belongs_to :user, null: false, foreign_key: true, index: { unique: true }
      t.belongs_to :beacon, null: false, foreign_key: true, index: { unique: true }

      t.timestamps
    end
  end
end
