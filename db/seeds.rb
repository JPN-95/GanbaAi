puts "creating db:)"
Question.destroy_all
Test.destroy_all
User.destroy_all

# questions = ["lorum ipsum?", "how many provinces in canada", "whats your name?", "whats your fav color?"]
# answers = ["answer a", "answer b", "answer c", "answer d"]

testtaro = User.create!(email: "test1@gmail.com", password: "123456", username: "Taro")
# patrick = User.create!(email: "patnew1@gmail.co", password:"bigsecret", username:"lol")
# katie = User.create!( email: "ru1eBr1tania1@gmail.co.uk", password:"crumpet", username:"uk_swag_tea")

puts "Making a N5 Vocab Test"
n5vocab = Test.create!(title: "N5 Vocab Test", category: "Vocabulary", user: testtaro)
Question.create!(question:"わたしのすきなスポーツは___です。",
  generated_answers: ["A. ピアノ", "B. レコード", "C. サッカー", "D. テーブル"],
  correct_answer: "C. サッカー", user_answer: "C. サッカー", test: n5vocab)
Question.create!(question: "わたしのうちにねこが___います。",
  generated_answers:["A. ふたつ", "B. ふたり", "C. にだい", "D. にひき"],
  correct_answer: "D. にひき", user_answer: "D. にひき", test: n5vocab)
Question.create!(question: "このみちは___です",
  generated_answers:["A. わかい", "B. うすい", "C. せまい", "D. おもい"],
  correct_answer: "C. せまい", user_answer: "C. せまい", test: n5vocab)
Question.create!(question: "えきででんしゃに___ます。",
  generated_answers:["A. のり", "B. とり", "C. すわり", "D. のぼり"],
  correct_answer: "A. のり", user_answer: "C. すわり", test: n5vocab)
Question.create!(question: "まちださんはせが___です。",
  generated_answers:["A. とおい", "B. ながい", "C. おもい", "D. たかい"],
  correct_answer: "D. たかい", user_answer: "D. たかい", test: n5vocab)
puts "N5 Vocab Test complete and answered!"

puts "Making a N5 Kanji Test"
n5kanji = Test.create!(title: "N5 Kanji Test", category: "Kanji", user: testtaro)
Question.create!(question: "来月",
  generated_answers:["A. くげつ", "B. らいがつ", "C. くがつ", "D. らいげつ"],
  correct_answer: "D. らいげつ", user_answer: "", test: n5kanji)
Question.create!(question: "七月",
  generated_answers:["A. しちがつ", "B. しちげつ", "C. なのがつ", "D. なのげつ"],
  correct_answer: "A. しちがつ", user_answer: "", test: n5kanji)
Question.create!(question: "木よう日",
  generated_answers:["A. きんようび", "B. すいようび", "C. かようび", "D. もくようび"],
  correct_answer: "D. もくようび", user_answer: "", test: n5kanji)
Question.create!(question: "お金",
  generated_answers:["A. おちゃ", "B. おかし", "C. おさら", "D. おかね"],
  correct_answer: "D. おかね", user_answer: "", test: n5kanji)
Question.create!(question: "天気",
  generated_answers:["A. げんき", "B. けんき", "C. てんき", "D. でんき"],
  correct_answer: "C. てんき", user_answer: "", test: n5kanji)
puts "N5 Kanji Test complete and unanswered!"

puts "Making a N5 Grammar Test"
n5grammar = Test.create!(title: "N5 Grammar Test", category: "Grammar", user: testtaro)
Question.create!(question: "田中さんは___着ていません。",
  generated_answers:["A. もう", "B. だけ", "C. まだ", "D. まで"],
  correct_answer: "C. まだ", user_answer: "", test: n5grammar)
Question.create!(question: "すいようびには日本語のテスト___",
  generated_answers:["A. はいります", "B. はあります", "C. がいます", "D. があります"],
  correct_answer: "D. があります", user_answer: "", test: n5grammar)
