class CreateJoinTableSpecialtyDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :join_table_specialty_doctors do |t|
      t.references :specialty, null: false, foreign_key: true
      t.references :doctor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
