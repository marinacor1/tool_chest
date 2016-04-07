class ToolsController < ApplicationController

  def index #create file called app/views/tools/index.html.erb
    @tools = Tool.all
  end

  def new
    @tool = Tool.new
  end

  def create
    tool = Tool.new (tool_params)
    if tool.save
      redirect_to tool_path(tool.id)
    else
      render :new
    end
  end

  def show
    @tool = Tool.find(params[:id])
  end

  def destroy
    tool = Tool.find(params[:id])
    tool.destroy
    redirect_to tools_path
  end

  private

  def tool_params
    params.require(:tool).permit(:name, :price, :quantity)
  end

end

# <!-- it can get Tool.all but don't want to query within here want to just have html -->
