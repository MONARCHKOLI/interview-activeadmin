ActiveAdmin.register Question do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :question, :screening_id

  screening_type = {}
  Screening.pluck(:screening_type).each do |screening|
    screening_type.merge!("#{screening}": Screening.where(screening_type: screening).first.id)
  end
  
  filter :screening, label: "Screening Type", collection: proc {screening_type.each do |type| type end}
  preserve_default_filters!

  form title: "Enter Question and Screening Type For Screening" do |f|
    inputs "Details" do
        label :screening_type 
        select :screening_id,screening_type 
        input :question
        semantic_errors *object.errors.attribute_names
    end
    f.actions
  end
  #
  # or
  #
  permit_params do
    permitted = [:question, :screening_id]
    permitted << :other if params[:action] == 'create'
    permitted
  end

  show title: "Response" do
    attributes_table do
      row :Screening_type do
        screening_type.key(resource&.screening&.id)
      end
      row :screening_id
    end
    default_main_content
  end

  index title: "Questions" do
    selectable_column
    id_column
    column :question
    column :screening_id do |screening|
      screening_type.key(screening.screening_id)
    end
    column :created_at
    actions
  end
end
