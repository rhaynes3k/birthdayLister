class CreatePersonBdays < ActiveRecord::Migration[6.0]
  def change
    create_table :person_bdays do |t|
      t.string :name
      t.string :date_of_birth
      t.string :relation
      t.boolean :sharable

      t.timestamps
    end
  end
end
