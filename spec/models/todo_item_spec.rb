require 'rails_helper'

RSpec.describe TodoItem, type: :model do
   # Define User to be used in tests
   let (:user) do
    user = User.new(
      email: 'someone@example.com',
      password: 'some_password_to_test'
    )
    user.save
    user
end
  
  # Define List to be used in tests
  let (:list) do
    list = user.todo_lists.new(
      title: 'New list',
      description: 'Amazing description'
    )
    list.save
    list
end

# Define List to be used in tests
let (:item) do
  item = list.todo_items.new(
    conten: 'New task',
    done: false
  )
  item.save
  item
end


context 'validation test' do
  it 'ensures presence of content' do
    new_item = list.todo_items.new(
      content: 'Amazing description'
    ).save
    expect(new_item).to eq(true)
  end
end

context 'creation test' do
  it 'ensures that a item can be created' do
    new_item = list.todo_items.new(
      content: 'Amazing description'
    ).save
    expect(new_item).to eq(true)
  end
end



end
