class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.float :price
      t.string :name
      t.boolean :real
      t.float :wight
      t.text :description
      t.string :timestamps

      t.timestamps
    end
  end
end
