ActiveAdmin.register Manager do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :email, :password, :password_confirmation, :phone_number, :name, :company, :office, :street, :city, :zip

  index do
    column :email
    column :phone_number
    column :name
    column :company
    column :office
    column :street
    column :city
    column :zip
    column :franchise_area


    actions
  end

  form do |f|
    f.inputs 'Manager' do
      f.input :name
      f.input :email
      f.input :phone_number
      f.input :company
      f.input :office
      f.input :street
      f.input :city
      f.input :zip
      f.input :franchise_area
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
