require 'rails_helper'

RSpec.describe "TaskLists", type: :request do
  describe "GET /task_lists" do
    it "works! (now write some real specs)" do
      get task_lists_path
      expect(response).to have_http_status(200)
    end
  end
end
