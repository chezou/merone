class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string :comment

      t.timestamps
    end
  end
end
