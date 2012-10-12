class ProductDetailsController < ApplicationController
  # GET /product_details
  # GET /product_details.json
  before_filter :authorize, :except => :index
  def index
    @product_details = ProductDetail.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render :json => @product_details }
    end
  end

  # GET /product_details/1
  # GET /product_details/1.json
  def show
    @product_detail = ProductDetail.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render :json => @product_detail }
    end
  end

  # GET /product_details/new
  # GET /product_details/new.json
  def new
    @product_detail = ProductDetail.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render :json => @product_detail }
    end
  end

  # GET /product_details/1/edit
  def edit
    @product_detail = ProductDetail.find(params[:id])
  end

  # POST /product_details
  # POST /product_details.json
  def create
    @product_detail = ProductDetail.new(params[:product_detail])

    respond_to do |format|
      if @product_detail.save
        format.html { redirect_to @product_detail, :notice => 'Product detail was successfully created.' }
        format.json { render :json => @product_detail, :status => :created, :location => @product_detail }
      else
        format.html { render :action => "new" }
        format.json { render :json => @product_detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /product_details/1
  # PUT /product_details/1.json
  def update
    @product_detail = ProductDetail.find(params[:id])

    respond_to do |format|
      if @product_detail.update_attributes(params[:product_detail])
        format.html { redirect_to @product_detail, :notice => 'Product detail was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render :action => "edit" }
        format.json { render :json => @product_detail.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /product_details/1
  # DELETE /product_details/1.json
  def destroy
    @product_detail = ProductDetail.find(params[:id])
    @product_detail.destroy

    respond_to do |format|
      format.html { redirect_to product_details_url }
      format.json { head :no_content }
    end
  end
end