Question.create!(question: "あなたのかみは___よ。",
  generated_answers:["A. 長ってすぎます", "B. 長くすぎます", "C. 長いすぎます", "D. 長すぎます"],
  correct_answer: "D. 長すぎます", user_answer: "", test: n5grammar)
Question.create!(question: "わたしは、これから___に行きます。",
  generated_answers:["A. およぐ", "B. およいで", "C. およぎ", "D. およいだ"],
  correct_answer: "C. およぎ", user_answer: "", test: n5grammar)
Question.create!(question: "あの人たちはどこに行っているん___",
  generated_answers:["A. だろう", "B. つもりだ", "C. から", "D. けれども"],
  correct_answer: "A. だろう", user_answer: "", test: n5grammar)
puts "N5 Grammar Test complete and unanswered!"

# No N5 Reading test yet!

puts "Making a N5 Reading Test"
n5reading = Test.create!(title:"N5 Reading Test", category: "Reading", user: testtaro)
Question.create!(context: "アパートの皆さんへ
  来週の月曜日と火曜日の午前１０時から午後５時までエレベーターを使わないでください。階段を使ってください。",
  question: "アパートの人は、来週の月曜日と火曜日には、外に出る時、どうしますか。",
  generated_answers:["A. 来週の月曜日の午前１１時には、階段を使います。", "B. 来週の月曜日の午後３時には、エレベーターを使います。", "C. 来週の火曜日の午前１１時には、エレベーターを使います。", "D. 来週の火曜日の午後３時には、階段を使いません。"],
  correct_answer: "A. 来週の月曜日の午前１１時には、階段を使います。", user_answer: "", test: n5reading)
Question.create!(context: "リン「むらたさん、ちょっといいですか。」
  むらた「はい、なんですか。」
  リン「明日病院へ行きますから、じゅぎょうに出ません。明日の夜電話しますから、宿題をおしえてください。」
  むらた「はい、わかりました。」",
  question: "ただしいものはどれですか。",
  generated_answers: ["A. むらたさんはきょうしゅくだいをおしえます。", "B. りんさんはきょうじゅぎょうを休みます。", "C. むらたさんはあしたびょういんへ行きます。", "D. りんさんはむらたさんに電話します。"],
  correct_answer: "D. りんさんはむらたさんに電話します。", user_answer: "", test: n5reading)
Question.create!(context: "土よう日に会社の人と山へあそびに行きました。２時間あるいて山の上につきました。そこでひるごはんを食べて１時間休みました。ちょっとつかれましたが、たのしかったです。山で食べたごはんはとてもおいしかったです。また行きたいです。",
  question: "ただしいものはどれですか。",
  generated_answers: ["A. 山の上まで２時間あるきました。", "B. ひるごはんをつくってつかれました。", "C. ２時間休んでひるごはんを食べました。", "D. つかれたからもう山へ行きたくないです。"],
  correct_answer: "A. 山の上まで２時間あるきました。", user_answer: "", test: n5reading)
Question.create!(context: "わたしはきょねんの１０月に日本へ来ました。今、とうきょうのアパートにひとりですんでいます。へやはひろいですが、駅からとおいからべんりじゃありません。もっと駅にちかいへやにすみたいです。でも、駅にちかいへやは高いです。",
  question: "ただしいものはどれですか。",
  generated_answers: ["A. わたしのへやは駅からとおいですが、ひろいです。", "B. わたしのへやは駅にちかいですが、少し高いです。", "C. わたしのへやは駅にちかいですが、ひとくありません。", "D. わたしのへやは駅から少しとおいですが、べんりです。"],
  correct_answer: "A. わたしのへやは駅からとおいですが、ひろいです。", user_answer: "", test: n5reading)
Question.create!(context: "ａ「すみません、こうばんはどこですか。」
  ｂ「こうばんですか。そこにはしがありますね。そのはしをわたってまっすぐ行ってください。左側にありますよ。」
  ａ「そうですか。ここからどれぐらいかかりますか。」
  ｂ「そうですね。５分ぐらいでしょう。」",
  question: "『しつもん』 ただしいものはどれですか。",
  generated_answers: ["A. はしはこうばんの左にあります。", "B. こうばんははしのよこにあります。", "C. こうばんははしのむこうにあります。", "D. はしはここから５分ぐらいかかります。"],
  correct_answer: "C. こうばんははしのむこうにあります。", user_answer: "", test: n5reading)
