ActiveAdmin.register Answer do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :screening_id, :question_id, :response
  #
  # or
  #
  # permit_params do
  #   permitted = [:screening_id, :question_id, :response]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

  screening_type = {}
  Screening.pluck(:screening_type).each do |screening|
    screening_type.merge!("#{screening}": Screening.where(screening_type: screening).first.id)
  end

  questions = []
  Question.all.each_with_index do |question,index|
    questions.push(question.question)
  end
  
  form title: "Select Screening Type and Question" do |f|
    inputs "Details" do
      f.label 'Screening type :_' 
      f.select :screening_id, screening_type
      f.select :question_id, questions.each do |question|
        question
      end
    end
    f.actions
  end
end
