class CreateBrains < ActiveRecord::Migration
  def change
    create_table :brains do |t|
      t.string :name

      t.timestamps
    end
  end
end
