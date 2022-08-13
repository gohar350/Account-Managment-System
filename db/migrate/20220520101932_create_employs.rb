class CreateEmploys < ActiveRecord::Migration[7.0]
  def change
    create_table :employs do |t|
      t.string :name
      t.string :cnic
      t.string :status

      t.timestamps
    end
  end
end
