ActiveAdmin.register Post do
  filter :id
  filter :title
  filter :content, as: :string
  filter :source_name
  filter :published_at

  permit_params do
    permitted = [:title, :content, :source_name, :source_url, :published_at, :summary, :image]
    #permitted << :other if params[:action] == 'create' && current_user.admin?
    permitted
  end

  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs '記事' do
      f.semantic_errors
      f.input :title
      f.input :content
      f.input :source_name
      f.input :source_url
      f.input :published_at
      f.input :summary
      f.input :image
    end
    f.actions
  end

  show do
    attributes_table do
      row :title
      row :content do simple_format post.content end
      row :source_name
      row :source_url
      row :published_at
      row :summary do simple_format post.summary end
      row :image do
        ul do
          li do
            image_tag(post.image.url(:w755xh500)) if post.image.present?
          end
        end
      end
    end

    active_admin_comments
  end

end
