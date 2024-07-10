# frozen_string_literal: true

# A migration for creating the Service Types table
class CreateServiceTypes < ActiveRecord::Migration[7.1]
  def change
    create_table :service_types do |t|
      t.string :service_type_name
      t.text :service_type_description
      t.boolean :meeting_required

      t.timestamps
    end
  end
end
