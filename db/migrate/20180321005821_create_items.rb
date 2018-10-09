class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :model
      t.string :maker
      t.date :purdate
      t.integer :rest

      t.timestamps
    end
  end
end
