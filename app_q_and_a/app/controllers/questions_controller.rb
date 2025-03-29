class QuestionsController < ApplicationController
  # 質問一覧を表示
  def index
    @questions = Question.all
    
  end

  # 質問ページの詳細表示
  def show
    @question = Question.find(params[:id]) # @questionにDBのパラメータを格納　-> viewで表示
    
  end

  # 質問の作成メソッド
  # ルーティング設定により，questions/newにアクセスされたときに呼び出される
  def new
    @question = Question.new
  end

  # 質問登録
  def create # submitされたときに呼び出される
    # Questionモデルの初期化
    @question = Question.new(question_params)
    # QuestionモデルをDBに保存
    @question.save
    # showアクションへリダイレクト
    redirect_to @question
  end

  # 質問編集
  def edit
  end

  # 質問更新
  def update
  end

  # 質問の削除
  def detroy
  end

  private
  def question_params
    params.require(:question).permit(:title, :name, :content) # ストロングパラメータ
  end


end
