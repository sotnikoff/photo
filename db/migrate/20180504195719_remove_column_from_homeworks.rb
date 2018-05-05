class RemoveColumnFromHomeworks < ActiveRecord::Migration[5.2]
  def change
    remove_column :homeworks, :image, :string
  end
end
