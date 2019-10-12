class CreateReciepts < ActiveRecord::Migration[5.2]
  def change
    create_table :reciepts do |t|
      t.string :name
      t.text :address
      t.decimal :contact
      t.date :date
      t.string :reciept_type
      t.string :payment_mode
      t.string :reciever
      t.decimal :amount

      t.timestamps
    end
  end
end
