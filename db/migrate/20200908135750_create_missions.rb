class CreateMissions < ActiveRecord::Migration[6.0]
  def change
    create_table :missions do |t|
    	t.string :title
    	t.text :description
    	t.datetime :start_date
    	t.boolean :statut, default: false
    	t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
