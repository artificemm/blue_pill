class CreateAgents < ActiveRecord::Migration[6.0]
  def change
    create_table :agents do |t|
      t.string :uuid
      t.string :a_model
      t.string :a_make
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
