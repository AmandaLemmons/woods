ActiveAdmin.register Manager do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :email, :password, :password_confirmation
  index do
    column :email
    actions
  end

  form do |f|
    f.inputs 'Manager' do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end

end
