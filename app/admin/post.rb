ActiveAdmin.register Post do
  filter :id
  filter :title
  filter :content, as: :string
  filter :source_name
  filter :published_at

  permit_params do
    permitted = [:title, :content, :source_name, :source_url, :published_at]
    #permitted << :other if params[:action] == 'create' && current_user.admin?
    permitted
  end

end
