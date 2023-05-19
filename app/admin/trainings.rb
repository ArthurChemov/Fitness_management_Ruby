ActiveAdmin.register Training do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :description, :rate
  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :rate
    end
    f.actions
  end
  # or
  #
  # permit_params do
  #   permitted = [:name, :description, :rate]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
