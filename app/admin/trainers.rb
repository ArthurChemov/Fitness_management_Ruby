ActiveAdmin.register Trainer do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :email, :encrypted_password
  form do |f|
    f.inputs do
      f.input :email
      f.input :encrypted_password
    end
    f.actions
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:trainername, :password]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
