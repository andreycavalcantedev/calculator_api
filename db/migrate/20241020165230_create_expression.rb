class CreateExpression < ActiveRecord::Migration[7.1]
  def change
    create_table :expressions do |t|
      t.string :expression
      t.integer :resul

      t.timestamps
    end
  end
end
