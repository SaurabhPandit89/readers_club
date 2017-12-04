ActiveAdmin.register Book do
  permit_params :name, :description

  index do
    selectable_column
    id_column
    column :name
    column :genre
    column :description
    actions
  end

  filter :name
  filter :genre
  filter :created_at
end