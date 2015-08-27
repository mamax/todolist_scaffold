require 'rails_helper'

RSpec.describe "task_lists/index", type: :view do
  before(:each) do
    assign(:task_lists, [
      TaskList.create!(
        :name => "Name",
        :user_id => 1
      ),
      TaskList.create!(
        :name => "Name",
        :user_id => 1
      )
    ])
  end

  it "renders a list of task_lists" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
