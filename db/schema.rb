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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_06_03_154852) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "consulta", force: :cascade do |t|
    t.string "tema"
    t.string "diregente"
    t.date "fecha"
    t.text "descripción"
    t.bigint "socio_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["socio_id"], name: "index_consulta_on_socio_id"
  end

  create_table "empleados", force: :cascade do |t|
    t.string "nombre_completo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "empleados_tareas", id: false, force: :cascade do |t|
    t.bigint "empleado_id", null: false
    t.bigint "tarea_id", null: false
  end

  create_table "lists", force: :cascade do |t|
    t.string "description"
    t.boolean "completed", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "socio_id"
    t.string "dirigente"
    t.bigint "recepcions_id"
    t.date "fecha_limite"
    t.index ["recepcions_id"], name: "index_lists_on_recepcions_id"
    t.index ["socio_id"], name: "index_lists_on_socio_id"
  end

  create_table "proyectos", force: :cascade do |t|
    t.string "nombre"
    t.date "fecha_entrega"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recepcions", force: :cascade do |t|
    t.string "tema"
    t.string "dirigente"
    t.date "fecha"
    t.bigint "socio_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "consulta"
    t.index ["socio_id"], name: "index_recepcions_on_socio_id"
  end

  create_table "socios", force: :cascade do |t|
    t.string "name"
    t.string "sap"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tareas", force: :cascade do |t|
    t.string "nombre"
    t.integer "prioridad"
    t.bigint "proyecto_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["proyecto_id"], name: "index_tareas_on_proyecto_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.bigint "todo_list_id"
    t.string "name"
    t.boolean "completed"
    t.date "due"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["todo_list_id"], name: "index_tasks_on_todo_list_id"
  end

  create_table "todo_lists", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "consulta", "socios"
  add_foreign_key "lists", "recepcions", column: "recepcions_id"
  add_foreign_key "lists", "socios"
  add_foreign_key "recepcions", "socios"
  add_foreign_key "tareas", "proyectos"
  add_foreign_key "tasks", "todo_lists"
end
