class ResearchController < ApplicationController
skip_before_action :verify_authenticity_token
  def espn 
    if(params.has_key?(:dropped))
        Espn.where(:id => params[:dropped]).update_all(:taken => true)
    end
    @ppl = Espn.where(:taken => false)
    @bestoptions = Espn.find_by_sql('SELECT A.*, draft_value.* FROM draft_value LEFT OUTER JOIN (SELECT pos, MAX(total_points) AS max_pts FROM espns WHERE taken IS FALSE GROUP BY 1 ORDER BY max_pts) AS A ON draft_value.pos = A.pos')
  end
end
