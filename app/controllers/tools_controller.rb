class ToolsController < ApplicationController

  def index #create file called app/views/tools/index.html.erb
    @tools = Tool.all
  end

  def new
    @user = User.find(params[:user_id])
    @tool = Tool.new
  end

  def create
    @user = User.find(params[:user_id])
    @tool = Tool.new(tool_params)
    if @tool.save
      flash[:notice] = "You've successfully created a tool!"
      redirect_to user_tool_path(@user, @tool)
    else
      flash[:error] = "#{@tool.errors.full_messages.join(",")}"
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
