class CreateKeywordMappings < ActiveRecord::Migration[7.1]
  def change
    create_table :keyword_mappings do |t|
      t.string :keyword
      t.string :message

      t.timestamps
    end
  end
end
