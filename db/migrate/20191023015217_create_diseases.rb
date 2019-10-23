class CreateDiseases < ActiveRecord::Migration[6.0]
  def change
    create_table :diseases do |t|
      t.string :name
      t.references :date_of_infection, null: false, foreign_key: true

      t.timestamps
    end
  end
end
