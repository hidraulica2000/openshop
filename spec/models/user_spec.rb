require "spec_helper"

describe User, "Relations" do
  it { should have_many(:stores) }
end

describe User, "Validations" do
  it { should validate_presence_of(:birthdate) }
end

describe User, "Methods" do
 	subject { FactoryGirl.create(:user) }
  its('name'){should match(/hernan herrera/i)}
end