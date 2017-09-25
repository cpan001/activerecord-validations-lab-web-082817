require 'pry'
class TitleValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    @clickbait = ["Won't Believe", "Secret", "Top", "Guess"]
    unless ((@clickbait.any? {|word| !value.nil? && value.include?(word)}))  #if nil or not include
      # binding.pry
      record.errors[attribute] << (options[:message] || "does not include clickbait")
    end
  end

end
