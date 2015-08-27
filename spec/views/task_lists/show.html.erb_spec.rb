require 'rails_helper'

RSpec.describe "task_lists/show", type: :view do
  before(:each) do
    @task_list = assign(:task_list, TaskList.create!(
      :name => "Name",
      :user_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
  end
end
