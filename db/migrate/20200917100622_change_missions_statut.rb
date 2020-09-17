class ChangeMissionsStatut < ActiveRecord::Migration[6.0]
  def change
  	remove_column :missions, :statut, :boolean
  	add_column :missions, :statut, :boolean
  end
end
