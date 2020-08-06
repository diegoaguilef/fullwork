require 'rails_helper'

RSpec.describe Group, type: :model do
  context 'before create' do
    it 'should accept or receive members on member group' do
      m = Member.create!(email: 'a@b.cl', password: 'diego123')
      g = Group.create!(name: 'asdasd', group_type: 'asdad', category: 'asdasdsa')
      expect MemberGroup.create(member: m, group: g)
    end
  end
end
