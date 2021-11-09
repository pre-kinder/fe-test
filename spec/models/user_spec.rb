require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'relationships' do;  end

  describe 'validations' do
    it { should validate_presence_of(:email) }
    # it { should validate_uniqueness_of(:email) }
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    # it { should validate_presence_of(:role) }
    it { should allow_value(:teacher).for(:role) }
    it { should allow_value(:parent).for(:role) }
  end

  before(:each) do
    @user_1 = FactoryBot.create(:mock_teacher)
    @user_2 = FactoryBot.create(:mock_parent)
    @user_3 = FactoryBot.create(:mock_teacher)
  end

  describe 'class methods' do
    describe 'teacher?' do
      it 'returns users with teacher role' do
        expect(User.teacher?.count).to eq(2)
        expect(User.teacher?.first).to eq(@user_1)
        expect(User.teacher?.last).to eq(@user_3)
      end
    end

    describe 'parent?' do
      it 'returns users with parent role' do
        expect(User.parent?.first).to eq(@user_2)
      end
    end
  end
end
