ActiveAdmin.register Order do
    permit_params :user_id, :product_id
    # config.filters = false
  
    index do
      selectable_column
      id_column
      column :user_id
      column :product_id
      actions
    end
  
    # filter :name
    # filter :current_sign_in_at
    # filter :sign_in_count
    # filter :created_at
  
    form do |f|
      f.inputs do
        f.input :user_id
        f.input :product_id
        # f.input :password_confirmation
      end
      f.actions
    end
  
  end
  
  