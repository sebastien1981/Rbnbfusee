class AddUserRefToFusees < ActiveRecord::Migration[7.0]
  def change
    add_reference :fusees, :user, null: false, foreign_key: true
  end
end
