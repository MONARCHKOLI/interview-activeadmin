ActiveAdmin.register AdminUser do
  permit_params :email, :password, :password_confirmation, :user_type

  index do
    selectable_column
    id_column
    column :email
    column :user_type
    column :current_sign_in_at
    column :sign_in_count
    column :created_at
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :user_type, as: :radio, collection: ['Admin','User']
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
