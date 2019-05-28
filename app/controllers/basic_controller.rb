class BasicController < ApplicationController
  skip_before_action :verify_authenticity_token
  def create
    # -------------------------------------------------- #
    # Test:call this with:
    # curl --header "Accept: application/json" --header "Content-type: application/json" --request POST --data '{"datum":"2019-03-27","kolla":"bolla"}' http://localhost:3000/basic
    # pp params[:datum]
    # pp params[:kolla]
    # system("/home/xrasto/tmp/testa.sh " + "'" + params[:kolla] + "'")
    # system("/home/xrasto/tmp/testa.sh " + "'" + params[:basic].inspect + "'")
    # -------------------------------------------------- #
    #system("/home/apps/bin/testa.sh")
	system("ssh sysed@fra.ub.gu.se /home/sysed/bin/sprintstatus/getLastSprint.sh")
	redirect_to '/' and return
  end
end
