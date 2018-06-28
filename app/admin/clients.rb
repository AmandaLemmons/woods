ActiveAdmin.register Client do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :company, :address, :phone_number, :email, :comments, :other, :contact_name, :status, :manager_id
  index do
    column :id
    column :contact_name
    column :status
    column :company
    column :address
    column :phone_number
    column :email
    column :comments
    column :manager


    actions
  end

  # form do |f|
  #   f.inputs 'Client' do
  #     f.input :contact_name
  #     f.input :status
  #     f.input :company
  #     f.input :address
  #     f.input :phone_number
  #     f.input :email
  #     f.input :comments
  #     f.input :other
  #     f.input :manager_id
  #   end
  #   f.actions
  # end

  # filter :manager, as: :select, collection: ->{ Client.all.to_s }
  # filter :manager, :collection => proc {(Client.all).map{|c| [c.manager.email, c.id]}.uniq}
# , member_label: proc{|a| a.to_s}
  # filter :manager, as: :select, collection: proc {
  #   array = (Client.all).map{|c| (c.manager.email)}
  #   array.uniq
  # }
  # filter :manager, as: :select, collection: proc {(Client.all).map{|c| [c.manager.email, c.id]}}
  filter :manager
  filter :contact_name
  filter :status
  filter :company
  filter :address
  filter :email


end
