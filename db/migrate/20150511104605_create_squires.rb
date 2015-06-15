class CreateSquires < ActiveRecord::Migration
  def change
    create_table :squires do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
