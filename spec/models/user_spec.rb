require 'rails_helper'

RSpec.describe User, type: :model do
    let(:user) { User.new(name:"Polina", email: "polina@mail.com", password: "123456")}

    before { user.save }

    describe 'assocciations' do
      it { should have_many(:moneytracks) }

      it { should have_many(:groups) }
    end

    describe 'validations' do
      it { should validate_presence_of(:name) }
    end
end
