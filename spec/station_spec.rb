require 'rails_helper'

describe Station do
  it{ should validate_presence_of :name}
  it{ should validate_uniqueness_of :name}

  it { should have_many :stops }
  it { should have_many :lines }
end
