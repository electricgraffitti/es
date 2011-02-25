class TestQuestionsController < ApplicationController
  # GET /test_questions
  # GET /test_questions.xml
  def index
    @test_questions = TestQuestion.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @test_questions }
    end
  end

  # GET /test_questions/1
  # GET /test_questions/1.xml
  def show
    @test_question = TestQuestion.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @test_question }
    end
  end

  # GET /test_questions/new
  # GET /test_questions/new.xml
  def new
    @test_question = TestQuestion.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @test_question }
    end
  end

  # GET /test_questions/1/edit
  def edit
    @test_question = TestQuestion.find(params[:id])
  end

  # POST /test_questions
  # POST /test_questions.xml
  def create
    @test_question = TestQuestion.new(params[:test_question])

    respond_to do |format|
      if @test_question.save
        format.html { redirect_to(@test_question, :notice => 'Test question was successfully created.') }
        format.xml  { render :xml => @test_question, :status => :created, :location => @test_question }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @test_question.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /test_questions/1
  # PUT /test_questions/1.xml
  def update
    @test_question = TestQuestion.find(params[:id])

    respond_to do |format|
      if @test_question.update_attributes(params[:test_question])
        format.html { redirect_to(@test_question, :notice => 'Test question was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @test_question.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /test_questions/1
  # DELETE /test_questions/1.xml
  def destroy
    @test_question = TestQuestion.find(params[:id])
    @test_question.destroy

    respond_to do |format|
      format.html { redirect_to(test_questions_url) }
      format.xml  { head :ok }
    end
  end
end