puts "N5 Reading Test complete and unanswered!"

# ---------------------------N5 ^----------------------------------------------------

puts "Making a N4 Vocabulary Test"
n4vocabulary = Test.create!(title: "N4 Vocabulary Test", category: "Vocabulary", user: testtaro)
Question.create!(question: "日本では、はる・なつ・あき・ふゆの四つの___があります。",
  generated_answers:["A. てんき", "B. きぶん", "C. きおん", "D. きせつ"],
  correct_answer: "D. きせつ", user_answer: "", test: n4vocabulary)
Question.create!(question: "あまり勉強しなかったので、テストのてんが___です。",
  generated_answers:["A. しんぱい", "B. きけん", "C. あんぜん", "D. あんしん"],
  correct_answer: "A. しんぱい", user_answer: "", test: n4vocabulary)
Question.create!(question: "たかださんは___をしながらだいがくにかよっています。",
  generated_answers:["A. オートバイ", "B. デパート", "C. アルバイト", "D. カレンダー"],
  correct_answer: "C. アルバイト", user_answer: "", test: n4vocabulary)
Question.create!(question: "父はとうきょうへ行くと、いつも___をかってきてくれます",
  generated_answers:["A. おまつり", "B. おれい", "C. おみやげ", "D. おいわい"],
  correct_answer: "C. おみやげ", user_answer: "", test: n4vocabulary)
Question.create!(question: "じゅぎょうがおわってから、まいにち、ピンポンの___をします。",
  generated_answers:["A. しゅみ", "B. うんどう", "C. れんしゅう", "D. しゅうかん"],
  correct_answer: "C. れんしゅう", user_answer: "", test: n4vocabulary)
puts "N4 Vocabulary Test complete and unanswered!"

puts "Making a N4 Kanji Test"
n4kanji = Test.create!(title: "N4 Kanji Test", category: "Kanji", user: testtaro)
Question.create!(question: "自分で旅行を計画するのは楽しいです。|| 自分",
  generated_answers:["A. じぶん", "B. ちっぷん", "C. じっぷん", "D. ちぶん"],
  correct_answer: "A. じぶん", user_answer: "", test: n4kanji)
Question.create!(question: "自分で旅行を計画するのは楽しいです。|| 旅行",
  generated_answers:["A. りゅうこ", "B. りょうこ", "C. りょこう", "D. りゅこう"],
  correct_answer: "C. りょこう", user_answer: "", test: n4kanji)
Question.create!(question: "自分で旅行を計画するのは楽しいです。||計画",
  generated_answers:["A. けいかく", "B. けいが", "C. げいかく", "D. けが"],
  correct_answer: "A. けいかく", user_answer: "", test: n4kanji)
Question.create!(question: "この学生は毎日地下鉄で大学に通っています。||地下鉄",
  generated_answers:["A. じげてつ", "B. じがてつ", "C. ちけてつ", "D. ちかてつ"],
  correct_answer: "D. ちかてつ", user_answer: "", test: n4kanji)
Question.create!(question: "この学生は毎日地下鉄で大学に通っています。||大学",
  generated_answers:["A. たいがく", "B. だいかく", "C. たいかく", "D. だいがく"],
  correct_answer: "D. だいがく", user_answer: "", test: n4kanji)
puts "N4 Kanji Test complete and unanswered!"

puts "Making a N4 Grammar Test"
n4grammar = Test.create!(title: "N4 Grammar Test", category: "Grammar", user: testtaro)
Question.create!(question: "あの人は病気ではない___くすりをたくさん飲んでいます。",
  generated_answers:["A. ので", "B. ために", "C. のに", "D. から"],
  correct_answer: "C. のに", user_answer: "", test: n4grammar)
