class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.string :person_name
      t.string :person_description
      t.timestamps
    end
  end
end
