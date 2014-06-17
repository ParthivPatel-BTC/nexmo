class CreateSms < ActiveRecord::Migration
  def change
    create_table :sms do |t|
      t.string :phone_number

      t.timestamps
    end
  end
end