Question.create!(question: "これから日本に行くけど1週間で戻る。戻ったらすぐに会いたいと思う。それまで、なにも___。",
  generated_answers:["A. 決めないようほしい", "B. 決めないほしい", "C. 決めなくてほしい", "D. 決めないでほしい"],
  correct_answer: "D. 決めないでほしい", user_answer: "", test: n4grammar)
Question.create!(question: "社長から電話が___とき、私は子供とピクニックに出かける準備をしていた。",
  generated_answers:["A. かかってきた", "B. かかっていった", "C. かかっておいた", "D. かかってみた"],
  correct_answer: "A. かかってきた", user_answer: "", test: n4grammar)
Question.create!(question: "彼は私たちが部屋に入った___ドアを閉めた。",
  generated_answers:["A. ごで", "B. あとで", "C. まえで", "D. まえに"],
  correct_answer: "B. あとで", user_answer: "", test: n4grammar)
Question.create!(question: "この本のほうがあなたには___はずだ。",
  generated_answers:["A. わかったやすい", "B. わかるやすい", "C. わかりやすい", "D. わかってやすい"],
  correct_answer: "C. わかりやすい", user_answer: "", test: n4grammar)
puts "N4 Grammar Test complete and unanswered!"

puts "Making a N4 Reading Test"
n4reading = Test.create!(title: "N4 Reading Test", category: "Reading", user: testtaro)
Question.create!(context: "A「日本人が昼ごはんによく食べるものは何だと思いますか。」
  B「そうですね。日本人なら [ 1 ] おすしでしょう。」
  A「いいえ、ちがうんですよ。」
  B「じゃあ、てんぷらですか。」
  A「いいえ、てんぷらでもないんです。ちょっとからい食べ物です。」
  B「わかった！カレ－でしょう。」
  A「そうです。この間ざっしで読んだんですが、カレ－だそうです。」
  B「じゃあ、２ばんめはおすしですか。」
  A「 [ 2 ] 。でも、２ばんめもすしじゃないです。ラ－メンなんです。」
  B「そうなんですか。日本人はおすしとてんぷらをよく食べると思っていました。」
  A「私はすしが大好きで、日本にいたときよく食べました。」
  B「いいですね。わたしも日本へ行っておすしをたくさん食べたいです。」
  A「いつか行けるといいですね。日本のすしはほんとうにおいしいですから。」",
  question: "[ 1 ] には何を入れますか。",
  generated_answers: ["A. とても", "B. しっかり", "C. やっぱり", "D. たいへん"],
  correct_answer: "C. やっぱり", user_answer: "", test: n4reading)
Question.create!(context: "", question: "", generated_answers: ["A. ", "B. ", "C. ", "D. "], correct_answer: "", user_answer: "", test: n4reading)
Question.create!(context: "", question: "", generated_answers: ["A. ", "B. ", "C. ", "D. "], correct_answer: "", user_answer: "", test: n4reading)
Question.create!(context: "", question: "", generated_answers: ["A. ", "B. ", "C. ", "D. "], correct_answer: "", user_answer: "", test: n4reading)
Question.create!(context: "", question: "", generated_answers: ["A. ", "B. ", "C. ", "D. "], correct_answer: "", user_answer: "", test: n4reading)
puts "N4 Reading Test complete and unanswered!"

# No N4 Reading test yet!

puts "Making a N3 Vocabulary Test"
n3vocab = Test.create!(title: "N3 Vocabulary Test", category: "Vocabulary", user: testtaro)
Question.create!(question: "___な資金は、安定した経営、さらに事業拡大できるチャンスにつながります",
  generated_answers:["A. 豊富", "B. 贅沢", "C. 幸福", "D. 多量"],
  correct_answer: "A. 豊富", user_answer: "", test: n3vocab)
Question.create!(question: "受話器を置いた大統領は、前進する__ができていた。",
  generated_answers:["A. 覚悟", "B. 感覚", "C. 発覚", "D. 自覚"],
  correct_answer: "A. 覚悟", user_answer: "", test: n3vocab)
