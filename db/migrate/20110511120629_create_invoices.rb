class CreateInvoices < ActiveRecord::Migration
  def self.up
    create_table :invoices do |t|
      t.date :invdate
      t.decimal :amount
      t.decimal :tax
      t.decimal :total
      t.string :note

      t.timestamps
    end
  end

  def self.down
    drop_table :invoices
  end
end
