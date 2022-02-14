module PostsHelper
    def show_dlt_btn(current_user, post)
        if current_user == post.user
           content_tag( :span, link_to( "delete" , post, method: :delete, data: {confirm: "are you sure"}, class:"btn btn-danger" ))
        end
    end
    def show_edit_btn(current_user, post)
        if current_user == post.user
           content_tag(:span, link_to( "edit", edit_post_path(post),class:"btn btn-warning" ))
        end
    end
    # def show_view_btn(current_user, post)
    #     if current_user == post.user
    #        content_tag(:span, link_to( "View", post_path(post),class:"btn btn-primary" ))
    #     end
    # end
end