Question.create!(question: "僕はすばらしいデザインを見れば元気になるし、___工程のわずかな違いにまでこだわる。",
  generated_answers:["A. 造作", "B. 製造", "C. 創造", "D. 製品"],
  correct_answer: "B. 製造", user_answer: "", test: n3vocab)
Question.create!(question: "彼がここに電話をかけてきたのは単なる___の一致かもしれない。",
  generated_answers:["A.  自然", "B. 天然", "C. 突然", "D. 偶然"],
  correct_answer: "D. 偶然", user_answer: "", test: n3vocab)
Question.create!(question: "私は、外国語を1日で___マスターしたい",
  generated_answers:["A. 完成", "B. 完了", "C. 完全", "D. 完璧"],
  correct_answer: "C. 完全", user_answer: "", test: n3vocab)
puts "N3 Vocabulary Test complete and unanswered!"

puts "Making a N3 Kanji Test"
n3kanji = Test.create!(title: "N3 Kanji Test", category: "Kanji", user: testtaro)
Question.create!(context: "しばらく一緒に仕事をして、彼なら物事を間違いなく進めてくれると信用した。", question: "物事",
  generated_answers:["A. ぶつじ", "B. ぶつごと", "C. ものじ", "D. ものごと"],
  correct_answer: "D. ものごと", user_answer: "", test: n3kanji)
Question.create!(context: "このように複雑な外遊を計画するためには、非常にゆうのうな人々からなるチームが欠かせない。", question: "ゆうのう",
  generated_answers:["A. 有態", "B. 有能", "C. 有熊", "D. 有脂"],
  correct_answer: "B. 有能", user_answer: "", test: n3kanji)
Question.create!(context: "私は「こうしたら絶対に良くなる」と分かっていることを見過ごせない性格ですが、会社に勤めていたのでは実行に移せないと思い、２３歳の時に独立したのです。", question:"実行",
  generated_answers:["A. じっこ", "B. じっこう", "C. じつぎょ", "D. じつぎょう"],
  correct_answer: "B. じっこう", user_answer: "", test: n3kanji)
Question.create!(context: "中国の沿海部の都市は次第に世界経済の原動力にもなりつつあり、過去３０年間に農村から４億人を吸収した。そうした年のエネルギーじゅようは３０年までに２倍に膨れ上がる見通しだ。", question:"じゅよう",
  generated_answers:["A. 需腰", "B. 儒腰", "C. 儒要", "D. 需要"],
  correct_answer: "D. 需要", user_answer: "", test: n3kanji)
Question.create!(context: "強調する方法は、「声を大きくする」ことだけではありません。例えば。ゆっくり読んだり、前後に大きな間を取ったりして「強調」することもできます。", question: "強調",
  generated_answers:["A. ごうちょう", "B. こうちょう", "C. きょちょう", "D. きょうちょう"],
  correct_answer: "D. きょうちょう", user_answer: "", test: n3kanji)
puts "N3 Kanji Test complete and unanswered!"

puts "Making a N3 Grammar Test"
n3grammar = Test.create!(title: "N3 Grammar Test", category: "Grammar", user: testtaro)
Question.create!(question: "二度とあの部屋に入らないと約束しろ___言われたけど、僕は約束しなかった",
  generated_answers:["A. を", "B. って", "C. のを", "D. だ"],
  correct_answer: "B. って", user_answer: "", test: n3grammar)
Question.create!(question: "私は何百回もこの手紙を読み返した。そして読み返す___たまらなく哀しい気持になった。",
  generated_answers:["A. うちに", "B. はじめに", "C. たびに", "D. だけに"],
  correct_answer: "C. たびに", user_answer: "", test: n3grammar)
Question.create!(question: "本を読んでいたら、___5時間も経ってしまった",
  generated_answers:["A. そろそろ", "B. だんだん", "C. ようやく", "D. いつの間にか"],
  correct_answer: "D. いつの間にか", user_answer: "", test: n3grammar)
