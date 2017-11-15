require 'rails_helper'

describe Title do
  it { should validate_presence_of :name }
  it { should validate_presence_of :author }
  it { should belong_to :category }
end
