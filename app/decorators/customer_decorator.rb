class CustomerDecorator < Draper::Decorator
  delegate_all



  def full_name
    if customerfirst_name.blank? && customerlast_name.blank?
      '*NO NAME IS PROVIDED*'
    else
      "#{ customerfirst_name } #{ customerlast_name }".strip
    end
  end



def full_name2
    if customeraddress.blank?
      '*DOCTORS NAME IS NOT PROVIDED*'
    else
      "#{ customeraddress }".strip
    end
end



  def joined_at
    created_at.strftime("%B %Y")
  end
end