Question.create!(question: "ふたりはそれから30年あまり、死がふたりを分かつまで幸せな結婚生活を送る___。",
  generated_answers:["A. ことだ", "B. ことになった", "C. ことにした", "D. ようになった"],
  correct_answer: "B. ことになった", user_answer: "", test: n3grammar)
Question.create!(question: "彼女が蛇口をあけ、僕の傷ついた前腕を氷___冷たい水の下へ導いた。",
  generated_answers:["A. のように", "B. みたいに", "C. のときに", "D. そうに"],
  correct_answer: "A. のように", user_answer: "", test: n3grammar)
puts "N3 Grammar Test complete and unanswered!"

puts "Making a N2 Vocabulary Test"
n2vocab = Test.create!(title: "N2 Vocabulary Test", category: "Vocabulary", user: testtaro)
Question.create!(question: "若い大統領には経験不足という___がある。",
  generated_answers:["A. 弱点", "B. 過失", "C. 飢饉", "D. 落第"],
  correct_answer: "A. 弱点", user_answer: "", test: n2vocab)
Question.create!(question: "ここの研究___の多くは古代言語で記された文章を含んでいる。",
  generated_answers:["A. 給料", "B. 資料", "C. 送料", "D. 原料"],
  correct_answer: "B. 資料", user_answer: "", test: n2vocab)
Question.create!(question: "___されている象牙の在庫が底を突いた後、大量生産ができなければ、密猟業者が参入してくる。",
  generated_answers:["A. 持続", "B. 維持", "C. 貯蔵", "D. 整備"],
  correct_answer: "C. 貯蔵", user_answer: "", test: n2vocab)
Question.create!(question: "象牙の売却許可が発表された___、密猟は66%、密売は71%増加したとされる。",
  generated_answers:["A. 直接", "B. 直通", "C. 直線", "D.  直後"],
  correct_answer: "A. 直接", user_answer: "", test: n2vocab)
Question.create!(question: "彼は高校の転入___もすでにすませていて、車を買うのにも協力してくれた。",
  generated_answers:["A. 手続", "B. 配置", "C. 処理", "D. 作業"],
  correct_answer: "A. 手続", user_answer: "", test: n2vocab)
puts "N2 Vocabulary Test complete and unanswered!"

puts "Making a N2 Kanji Test"
n2kanji = Test.create!(title: "N2 Kanji Test", category: "Kanji", user: testtaro)
Question.create!(context: "語義だけでなく、内容についてさまざまな角度から調べ、理解することが必要です。", question: "角度",
  generated_answers:["A. かくど", "B. かくたび", "C. すみど", "D. すみたび"],
  correct_answer: "A. かくど", user_answer: "", test: n2kanji)
Question.create!(context: "大原さんは、検診で「問題なし」とされた半年後に体調を壊し、病院でがんとしんだんされ１年で亡くなりました。", question:"しんだん",
  generated_answers:["A. 診断", "B. 珍断", "C. 修断", "D. 惨断"],
  correct_answer: "A. 診断", user_answer: "", test: n2kanji)
Question.create!(context: "あるキーワードで検索すると、古い記事ばかりヒットしてしまい、有益な情報が得られないということも少なくない。そんな場合は、期間を指定して検索してみよう。", question:"指定",
  generated_answers:["A. じてい", "B. じってい", "C. してい", "D. しってい"],
  correct_answer: "C. してい", user_answer: "", test: n2kanji)
Question.create!(context: "遺伝子レベルでがんの可能性を発見して、経過観察も含めた治療を開始してとうけいをとれば、１０年生存率も飛躍的に上がります。その治療に意味があるかは言うまでもありません。", question:"とうけい",
  generated_answers:["A. 結計", "B. 絡計", "C. 絞計", "D. 統計"],
  correct_answer: "D. 統計", user_answer: "", test: n2kanji)
