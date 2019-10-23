class CreateDateOfInfections < ActiveRecord::Migration[6.0]
  def change
    create_table :date_of_infections do |t|
      t.date :date
      t.references :animal, null: false, foreign_key: true

      t.timestamps
    end
  end
end
