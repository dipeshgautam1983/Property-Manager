# == Schema Information
#
# Table name: tickets
#
#  id                 :integer          not null, primary key
#  description        :string
#  status             :string
#  agentcomment       :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  agent_id           :integer
#  tenant_id          :integer
#  PropertyManager_id :integer
#



require 'test_helper'

class TicketTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "Ticket description with comment greater than 250 character should be invalid" do
    ticketDescription = tickets(:one)
    ticketDescription.description = 'This is a test to see if the number of characters for the ticket description are still recognized properly even if the maximum length of two hundred and fifty characters has been exceeded. If, by any chance the maximum length of two hundred and fifty characters has been exceeded, the system should completely and utterly reject the description.'
    assert ticketDescription.invalid?
  end

  test "Ticket status has to be a valid value" do
    ticketStatus = tickets(:two)
    ticketStatus.status = 'Unfinished'
    assert ticketStatus.invalid?
  end

  test "Agent comment with comment greater than 250 character should be invalid" do
    agentComment = tickets(:two)
    agentComment.agentcomment = 'This is a test to see if the number of characters for the agent while updating his/her comment are still recognized properly even if the maximum length of two hundred and fifty characters has been exceeded. If, by any chance the maximum length of two hundred and fifty characters has been exceeded, the system should completely and utterly reject the updated comment.'
    assert agentComment.invalid?
  end

end
