class ToolsController < ApplicationController

  def index #create file called app/views/tools/index.html.erb
    @tools = Tool.all
  end

  def show
    @tool = Tool.find(params[:id])
  end

  def new
    @tool = Tool.new
  end

  def create
    # byebug
    @tool = Tool.create(tool_params)
    # params[:tool] would work but prefer to use private method so user can change attributes
    if @tool.save #happy path
      redirect_to tool_path(@tool.id)
    else #sad path
      render :new
    end
  end

  def edit
    @tool = Tool.find(params[:id])
  end

  def update
    @tool = Tool.find(params[:id])
    if @tool.update(tool_params)
      redirect_to tool_path(@tool.id)
    else
      render :edit
    end
  end

  private

  def tool_params
    params.require(:tool).permit(:name, :price, :quantity)
  end

end

# <!-- it can get Tool.all but don't want to query within here want to just have html -->
