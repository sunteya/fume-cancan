require "rails_helper"

RSpec.describe Fume::Cancan::WithScope, type: :controller do
  describe "#with_scope" do
    controller(ApplicationController) {}
    let!(:topic) { Topic.create!(title: "TITLE", online: false) }
    let(:params) { { id: topic.id } }

    action { get :show, Rails.version.start_with?("4.") ? params : { params: params } }

    context "when undefine with_scope option" do
      controller { load_and_authorize_resource :topic, parent: false }
      it { expect(response.body).to eq "FOUND" }
    end

    context "when define with_scope option" do
      controller { load_and_authorize_resource :topic, parent: false, with_scope: -> (base) { base.online } }
      skip_do_action
      it { expect { do_action }.to raise_error(ActiveRecord::RecordNotFound) }
    end
  end
end
