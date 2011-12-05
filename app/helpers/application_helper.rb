module ApplicationHelper

  def getBirthDateStart()
    Time.now.year - 100
  end

  def getBirthDateEnd()
    Time.now.year
  end

  def twitterized_type(type)
    case type
      when :alert
        "warning"
      when :error
        "error"
      when :notice
        "info"
      when :success
        "success"
      else
        type.to_s
    end
  end

end