Question.create!(context: "天気予報によれば、来週の日本列島は、全国的に晴天が続くそうです。", question:"列島",
  generated_answers:["A. れいしま", "B. れっとう", "C. れいとう", "D. れっしま"],
  correct_answer: "B. れっとう", user_answer: "", test: n2kanji)
puts "N2 Kanji Test complete and unanswered!"

puts "Making a N2 Grammar Test"
n2grammar = Test.create!(title: "N2 Grammar Test", category: "Grammar", user: testtaro)
Question.create!(question: "米国の心理学者によると、新しい環境に慣れるのに20歳い平均6か月、30歳で1年、40歳では3年かかるが、19歳以下だと3か月___そうです。つまり、若ければ若いほど早いと言えそうです。",
  generated_answers:["A. もかかる", "B. しかかからない", "C. は必要だ", "D. では十分でない"],
  correct_answer: "B. しかかからない", user_answer: "", test: n2grammar)
Question.create!(question: "中村さんとは長時間にわたって協議した。その結果、昨夜の私の見聞に___一つの戦略をたてることになった。",
  generated_answers:["A. 限って", "B. 反して", "C. 対して", "D. 基づいて"],
  correct_answer: "D. 基づいて", user_answer: "", test: n2grammar)
Question.create!(question: "彼はいまこの時にも、戦場で___かけているかもしれない。",
  generated_answers:["A. 死", "B. 死ね", "C. 死ぬ", "D. 死に"],
  correct_answer: "D. 死に", user_answer: "", test: n2grammar)
Question.create!(question: "これはシンプルで___純粋で魅力的なスピーチです。",
  generated_answers:["A. あってながら", "B. あるながら", "C. ありながら", "D. ありながらも"],
  correct_answer: "C. ありながら", user_answer: "", test: n2grammar)
Question.create!(question: "私たち、これから出発するところでさ。今妻が荷造りの___だ。",
  generated_answers:["A. 中", "B. 際", "C. 最中", "D. うち"],
  correct_answer: "C. 最中", user_answer: "", test: n2grammar)
puts "N2 Grammar Test complete and unanswered!"

puts "Making a N1 Vocabulary Test"
n1vocab = Test.create!(title: "N1 Vocabulary Test", category: "Vocabulary", user: testtaro)
Question.create!(question: "ケネディ殺害の容疑者は___に謎を残したままマフィアに撃たれて死亡した。",
  generated_answers:["A. 動機", "B. 本音", "C. 動力", "D. 下心"],
  correct_answer: "A. 動機", user_answer: "", test: n1vocab)
Question.create!(question: "いつ見つけても___の早いがんでは予後が悪く、遅いがんは予後がいい。早くても遅くても意味はないのです。",
  generated_answers:["A. 先進", "B. 増進", "C. 進出", "D. 進行"],
  correct_answer: "D. 進行", user_answer: "", test: n1vocab)
Question.create!(question: "インターネット広告___と広告の効果の関係について考えてみよう。",
  generated_answers:["A. 値", "B. 費", "C. 料", "D. 額"],
  correct_answer: "B. 費", user_answer: "", test: n1vocab)
Question.create!(question: "この数年間で千葉や隣接県では女児連れ去り事件が多発していた。まだ___解決の案件もあるが、未遂に終わり、容疑者が逮捕されたケースもある。",
  generated_answers:["A. 非", "B. 双", "C. 未", "D. 無"],
  correct_answer: "C. 未", user_answer: "", test: n1vocab)
Question.create!(question: "辞書を引いたら、最初に___されている語義だけでなく、すべての語義をざっと確認する習慣を付けましょう。",
  generated_answers:["A. 記載", "B. 援用", "C. 参照", "D. 出典"],
  correct_answer: "A. 記載", user_answer: "", test: n1vocab)
puts "N1 Vocabulary Test complete and unanswered!"

puts "Making a N1 Kanji Test"
n1kanji = Test.create!(title: "N1 Kanji Test", category: "Kanji", user: testtaro)
Question.create!(context:"私は発作性頭位眩暈症という病気の症状に襲われました。", question:"発作",
  generated_answers:["A. はっさ", "B. ほっさ", "C. はっさく", "D. ほっさく"],
  correct_answer: "B. ほっさ", user_answer: "", test: n1kanji)
