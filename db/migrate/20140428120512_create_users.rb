class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :msg_count

      t.timestamps
    end
  end
end
