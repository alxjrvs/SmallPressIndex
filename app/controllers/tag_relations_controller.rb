
class TagRelationsController < ApplicationController
  # GET /tag_relations
  # GET /tag_relations.json
  def index
    @tag_relations = TagRelation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tag_relations }
    end
  end

  # GET /tag_relations/1
  # GET /tag_relations/1.json
  def show
    @tag_relation = TagRelation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tag_relation }
    end
  end

  # GET /tag_relations/new
  # GET /tag_relations/new.json
  def new
    @tag_relation = TagRelation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tag_relation }
    end
  end

  # GET /tag_relations/1/edit
  def edit
    @tag_relation = TagRelation.find(params[:id])
  end

  # POST /tag_relations
  # POST /tag_relations.json
  def create
    @tag_relation = TagRelation.new(params[:tag_relation])

    respond_to do |format|
      if @tag_relation.save
        format.html { redirect_to @tag_relation, notice: 'Tag relation was successfully created.' }
        format.json { render json: @tag_relation, status: :created, location: @tag_relation }
      else
        format.html { render action: "new" }
        format.json { render json: @tag_relation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tag_relations/1
  # PUT /tag_relations/1.json
  def update
    @tag_relation = TagRelation.find(params[:id])

    respond_to do |format|
      if @tag_relation.update_attributes(params[:tag_relation])
        format.html { redirect_to @tag_relation, notice: 'Tag relation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tag_relation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tag_relations/1
  # DELETE /tag_relations/1.json
  def destroy
    @tag_relation = TagRelation.find(params[:id])
    @tag_relation.destroy

    respond_to do |format|
      format.html { redirect_to tag_relations_url }
      format.json { head :no_content }
    end
  end
end
