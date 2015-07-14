class Question < ActiveRecord::Base
  has_many :comments, :dependent => :destroy
  has_many :options, :dependent => :destroy
  accepts_nested_attributes_for :options


  def calculate_percentage
    option1 = self.options[0].votes.to_f
    option2 = self.options[1].votes.to_f
    if option1 + option2 != 0
      percent1 = (option1/(option1 + option2)*100).floor
      percent2 = (option2/(option1 + option2)*100).floor
    else
      percent1 = 0
      percent2 = 0
    end
    return [percent1, percent2]
  end
end
