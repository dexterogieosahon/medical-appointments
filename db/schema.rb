# This file is autogenerated. Instead of editing this file, please use the
# migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.

ActiveRecord::Schema.define(:version => 21) do

  create_table "appointment_categories", :force => true do |t|
    t.column "name", :string
  end

  create_table "appointment_categories_appointments", :id => false, :force => true do |t|
    t.column "appointment_category_id", :integer
    t.column "appointment_id",          :integer
  end

  create_table "appointment_states", :force => true do |t|
    t.column "name",   :string
    t.column "icon",   :string
    t.column "colour", :string
  end

  create_table "appointment_types", :force => true do |t|
    t.column "name",                   :string
    t.column "duration",               :integer
    t.column "healthcare_provider_id", :integer
  end

  create_table "appointments", :force => true do |t|
    t.column "patient_id",             :integer
    t.column "start_time",             :datetime
    t.column "duration_override",      :integer
    t.column "comment",                :text
    t.column "healthcare_provider_id", :integer
    t.column "appointment_type_id",    :integer
    t.column "end_time",               :datetime
    t.column "created_on",             :datetime
    t.column "appointment_state_id",   :integer
  end

  create_table "healthcare_providers", :force => true do |t|
    t.column "name",                        :string
    t.column "default_appointment_type_id", :integer
    t.column "created_on",                  :datetime
  end

  create_table "patients", :force => true do |t|
    t.column "first_name", :string
    t.column "surname",    :string
    t.column "created_on", :datetime
    t.column "name",       :string
  end

end
