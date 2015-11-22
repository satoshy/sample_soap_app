class CreateConverters < ActiveRecord::Migration
  def change
    create_table :converters do |t|
      t.float :fromCurrency
      t.float :toCurrency

      t.timestamps null: false
    end
  end
end
