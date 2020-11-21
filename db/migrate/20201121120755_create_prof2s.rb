class CreateProf2s < ActiveRecord::Migration[6.0]
  def change
    create_table :prof2s do |t|
      t.string :name
      t.string :atype
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
