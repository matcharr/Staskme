class AddCategoryRefToMissions < ActiveRecord::Migration[6.0]
  def change
    add_reference :missions, :category, index: true
  end
end