Question.create!(context: "結婚問題にはもう片がついたが、れんあいのほうはそうはいかなかった。", question: "れんあい",
  generated_answers:["A. 恋窓", "B. 変愛", "C. 恋愛", "D. 変窓"],
  correct_answer: "C. 恋愛", user_answer: "", test: n1kanji)
Question.create!(context: "会社が成長する勢いや、事業をとりまく環境などを詳しく分析することで、大幅な値上がりをする株を探し当てるのは、株の大きな楽しみの一つです。", question:"大幅",
  generated_answers:["A. だいふく", "B. だいはば", "C. おおふく", "D. おおはば"],
  correct_answer: "D. おおはば", user_answer: "", test: n1kanji)
Question.create!(context: "市議会では身近なリサイクル運動を推進しようという提案を採択した。", question:"推進",
  generated_answers:["A. しんしん", "B. せんしん", "C. しょうしん", "D. すいしん"],
  correct_answer: "D. すいしん", user_answer: "", test: n1kanji)
Question.create!(context: "にんしんだから休まなきゃいけないのに、いろいろ予定を詰め込んでいます。", question:"にんしん",
  generated_answers:["A. 妊辱", "B. 妊辰", "C. 妊娠", "D. 妊振"],
  correct_answer: "C. 妊娠", user_answer: "", test: n1kanji)
puts "N1 Kanji Test complete and unanswered!"

puts "Making a N1 Grammar Test"
n1grammar = Test.create!(title: "N1 Grammar Test", category: "Grammar", user: testtaro)
Question.create!(question: "箱の中身、___にしよう。",
  generated_answers:["A. 見ないこと", "B. 見なかったこと", "C. 見ないもの", "D. 見なかったもの"],
  correct_answer: "B. 見なかったこと", user_answer: "", test: n1grammar)
Question.create!(question: "京都___体験をしてみたいです。",
  generated_answers:["A. なり", "B. なくして", "C. ながらに", "D. ならではの"],
  correct_answer: "D. ならではの", user_answer: "", test: n1grammar)
Question.create!(question: "それは___説得力のある考えだったが、なぜか私は納得しなかった。",
  generated_answers:["A. あえて", "B. まさか", "C. なかなか", "D. かえって"],
  correct_answer: "C. なかなか", user_answer: "", test: n1grammar)
Question.create!(question: "その看板が小さすぎて、よく見なかったら___。",
  generated_answers:["A. 見逃すところだった", "B. 見逃そうとした", "C. 見逃したわけだ", "D. 見逃さなくてはならなかった"],
  correct_answer: "A. 見逃すところだった", user_answer: "", test: n1grammar)
Question.create!(question: "英語が話せなくて道を___聞けない。",
  generated_answers:["A. 聞いては", "B. 聞くには", "C. 聞こうにも", "D. 聞かずとも"],
  correct_answer: "C. 聞こうにも", user_answer: "", test: n1grammar)
puts "N1 Grammar Test complete and unanswered!"

puts "Created #{User.count} User, #{Test.count} Tests, and #{Question.count} Questions"

# Question.create!(question: "___",
#   generated_answers:["A. ", "B. ", "C. ", "D. "],
#   correct_answer: "", user_answer: "", test: n5vocab)


# test1 = Test.create!(title:"Vocab N5 Test", category: "Vocabulary", user:patrick)
# test2 = Test.create!( title: "Unfinished Grammar Test", category:"Grammar", user:patrick)

# 5.times do |x|
#   Question.create!(
#     question: questions.sample,
#     generated_answers: answers,
#     correct_answer: answers.sample,
#     user_answer: answers.sample,
#     test: test1
#   )
# end

# 5.times do |x|
#   Question.create!(
#     question: questions.sample,
#     generated_answers: answers,
#     correct_answer: answers.sample,
#     user_answer: "",
#     test: test2
#   )
# end
