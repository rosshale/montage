require 'test_helper'

class PostsControllerTest < ActionController::TestCase

  context "index" do

    setup do
      @post = Factory(:post)
      get :index
    end
    
    should respond_with :success
    should assign_to(:posts).with {  [@post]  }
  end

end
