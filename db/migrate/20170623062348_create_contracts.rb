class CreateContracts < ActiveRecord::Migration[5.1]
  def change
    create_table :contracts do |t|
      t.string :cname
      t.datetime :created_at
    end
  end
end
