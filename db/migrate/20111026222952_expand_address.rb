class ExpandAddress < ActiveRecord::Migration

  def change
    change_table :orders do |t|
      t.remove  :address
      t.string  :address_line_1
      t.string  :address_line_2
      t.string  :city
      t.string  :state
      t.integer :zip_code
    end
    
  end
end
