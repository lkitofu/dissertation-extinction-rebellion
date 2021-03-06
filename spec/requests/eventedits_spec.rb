 require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe "/eventedits", type: :request do
  # Eventedit. As you add validations to Eventedit, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  describe "GET /index" do
    it "renders a successful response" do
      Eventedit.create! valid_attributes
      get eventedits_url
      expect(response).to be_successful
    end
  end

  describe "GET /show" do
    it "renders a successful response" do
      eventedit = Eventedit.create! valid_attributes
      get eventedit_url(eventedit)
      expect(response).to be_successful
    end
  end

  describe "GET /new" do
    it "renders a successful response" do
      get new_eventedit_url
      expect(response).to be_successful
    end
  end

  describe "GET /edit" do
    it "render a successful response" do
      eventedit = Eventedit.create! valid_attributes
      get edit_eventedit_url(eventedit)
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Eventedit" do
        expect {
          post eventedits_url, params: { eventedit: valid_attributes }
        }.to change(Eventedit, :count).by(1)
      end

      it "redirects to the created eventedit" do
        post eventedits_url, params: { eventedit: valid_attributes }
        expect(response).to redirect_to(eventedit_url(Eventedit.last))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Eventedit" do
        expect {
          post eventedits_url, params: { eventedit: invalid_attributes }
        }.to change(Eventedit, :count).by(0)
      end

      it "renders a successful response (i.e. to display the 'new' template)" do
        post eventedits_url, params: { eventedit: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested eventedit" do
        eventedit = Eventedit.create! valid_attributes
        patch eventedit_url(eventedit), params: { eventedit: new_attributes }
        eventedit.reload
        skip("Add assertions for updated state")
      end

      it "redirects to the eventedit" do
        eventedit = Eventedit.create! valid_attributes
        patch eventedit_url(eventedit), params: { eventedit: new_attributes }
        eventedit.reload
        expect(response).to redirect_to(eventedit_url(eventedit))
      end
    end

    context "with invalid parameters" do
      it "renders a successful response (i.e. to display the 'edit' template)" do
        eventedit = Eventedit.create! valid_attributes
        patch eventedit_url(eventedit), params: { eventedit: invalid_attributes }
        expect(response).to be_successful
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested eventedit" do
      eventedit = Eventedit.create! valid_attributes
      expect {
        delete eventedit_url(eventedit)
      }.to change(Eventedit, :count).by(-1)
    end

    it "redirects to the eventedits list" do
      eventedit = Eventedit.create! valid_attributes
      delete eventedit_url(eventedit)
      expect(response).to redirect_to(eventedits_url)
    end
  end
end
