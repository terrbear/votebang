class BallotsController < InheritedResources::Base
  def create
    create!(notice: "Thanks for voting!"){ new_ballot_url }
  end

  def results
  end
end
