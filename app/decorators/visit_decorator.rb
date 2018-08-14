class VisitDecorator < Draper::Decorator
  delegate_all




  def full_name1
    if visitissue.blank?
      '*NO-INFO-PROVIDED.*'

    end
  end

  def full_name3
    if visitimage.blank?
      '*NO-INFO-PROVIDED.*'

    end
  end



 


  def joined_at
    created_at.strftime("%a %m/%d/%y")
  end
end

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  #   def created_at
  #     helpers.content_tag :span, class: 'time' do
  #       object.created_at.strftime("%a %m/%d/%y")
  #     end
  #   end


