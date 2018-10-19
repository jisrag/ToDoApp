require 'rails_helper'

RSpec.describe TodoList, type: :model do
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

  context 'creation test' do
    it 'ensures that a list can be created' do
      list = user.todo_lists.new(
        title: 'New list',
        description: 'Amazing description'
      ).save
      expect(list).to eq(true)
end

end

it 'ensures that a list can create a task' do
  item = list.todo_items.new(content: 'Task').save
  expect(item).to eq(true)
end




context 'update test' do
  it 'ensueres that a list can be updated' do
    list.update!(title: 'Updated name')
    expect(list.title).to eq('Updated name')
  end
end
end

