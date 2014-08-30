ActiveAdmin.register User do

  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  permit_params :name, :lastname, :nickname, :email

  #t.string   "email",                  default: "", null: false
  #t.string   "encrypted_password",     default: "", null: false
  #t.string   "reset_password_token"
  #t.datetime "reset_password_sent_at"
  #t.datetime "remember_created_at"
  #t.integer  "sign_in_count",          default: 0,  null: false
  #t.datetime "current_sign_in_at"
  #t.datetime "last_sign_in_at"
  #t.string   "current_sign_in_ip"
  #t.string   "last_sign_in_ip"
  #t.datetime "created_at"
  #t.datetime "updated_at"
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
