class CreateFavos < ActiveRecord::Migration[6.0]
  def change
    create_table :favos do |t|
      t.references :pet, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
