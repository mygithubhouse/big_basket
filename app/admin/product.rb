ActiveAdmin.register Product do
    permit_params :name, :price, :quantity, :category_id
    # actions :all, only: :show, except: [:new, :destroy, :edit]
    # config.filters = false

    index do
      selectable_column
      id_column
      column :name
      column :price
      column :quantity
      column :category_id
      actions
    end
  
    filter :name
    filter :price
    filter :quantity
    filter :category_id
  
    form do |f|
      f.inputs do
        f.input :name
        f.input :price
        f.input :quantity
        f.input :category_id
      end
      f.actions
    end
  
  end
  


  