class KullanicisController < ApplicationController
  # GET /kullanicis
  # GET /kullanicis.json
  def index
    @kullanicis = Kullanici.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @kullanicis }
    end
  end

  # GET /kullanicis/1
  # GET /kullanicis/1.json
  def show
    @kullanici = Kullanici.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @kullanici }
    end
  end

  # GET /kullanicis/new
  # GET /kullanicis/new.json
  def new
    @kullanici = Kullanici.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @kullanici }
    end
  end

  # GET /kullanicis/1/edit
  def edit
    @kullanici = Kullanici.find(params[:id])
  end

  # POST /kullanicis
  # POST /kullanicis.json
  def create
    @kullanici = Kullanici.new(params[:kullanici])

    respond_to do |format|
      if @kullanici.save
        format.html { redirect_to @kullanici, notice: 'Kullanici was successfully created.' }
        format.json { render json: @kullanici, status: :created, location: @kullanici }
      else
        format.html { render action: "new" }
        format.json { render json: @kullanici.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /kullanicis/1
  # PUT /kullanicis/1.json
  def update
    @kullanici = Kullanici.find(params[:id])

    respond_to do |format|
      if @kullanici.update_attributes(params[:kullanici])
        format.html { redirect_to @kullanici, notice: 'Kullanici was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @kullanici.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kullanicis/1
  # DELETE /kullanicis/1.json
  def destroy
    @kullanici = Kullanici.find(params[:id])
    @kullanici.destroy

    respond_to do |format|
      format.html { redirect_to kullanicis_url }
      format.json { head :no_content }
    end
  end
end
