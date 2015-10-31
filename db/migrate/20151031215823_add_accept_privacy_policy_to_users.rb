class AddAcceptPrivacyPolicyToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :accept_privacy_policy, :boolean
  end
end
