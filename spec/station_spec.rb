require 'rails_helper'

describe Station do
  it{ should validate_presence_of :name}
  it{ should validate_uniqueness_of :name}
end
