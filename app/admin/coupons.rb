ActiveAdmin.register Coupon do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :coupons, :body
  form do |f|
    f.inputs do
      f.input :coupons
      f.input :body
    end
    f.actions
  end
  # or
  #
  # permit_params do
  #   permitted = [:coupons, :body]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
