require "spec_helper"

describe Fume::Cancan::ControllerExtensions, type: :controller do
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

    def ability
      controller.current_ability
    end

    def is_expected_access_denied
      expect { do_action }.to raise_error CanCan::AccessDenied
    end

    def is_expected_response_ok
      do_action; expect(response.body).to eq "OK"
    end
  end
end