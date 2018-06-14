module ClientsHelper



  def color_client_status(status)
    if status == "active"
      "btn-outline-primary"
    elsif status =="inactive"
      "btn-outline-danger"
    else
      "btn-outline-warning"
    end
  end


  # def color_client_status(status)
  #   if status == "active"
  #     haml_tag :class => "btn" do
  #       haml_tag :class => "btn-success"
  #     end
  #   elsif status =="inactive"
  #     haml_tag :class => "btn" do
  #       haml_tag :class => "btn-warning"
  #     end
  #   else
  #     haml_tag :class => "btn" do
  #       haml_tag :class => "btn-warning"
  #     end
  #   end
  # end
end
