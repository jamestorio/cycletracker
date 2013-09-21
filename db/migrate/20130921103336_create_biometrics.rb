class CreateBiometrics < ActiveRecord::Migration
  def change
    create_table :biometrics do |t|
      t.date :date
      t.decimal :weight
      t.decimal :bmi
      t.text :note
      t.time :time

      t.timestamps
    end
  end
end
