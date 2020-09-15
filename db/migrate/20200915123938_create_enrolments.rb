class CreateEnrolments < ActiveRecord::Migration[6.0]
  def change
    create_table :enrolments do |t|
      t.belongs_to :user, index: true
      t.belongs_to :mission, index: true
      t.timestamps
    end
  end
end
