require 'rails_helper'

describe Category do
  it { should validate_presence_of :name }
  it { should belong_to :book }
  it { should have_many :titles }
end
