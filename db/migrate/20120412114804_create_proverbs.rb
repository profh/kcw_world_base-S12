class CreateProverbs < ActiveRecord::Migration
  def change
    create_table :proverbs do |t|
      t.string :klingon
      t.string :translation
      t.boolean :active, :default => true

      t.timestamps
    end
  end
end
