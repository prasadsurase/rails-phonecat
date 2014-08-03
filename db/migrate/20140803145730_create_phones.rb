class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.string :name
      t.text :snippet
      t.text :features
      t.string :os
      t.float :os_version

      t.timestamps
    end
  end
end
