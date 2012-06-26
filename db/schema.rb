# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120626114219) do

  create_table "group_records", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "group_id"
  end

  create_table "group_students", :force => true do |t|
    t.integer  "group_id"
    t.integer  "student_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "groups", :force => true do |t|
    t.string   "name"
    t.integer  "instructor_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "student_records", :force => true do |t|
    t.boolean  "present"
    t.integer  "preparation"
    t.integer  "personalAttitude"
    t.string   "note"
    t.integer  "student_student_id"
    t.datetime "classDate"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
    t.integer  "group_record_id"
  end

  create_table "students", :force => true do |t|
    t.string   "name"
    t.boolean  "instructor"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
