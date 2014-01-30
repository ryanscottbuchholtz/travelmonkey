require 'spec_helper'

describe Trip do
  describe 'Validations' do
  let(:trip) { FactoryGirl.build(:trip)}
  let(:blank) { ['', nil] }

  it 'is valid when it has all required and valid attributes' do
    expect(trip).to be_valid
  end

  it { should_not have_valid(:start_date).when(*blank) }
  it { should_not have_valid(:end_date).when(*blank) }
  it { should_not have_valid(:city).when(*blank) }
  it { should_not have_valid(:country).when(*blank) }
  
  end

end
