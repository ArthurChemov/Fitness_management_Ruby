ActiveAdmin.register Subscription do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :subscriptiontype, :date_start, :date_end, :price
  form do |f|
    f.inputs do
      f.input :subscriptiontype
      f.input :date_start
      f.input :date_end
      f.input :price
    end
    f.actions
  end
  # or
  #
  # permit_params do
  #   permitted = [:subscriptiontype, :date_start, :date_end, :price]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
