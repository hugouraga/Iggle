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

ActiveRecord::Schema.define(version: 2019_05_28_170905) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "addresses", force: :cascade do |t|
    t.string "name"
    t.string "number"
    t.string "description"
    t.string "postal_code"
    t.string "district"
    t.string "city"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "professional_user_id"
    t.index ["professional_user_id"], name: "index_addresses_on_professional_user_id"
  end

  create_table "cliente", primary_key: "email", id: :string, limit: 80, force: :cascade do |t|
    t.string "senha", limit: 80, null: false
    t.string "nome", limit: 80, null: false
    t.string "telefone", limit: 80
    t.decimal "reputacao"
  end

  create_table "cliente_avaliado", primary_key: ["email_cliente", "data_avaliacao", "hora", "email_avaliador"], force: :cascade do |t|
    t.string "email_cliente", limit: 80, null: false
    t.integer "estrelas", null: false
    t.date "data_avaliacao", null: false
    t.string "hora", limit: 20, null: false
    t.string "email_avaliador", limit: 80, null: false
    t.string "nome_servico", limit: 80, null: false
  end

  create_table "consulta_marcada", primary_key: ["data_consulta", "hora", "email_profissional", "email_cliente"], force: :cascade do |t|
    t.date "data_consulta", null: false
    t.string "hora", limit: 20, null: false
    t.string "nome_servico", limit: 80, null: false
    t.string "email_profissional", limit: 80, null: false
    t.string "email_cliente", limit: 80, null: false
  end

  create_table "contacts", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "horario_atendimento", primary_key: ["email", "horario"], force: :cascade do |t|
    t.string "email", limit: 80, null: false
    t.string "horario", limit: 20, null: false
  end

  create_table "normal_users", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "phone", default: "", null: false
    t.string "password_digest", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professional_users", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "phone", default: "", null: false
    t.string "profession", default: "", null: false
    t.string "document", default: "", null: false
    t.string "description", default: "", null: false
    t.string "facebook", default: "", null: false
    t.string "instagram", default: "", null: false
    t.string "password_digest", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "professor_esportes", primary_key: "email", id: :string, limit: 80, force: :cascade do |t|
    t.string "confef", limit: 13, null: false
  end

  create_table "profissional", primary_key: "email", id: :string, limit: 80, force: :cascade do |t|
    t.string "senha", limit: 80, null: false
    t.string "nome", limit: 80, null: false
    t.decimal "reputacao"
    t.string "telefone", limit: 80, null: false
    t.string "descricao", limit: 4000
    t.string "facebook", limit: 80
    t.string "instagram", limit: 80
    t.string "cep", limit: 8, null: false
    t.string "rua", limit: 80, null: false
    t.integer "numero", null: false
    t.string "email_convidante", limit: 80
  end

  create_table "profissional_avaliado", primary_key: ["email_profissional", "data_avaliacao", "hora", "email_avaliador"], force: :cascade do |t|
    t.string "email_profissional", limit: 80, null: false
    t.integer "estrelas", null: false
    t.string "comentario", limit: 4000
    t.date "data_avaliacao", null: false
    t.string "hora", limit: 20, null: false
    t.string "email_avaliador", limit: 80, null: false
    t.string "nome_servico", limit: 80, null: false
  end

  create_table "profissional_ed_fisica", primary_key: "email", id: :string, limit: 80, force: :cascade do |t|
    t.string "confef", limit: 13, null: false
  end

  create_table "schedules", force: :cascade do |t|
    t.string "day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "service_id"
    t.string "morning", default: "false", null: false
    t.string "evening", default: "false", null: false
    t.string "night", default: "false", null: false
    t.index ["service_id"], name: "index_schedules_on_service_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "service", default: "", null: false
    t.string "description", default: "", null: false
    t.string "value", default: "", null: false
    t.string "duration", default: "", null: false
    t.string "email", default: "", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "professional_user_id"
    t.index ["professional_user_id"], name: "index_services_on_professional_user_id"
  end

  create_table "servico", primary_key: ["nome", "email_profissional"], force: :cascade do |t|
    t.string "nome", limit: 80, null: false
    t.string "descricao", limit: 4000
    t.decimal "valor", null: false
    t.string "duracao", limit: 20, null: false
    t.string "email_profissional", limit: 80, null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "addresses", "professional_users"
  add_foreign_key "cliente_avaliado", "cliente", column: "email_cliente", primary_key: "email", name: "cliente_avaliado_cliente_fk"
  add_foreign_key "cliente_avaliado", "profissional", column: "email_avaliador", primary_key: "email", name: "cliente_avaliado_avaliador_fk"
  add_foreign_key "consulta_marcada", "cliente", column: "email_cliente", primary_key: "email", name: "consulta_marcada_cliente_fk"
  add_foreign_key "consulta_marcada", "profissional", column: "email_profissional", primary_key: "email", name: "consulta_marcada_profissional_fk"
  add_foreign_key "horario_atendimento", "profissional", column: "email", primary_key: "email", name: "horario_atendimento_fk"
  add_foreign_key "professor_esportes", "profissional", column: "email", primary_key: "email", name: "professor_esportes_fk"
  add_foreign_key "profissional_avaliado", "cliente", column: "email_avaliador", primary_key: "email", name: "profissional_avaliado_avaliador_fk"
  add_foreign_key "profissional_avaliado", "profissional", column: "email_profissional", primary_key: "email", name: "profissional_avaliado_profissional_fk"
  add_foreign_key "profissional_ed_fisica", "profissional", column: "email", primary_key: "email", name: "profissional_ed_fisica_fk"
  add_foreign_key "schedules", "services"
  add_foreign_key "services", "professional_users"
  add_foreign_key "servico", "profissional", column: "email_profissional", primary_key: "email", name: "servico_fk"
end
