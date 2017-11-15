require 'rails_helper'

describe Book do
  it { should validate_presence_of :genre }
  it { should have_many :categories }
end
