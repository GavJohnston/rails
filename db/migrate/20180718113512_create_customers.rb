class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :customerfirst_name
      t.string :customerlast_name
      t.string :customeremail
      t.text :customeraddress
      t.string :customernumber
      t.date :customerdob

      t.timestamps
    end
  end
end
