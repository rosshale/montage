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

  context "new" do

    setup do
      get :new
    end
    should respond_with :success

  end

  context "create" do

    setup do
      post :create, :post => {
          :title => "A title!",
          :name => "Joe Schmoe",
          :description => "I am the description",
          :link => "http://google.com"
      }
    end
    should redirect_to("home") { posts_path }

  end

end
