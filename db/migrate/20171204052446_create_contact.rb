class CreateContact < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :email
      t.string :organization
      t.string :status
      t.text :comment
      t.text :note

      t.timestamps
    end
  end
end
