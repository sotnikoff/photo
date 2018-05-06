class AddStatusToHomeworks < ActiveRecord::Migration[5.2]
  def change
    add_column :homeworks, :status, :string
  end
end
