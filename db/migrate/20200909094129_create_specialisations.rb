class CreateSpecialisations < ActiveRecord::Migration[6.0]
  def change
    create_table :specialisations do |t|
    	t.belongs_to :mission, index: true
    	t.belongs_to :category, index: true
    	
      t.timestamps
    end
  end
end
