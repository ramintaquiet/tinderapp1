class CreateNologs < ActiveRecord::Migration[6.0]
  def change
    create_table :nologs do |t|
      t.string :model
      t.references :prof2, foreign_key: true

      t.timestamps
    end
  end
end
