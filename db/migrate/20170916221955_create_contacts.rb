class CreateContacts < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts do |t|
      t.string :origin
      t.string :occupation

      t.timestamps
    end
  end
end
