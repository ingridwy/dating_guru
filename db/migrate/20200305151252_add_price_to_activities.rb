class AddPriceToActivities < ActiveRecord::Migration[6.0]
  def change
    add_column :activities, :price, :integer
  end
end
