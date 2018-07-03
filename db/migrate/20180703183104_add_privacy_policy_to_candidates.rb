class AddPrivacyPolicyToCandidates < ActiveRecord::Migration[5.2]
  def change
    add_column :candidates, :privacy_policy, :boolean

  end
end
