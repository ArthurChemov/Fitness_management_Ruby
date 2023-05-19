ActiveAdmin.register Nutrit do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :name, :description, :callories, :protein, :fats, :carbohydrates
  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :callories
      f.input :protein
      f.input :fats
      f.input :carbohydrates
    end
    f.actions
  end
  # or
  #
  # permit_params do
  #   permitted = [:name, :description, :callories, :protein, :fats, :carbohydrates]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
  
end
