require 'rails_helper'

RSpec.describe 'MoneyTrack view', type: :feature do
  include Devise::Test::IntegrationHelpers
  let(:user) { User.new(name: 'Polina', email: 'polina@mail.com', password: '123456') }
  let(:group) { Group.create(name: 'Fast Food', icon: 'http//', user: user) }
  let(:input_type) { %w[text submit] }

  describe '#index' do
    before do
      sign_in user
      visit new_group_money_track_path(group_id: group)
    end

    it { expect(page).to have_content('NEW MONEYTRACK') }

    it 'should have email, password inputs' do
      input_type.each do |type|
        expect(page).to have_selector("input[type=#{type}]")
      end
    end
  end
end
