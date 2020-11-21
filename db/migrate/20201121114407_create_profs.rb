class CreateProfs < ActiveRecord::Migration[6.0]
  def change
    create_table :profs do |t|
      t.string :name
      t.string :type
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
