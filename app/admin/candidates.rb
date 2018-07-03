ActiveAdmin.register Candidate do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :username, :location, :date_of_birth, :category_id, :phone_number, :gender, :password, :password_confirmation, :email, :privacy_policy
  index do
    column :id
    column :email
    column :name
    column :date_of_birth
    column :category
    column :location
    column :username
    column :gender
    column :phone_number


    actions
  end

  form do |f|
    f.inputs 'Candidate' do
      f.input :email
      f.input :password
      f.input :password_confirmation
      f.input :category
      f.input :name
      f.input :username
      f.input :gender
      f.input :date_of_birth
      f.input :location
      f.input :phone_number


    end
    f.actions
  end


end
