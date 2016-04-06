class CreateTools < ActiveRecord::Migration
  def change
    create_table :tools do |t|
      t.text :name
      t.decimal :price, precision: 20, scale: 2 #scale refers to the numbers of digitals 
      t.integer :quantity

      t.timestamps null: false
    end
  end
end
