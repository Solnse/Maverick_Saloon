class FoodItemMenusController < ApplicationController
  # GET /food_item_menus
  # GET /food_item_menus.json
  def index
    @food_item_menus = FoodItemMenu.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @food_item_menus }
    end
  end

  # GET /food_item_menus/1
  # GET /food_item_menus/1.json
  def show
    @food_item_menu = FoodItemMenu.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @food_item_menu }
    end
  end

  # GET /food_item_menus/new
  # GET /food_item_menus/new.json
  def new
    @food_item_menu = FoodItemMenu.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @food_item_menu }
    end
  end

  # GET /food_item_menus/1/edit
  def edit
    @food_item_menu = FoodItemMenu.find(params[:id])
  end

  # POST /food_item_menus
  # POST /food_item_menus.json
  def create
    @food_item_menu = FoodItemMenu.new(params[:food_item_menu])

    respond_to do |format|
      if @food_item_menu.save
        format.html { redirect_to @food_item_menu, notice: 'Food item menu was successfully created.' }
        format.json { render json: @food_item_menu, status: :created, location: @food_item_menu }
      else
        format.html { render action: "new" }
        format.json { render json: @food_item_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /food_item_menus/1
  # PUT /food_item_menus/1.json
  def update
    @food_item_menu = FoodItemMenu.find(params[:id])

    respond_to do |format|
      if @food_item_menu.update_attributes(params[:food_item_menu])
        format.html { redirect_to @food_item_menu, notice: 'Food item menu was successfully updated.' }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @food_item_menu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /food_item_menus/1
  # DELETE /food_item_menus/1.json
  def destroy
    @food_item_menu = FoodItemMenu.find(params[:id])
    @food_item_menu.destroy

    respond_to do |format|
      format.html { redirect_to food_item_menus_url }
      format.json { head :ok }
    end
  end
end
