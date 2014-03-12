module ApplicationHelper
  def title(value)
    unless value.nil?
      @title = "#{value} | Portfolio"      
    end
  end
end
