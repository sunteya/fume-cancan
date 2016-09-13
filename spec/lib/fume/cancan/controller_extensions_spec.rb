require "rails_helper"

RSpec.describe Fume::Cancan::ControllerExtensions, type: :controller do
  describe "#authorize_object" do
    controller(ApplicationController) {}
    action { get :index }
    skip_do_action

    context "then undefine any authorize_object" do
      it { is_expected_response_ok }
    end

    context "then authorize_object is a symbol" do
      controller { authorize_object :admin }

      context "then allow" do
        before { ability.can :manage, :admin }
        it { is_expected_response_ok }
      end

      context "then deny" do
        it { is_expected_access_denied }
      end
    end

    context "then authorize_object with options" do
      before { ability.can :index, :admin }

      context "with except option" do
        controller { authorize_object :other, except: [ :index ] }
        it { is_expected_response_ok }
      end

      context "with object options" do
        controller { authorize_object object: :admin }
        it { is_expected_response_ok }
      end

      context "with action options" do
        controller { authorize_object :admin, action: :read }
        it { is_expected_access_denied }
      end
    end

    define_method :ability, -> { controller.current_ability }
    define_method :is_expected_access_denied, -> { expect { do_action }.to raise_error CanCan::AccessDenied }
    define_method :is_expected_response_ok, -> { do_action; expect(response.body).to eq "OK" }
  end
end
