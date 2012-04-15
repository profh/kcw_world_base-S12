class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.boolean :active, :default => true

      t.timestamps
    end
  end
end
