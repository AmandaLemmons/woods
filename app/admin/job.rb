ActiveAdmin.register Job do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :title, :description, :location, :salary_id, :category_id, :company, :experience_level_id, :responsibilities, :requirements

index do
  column :title
  column :description
  column :location
  column :salary_id
  column :category_id
  column :company
  column :experience_level_id
  column :responsibilities
  column :requirements

  actions
end

form do |f|
  f.inputs 'Candidate' do
    f.input :title
    f.input :description
    f.input :location
    f.input :salary_id
    f.input :category_id
    f.input :company
    f.input :experience_level_id
    f.input :responsibilities
    f.input :requirements


  end
  f.actions
end

#

# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end

end
