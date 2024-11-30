### 診断機能ロジック詳細
---
診断機能ロジックに関して、プロトタイプ的な意味合いで作成したものを示しながら説明したいと思います。

1.以下のViewでユーザーが ”質問内容１” に答え当てはまる度合いで１～５の中から選択します。プロトタイプでは８問用意していますが、質問内容等は確定しておりません。
```
  <div id="step1" style="display: block;" data-step-form-target="step">
    <%= f.label :question1, "質問内容1" %>
    <div>
      <%= f.radio_button :question1, "5", data: { action: "change->step-form#autoNext" } %> 5
      <%= f.radio_button :question1, "4", data: { action: "change->step-form#autoNext" } %> 4
      <%= f.radio_button :question1, "3", data: { action: "change->step-form#autoNext" } %> 3
      <%= f.radio_button :question1, "2", data: { action: "change->step-form#autoNext" } %> 2
      <%= f.radio_button :question1, "1", data: { action: "change->step-form#autoNext" } %> 1
    </div>
```  

２.Active Modelを使用しDBに異存ないモデルを作成。このモデルにてスコアの計算を行います。今回は`PersonalityTest`クラスとします。
```
#各設問ごとに比重を変更
SCORE_MAPPING = {
    question1: { '1' => 1, '2' => 2, '3' => 2, '4' => 4, '5' => 5 }, # 法然: 5
    question2: { '1' => 1, '2' => 2, '3' => 5, '4' => 4, '5' => 2 }, # 一遍: 5
    question3: { '1' => 1, '2' => 2, '3' => 2, '4' => 4, '5' => 5 }, # 日蓮: 5
    question4: { '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5 }, # 栄西: 5
    question5: { '1' => 3, '2' => 3, '3' => 3, '4' => 4, '5' => 5 }, # 道元: 5
    question6: { '1' => 1, '2' => 2, '3' => 2, '4' => 4, '5' => 5 }, # 栄西: 5
    question7: { '1' => 2, '2' => 2, '3' => 3, '4' => 4, '5' => 5 }, # 法然: 5
    question8: { '1' => 1, '2' => 2, '3' => 4, '4' => 4, '5' => 5 }  # 日蓮: 5
  }
  
#合計値の計算
  def calculate_score
    score = 0
    score += SCORE_MAPPING[:question1][question1] if question1
    score += SCORE_MAPPING[:question2][question2] if question2
    score += SCORE_MAPPING[:question3][question3] if question3
    score += SCORE_MAPPING[:question4][question4] if question4
    score += SCORE_MAPPING[:question5][question5] if question5
    score += SCORE_MAPPING[:question6][question6] if question6
    score += SCORE_MAPPING[:question7][question7] if question7
    score += SCORE_MAPPING[:question8][question8] if question8
    score
  end

#calculate_scoreで計算されたtotal_scoreがstart_score から end_score の範囲に含まれているかを判定
  def get_result
    total_score = calculate_score
    result = Monk.all.find do |result|
      (result.start_score..result.end_score).include?(total_score)
    end
    result
  end
```
３.コントローラーにおいて結果の表示と保存を行います。ユーザー未登録かつ診断済の場合は一時的にセッションに保存。ユーザー登録のタイミングでUserResultテーブルに保存する。 登録ユーザーは診断結果の有無でそのあとの動きを変えています。

```
  def new
    @personality_test = PersonalityTest.new
  end

  def create 
    @personality_test = PersonalityTest.new(personality_test_params)
    @result = @personality_test.get_result
  
    if @result
      # 診断結果を登録ユーザーではない場合は一時的にセッションに保存する
      session[:result] = @result if current_user.nil?
      render :result
    else
      flash[:alert] = "診断結果が見つかりませんでした。入力内容を確認してください。"
      redirect_to root_path
    end
  end

   def update # ユーザー登録後マイページから行う、診断結果の保存。
    unless current_user
      flash[:alert] = 'ログインが必要です。'
      redirect_to login_path and return
    end

    @monk= current_user.user_results.first&.monk
      
    if @monk
      #診断結果がある場合
      if @monk.update(result_params)
        redirect_to user_path(current_user),notice: '診断結果が更新されました。'
      else
        flash[:alert] = "診断結果の更新に失敗しました。"
      end
    else
      #診断結果がない場合
      @monk = Monk.create(result_params)
      if current_user.user_results.create(monk_id: @monk.id)
        redirect_to user_path(current_user), notice: '新しい診断結果が作成されました。'
      else
        flash[:alert] = '診断結果の作成に失敗しました。'
        render :result
      end
    end
  end
```

初期データ
```
PersonalityResult.create!(
  name: '法然',
  title: "思いやりのある慈悲型",
  description: '行動力があり、目標に向かって突き進むタイプです。',
  start_score: 31,
  end_score: 40
)
```
[![Image from Gyazo](https://i.gyazo.com/d8ec7ec2041d6ee10e19b653d240ff3e.gif)](https://gyazo.com/d8ec7ec2041d6ee10e19b653d240ff3e)  

[![Image from Gyazo](https://i.gyazo.com/d27ed256896a82edb0d059d7bfbb07de.gif)](https://gyazo.com/d27ed256896a82edb0d059d7bfbb07de)