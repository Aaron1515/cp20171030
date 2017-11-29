class CreateActivities < ActiveRecord::Migration[5.0]
  def change
    create_table :activities do |t|
      t.text :note
      t.references :info, polymorphic: true, index: true

      t.timestamps
    end
  end
end
