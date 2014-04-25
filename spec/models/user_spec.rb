require 'spec_helper'

describe User do

  it { should have_secure_password }
  it { should validate_presence_of(:firstname) }
  it { should ensure_length_of(:firstname).is_at_least(2).is_at_most(50) }
  it { should ensure_length_of(:middlename).is_at_least(2).is_at_most(50) }
  it { should validate_presence_of(:lastname) }
  it { should ensure_length_of(:lastname).is_at_least(2).is_at_most(50) }
  it { should allow_value('foo@bar.com').for(:email) }
  it { should_not allow_value('foo@bar').for(:email) }

  subject(:user) { FactoryGirl.create(:user) }

  describe "#fullname" do

    context 'without a middlename' do
      it_behaves_like "a fullname with", [:firstname, :lastname]
    end

    context 'with a middlename' do
      before do
        user.update_attribute(:middlename, 'Beatty')
      end
      it_behaves_like "a fullname with", [:firstname, :middlename, :lastname]
    end
  end

  describe "permissions" do
    it_behaves_like "permissible to", :edit, Array
    it_behaves_like "permissible to", :read, Array
  end
end
