class CreateDomain < ActiveRecord::Migration[5.1]
  def change
    create_table :domains do |t|
      t.string :name
      t.text :desctiption
      t.string :ftp_usr
      t.string :ftp_pwd
      t.string :db_usr
      t.string :db_pwd
    end
  end
end
