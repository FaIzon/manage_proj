require 'rails_helper'

RSpec.describe Project, type: :model do

  context 'validation check' do
    it { should validate_presence_of :name }

    it { should allow_value("Жора").for(:name)}
  end

end
