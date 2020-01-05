require 'test_helper'

class AdvisorTest < ActiveSupport::TestCase


  test "should not save advisor with invalid name" do
    @advisor = advisors(:two)
    nAdvisor = Advisor.new(email: @advisor.email, intern: @advisor.intern, name: @advisor.name)
    assert_not nAdvisor.save, "Saved advisor with invalid name"
  end

  test "should not save advisor with invalid email" do
    @advisor = advisors(:three)
    nAdvisor = Advisor.new(email: @advisor.email, intern: @advisor.intern, name: @advisor.name)
    assert_not nAdvisor.save, "Saved advisor with invalid email"
  end

  test "should not save advisor with invalid intern" do
    @advisor = advisors(:four)
    nAdvisor = Advisor.new(email: @advisor.email, intern: @advisor.intern, name: @advisor.name)
    assert_not nAdvisor.save, "Saved advisor with invalid intern"
  end

end