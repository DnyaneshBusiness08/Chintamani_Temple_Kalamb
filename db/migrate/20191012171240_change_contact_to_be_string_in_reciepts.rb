class ChangeContactToBeStringInReciepts < ActiveRecord::Migration[5.2]
  def change
  	change_column :reciepts, :contact, :string
  end
end
