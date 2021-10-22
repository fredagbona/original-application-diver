class CreateDoctors < ActiveRecord::Migration[5.2]
  def change
    create_table :doctors do |t|
      t.string :speciality
      t.text :hourly
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
