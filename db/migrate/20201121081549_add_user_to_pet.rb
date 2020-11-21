class AddUserToPet < ActiveRecord::Migration[6.0]
  def change
    add_reference :pets, :User, foreign_key: true
  end
end
