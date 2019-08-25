class AddMerchantToBox < ActiveRecord::Migration[5.2]
  def change
    add_reference :boxes, :merchant, foreign_key: true
  end
end
