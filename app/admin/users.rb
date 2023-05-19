ActiveAdmin.register User do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :email, :password, :sex, :height, :weight, :tel, :password_confirmation, :nutrit_id, :training_id, :trainer_id, :subscription_id, :coupon_id, :encrypted_password
  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :encrypted_password
      f.input :sex
      f.input :height
      f.input :weight
      f.input :tel
      f.input :nutrit_id
      f.input :training_id
      f.input :trainer_id
      f.input :subscription_id
      f.input :coupon_id
    end
    f.actions
  end
  #
  # or
  #
  # permit_params do
  #   permitted = [:username, :password]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
