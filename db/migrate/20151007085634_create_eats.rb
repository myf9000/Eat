class CreateEats < ActiveRecord::Migration
  def change
    create_table :eats do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
end
