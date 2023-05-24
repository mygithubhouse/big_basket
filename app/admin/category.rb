ActiveAdmin.register Category do
  permit_params :name, :image#image_attributes: [:id, :images, :_destroy]
  # config.filters = false


  # show do
  #   attributes_table do
  #   row :name
  #   row :images do |ad|
  #     ul do
  #      ad.images.each do |doc|
  #        li do 
  #          link_to(doc.filename,doc.blob.service_url, target: :_blank)
  #        end
  #      end
  #     end
  #    end
  #  end
  # end

  index do
    selectable_column
    id_column
    column :name
    column :images
    actions
  end

  # filter :name
  # filter :current_sign_in_at
  # filter :sign_in_count
  # filter :created_at

  form do |f|
    f.inputs do
      f.input :name
      f.input :images, as: :file 
      # f.input :password_confirmation
    end
    f.actions
  end

end

