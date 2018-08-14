class CreateVisits < ActiveRecord::Migration[5.2]
  def change
    create_table :visits do |t|
      t.date :visitdate
      t.date :visitnextdate
      t.string :visitissue
      t.string :visitresolution
      t.string :visitimage
      t.string :visitdoctor
      t.string :visitprescription
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end
