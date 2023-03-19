ActiveAdmin.register Screening do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :check_in_id, :screening_description, :screening_type
  #
  # or
  #
  # permit_params do
  #   permitted = [:check_in_id, :response]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  
end
