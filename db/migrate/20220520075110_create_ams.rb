class CreateAms < ActiveRecord::Migration[7.0]
  def change
    create_table :ams do |t|
      t.string :headline
      t.string :cinfo

      t.timestamps
    end
  end
end
