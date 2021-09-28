class CreateDoctorsPages < ActiveRecord::Migration[6.1]
  def up
    create_join_table :doctors, :pages do |t|
      t.index :doctor_id
      t.index :page_id
    end
  end

  def down
    deop_table :doctors_pages
  end
end
