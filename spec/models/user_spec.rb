require 'spec_helper'

describe User do
  describe 'Validations' do
    let (:user) { FactoryGirl.build(:user) }
    let (:blank) { ['', nil] }

    it 'is valid when it has all required and valid attributes' do
    expect(user).to be_valid

  end

    it { should_not have_valid(:email).when(*blank) }
    it { should_not have_valid(:first_name).when(*blank) }
    it { should_not have_valid(:last_name).when(*blank) }
    it { should_not have_valid(:birth_month).when(*blank) }
    it { should_not have_valid(:birth_day).when(*blank) }
    it { should_not have_valid(:birth_year).when(*blank) }

  end

  describe 'Associations' do

    it { should have_many(:trips) }

  end

  it 'has a matching password confirmation for the password' do

    user = User.new
    user.password = 'password'
    user.password_confirmation = 'anotherpassword'

    expect(user).to_not be_valid
    expect(user.errors[:password_confirmation]).to_not be_blank
  end

end
