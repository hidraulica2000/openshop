require "spec_helper"

describe Store, "Relations" do
	it { should belong_to(:user) }
  it { should have_many(:products) }
end

describe Store, "Validations" do
  pending "it.."
end

describe Store, "Methods" do
  before do
  	subject { FactoryGirl.create(:store) }
  end
end