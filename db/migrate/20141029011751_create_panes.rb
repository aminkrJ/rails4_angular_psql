class CreatePanes < ActiveRecord::Migration
  def change
    create_table :panes do |t|
      t.string :name

      t.timestamps
    end
  end
end
