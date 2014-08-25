ActiveAdmin.register TestGuideBasic do
  permit_params :test_id, :test_type_id, :simple_question_id, :group_question_id, :order, :name, :message

  menu :parent => "Tests" 
  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
