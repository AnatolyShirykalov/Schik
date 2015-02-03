require 'rails_helper'

RSpec.describe TypographController, :type => :controller do

  describe "GET index" do
    it "returns http success" do
      get :index
      expect(response).to be_success
    end
  end

  describe "GET upload" do
    it "returns http success" do
      get :upload
      expect(response).to be_success
    end
  end

end
