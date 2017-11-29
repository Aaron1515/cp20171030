class CreateSubscribers < ActiveRecord::Migration[5.0]
  def change
    create_table :subscribers do |t|
      t.string :name
      t.string :email
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
