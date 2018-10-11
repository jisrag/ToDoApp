class TodoList < ApplicationRecord
    has_many :todo_items, :dependent => :destroy
    belongs_to :user


    

def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |items|
        csv << items.attributes.values_at(*column_names)
      end
    end
  end
  
  
end
