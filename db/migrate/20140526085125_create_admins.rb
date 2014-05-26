class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :name
      t.boolean :sex
      t.string :address

      t.timestamps
    end
  end
end
