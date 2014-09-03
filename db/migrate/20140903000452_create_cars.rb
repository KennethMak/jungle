class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :make
      t.text :summary
      t.integer :price_in_dollars

      t.timestamps
    end
  end
end
