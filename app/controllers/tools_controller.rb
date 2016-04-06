class ToolsController < ApplicationController

  def index #create file called app/views/tools/index.html.erb
    @tools = Tool.all
  end
end

# <!-- it can get Tool.all but don't want to query within here want to just have html -->
