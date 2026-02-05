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
n5vocab = Test.create!(title: "N5 Vocab Test", category: "Vocabulary", user: testtaro, level: "N5")
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
n5kanji = Test.create!(title: "N5 Kanji Test", category: "Kanji", user: testtaro, level: "N5")
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
n5grammar = Test.create!(title: "N5 Grammar Test", category: "Grammar", user: testtaro, level: "N5")
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

puts "Making a N5 Reading Test"
n5reading = Test.create!(title:"N5 Reading Test", category: "Reading", user: testtaro, level: "N5")
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
n4vocabulary = Test.create!(title: "N4 Vocabulary Test", category: "Vocabulary", user: testtaro, level: "N4")
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
n4kanji = Test.create!(title: "N4 Kanji Test", category: "Kanji", user: testtaro, level: "N4")
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
n4grammar = Test.create!(title: "N4 Grammar Test", category: "Grammar", user: testtaro, level: "N4")
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
n4reading = Test.create!(title: "N4 Reading Test", category: "Reading", user: testtaro, level: "N4")
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
  question: " [ 2 ] には何を入れますか。",
  generated_answers: ["A. そう思いませんね。", "B. そう思うでしょう。", "C. そう思いましょうか。", "D. そう思っていませんよ。"],
  correct_answer: "B. そう思うでしょう。", user_answer: "", test: n4reading)
Question.create!(context: "（じょんさんはたけしくんの中学校で英語を教えていました。つぎのぶんはじょうんさんからたけしくんへのメ－ルです。）
  たけしくん
  メ－ル、ありがとう。前のメ－ルに「英語の勉強はつまらない」と書いてありましたが。まず好きなことから始めたらどうですか。
  ぼくが日本語の勉強を始めたのは中学１年のときです。友だちの家ではじめて日本のまんがを見ました。そのときは日本語がぜんぜんわからなかったのですが、えがあるから話はだいたいわかりました。日本語で読めるようになりたいと思って、自分で勉強を始めました。かんじは、むずかしかったですが、まんがを何さつも読んでいたら、かんたんなかんじはおぼえていました。
  まんがはよくないと言う人もいますが、どんなものにもいいものと悪いものがあると思います。だから、まんがもえらんで読めばいいと思います。人をいじめるようなまんがはよくないですが、サッカ－やバスケットボ－ルなどスポ－ツのまんがはおもしろいし、読むと元気になります。
  たけしくんは、何かきょうみがありますか。音楽ですか、映画ですか。（　　　　）
  じゃ、またメ－ルします。",
  question: "ジョンさんが日本語の勉強を始めたのはどうしてですか。",
  generated_answers: ["A. 漢字をたくさんおぼえたかったから", "B. 日本語でまんがを読みたいと思ったから", "C. 友だちに日本のまんがをもらったから", "D. 日本のまんががぜんぜんわからなかったから"],
  correct_answer: "B. 日本語でまんがを読みたいと思ったから", user_answer: "", test: n4reading)
Question.create!(context: "（じょんさんはたけしくんの中学校で英語を教えていました。つぎのぶんはじょうんさんからたけしくんへのメ－ルです。）
  たけしくん
  メ－ル、ありがとう。前のメ－ルに「英語の勉強はつまらない」と書いてありましたが。まず好きなことから始めたらどうですか。
  ぼくが日本語の勉強を始めたのは中学１年のときです。友だちの家ではじめて日本のまんがを見ました。そのときは日本語がぜんぜんわからなかったのですが、えがあるから話はだいたいわかりました。日本語で読めるようになりたいと思って、自分で勉強を始めました。かんじは、むずかしかったですが、まんがを何さつも読んでいたら、かんたんなかんじはおぼえていました。
  まんがはよくないと言う人もいますが、どんなものにもいいものと悪いものがあると思います。だから、まんがもえらんで読めばいいと思います。人をいじめるようなまんがはよくないですが、サッカ－やバスケットボ－ルなどスポ－ツのまんがはおもしろいし、読むと元気になります。
  たけしくんは、何かきょうみがありますか。音楽ですか、映画ですか。（　　　　）
  じゃ、またメ－ルします。",
  question: "ジョンさんはまんがについてどう思っていますか。",
  generated_answers: ["A. 日本語の勉強のためにどんなまんがでも読んだほうがいい。", "B. サッカ－やバスケットボ－ルのまんが以外は読んではいけない。", "C. いろいろなまんががあるので、いいものだけえらんで読んだらいい。", "D. まんがばかり読むと人をいじめるようになるので、読まないほうがいい。"],
  correct_answer: "C. いろいろなまんががあるので、いいものだけえらんで読んだらいい。", user_answer: "", test: n4reading)
Question.create!(context: "（じょんさんはたけしくんの中学校で英語を教えていました。つぎのぶんはじょうんさんからたけしくんへのメ－ルです。）
  たけしくん
  メ－ル、ありがとう。前のメ－ルに「英語の勉強はつまらない」と書いてありましたが。まず好きなことから始めたらどうですか。
  ぼくが日本語の勉強を始めたのは中学１年のときです。友だちの家ではじめて日本のまんがを見ました。そのときは日本語がぜんぜんわからなかったのですが、えがあるから話はだいたいわかりました。日本語で読めるようになりたいと思って、自分で勉強を始めました。かんじは、むずかしかったですが、まんがを何さつも読んでいたら、かんたんなかんじはおぼえていました。
  まんがはよくないと言う人もいますが、どんなものにもいいものと悪いものがあると思います。だから、まんがもえらんで読めばいいと思います。人をいじめるようなまんがはよくないですが、サッカ－やバスケットボ－ルなどスポ－ツのまんがはおもしろいし、読むと元気になります。
  たけしくんは、何かきょうみがありますか。音楽ですか、映画ですか。（　　　　）
  じゃ、またメ－ルします。",
  question: "（　　　）には何を入れますか。",
  generated_answers: ["A. 映画がきらいでも、毎日見ればわかるようになりますよ。", "B. 日本語のまんがを読めば、漢字がおぼえられるようになりますよ。", "C. 毎日れんしゅうすれば、サッカ－やバスケットボ－ルがじょうずになりますよ。", "D. 英語を使って好きなことをすれば、勉強が楽しくなりますよ。"],
  correct_answer: "D. 英語を使って好きなことをすれば、勉強が楽しくなりますよ。", user_answer: "", test: n4reading)
puts "N4 Reading Test complete and unanswered!"

# ---------------------------N4 ^----------------------------------------------------

puts "Making a N3 Vocabulary Test"
n3vocab = Test.create!(title: "N3 Vocabulary Test", category: "Vocabulary", user: testtaro, level: "N3")
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
n3kanji = Test.create!(title: "N3 Kanji Test", category: "Kanji", user: testtaro, level: "N3")
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
n3grammar = Test.create!(title: "N3 Grammar Test", category: "Grammar", user: testtaro, level: "N3")
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

puts "Making a N3 Reading Test"
n3reading = Test.create!(title: "N3 Reading Test", category: "Reading", user: testtaro, level: "N3")
Question.create!(context: "先日、友人を訪ねて岐阜に行きました。待ち合わせの時間まで少し時間があったので古い和傘の店があったので入ってみると、「いらっしゃいませ」と元気な声で店の主人が迎えてくれました。
  和傘作りは江戸時代から続く技術で、明治時代まではどこの町にも必ず1人や2人職人（注）がいたそうです。しかし、日本に西洋文化が入ってくると、今私たちが日頃使っているような、作るのも簡単で値段も安い洋傘がいっきに全国に広まりました。
  年の79歳になる主人の加藤さんはいま、各県に1人か2人いるかいないかという和傘職人（注）の1人です。和傘づくりをやめようと思ったことがあります。そんなある日、たまたま店の前を通りかかった外国のお客さんが「和傘は日本人の性格をとてもよくあらわしているね」と言ったのを聞いて、(1)「ああ、やめちゃだめだ」と、考え直したそうです。
  加藤さんは、「まだまだ元気だから、あと10年は大丈夫。」と笑顔を見せてくれましたが、わたしはとてもさびしい気持ちになりました。
  （注）職人：身につけた技術によって物を作り出したりする職業の人。",
  question:"どうして明治時代以降、洋傘は全国に広まりましたか。",
  generated_answers: ["A. 和傘より質がよいし、もっと丈夫だし", "B. 和傘より値段が安いし、作り方も簡単だし", "C. 和傘より材料が高級だし、作り方も簡単だし", "D. 和傘よりデザインがいいし、美しく見えるし"],
  correct_answer: "B. 和傘より値段が安いし、作り方も簡単だし", user_answer: "", test: n3reading)
Question.create!(context: "先日、友人を訪ねて岐阜に行きました。待ち合わせの時間まで少し時間があったので古い和傘の店があったので入ってみると、「いらっしゃいませ」と元気な声で店の主人が迎えてくれました。
  和傘作りは江戸時代から続く技術で、明治時代まではどこの町にも必ず1人や2人職人（注）がいたそうです。しかし、日本に西洋文化が入ってくると、今私たちが日頃使っているような、作るのも簡単で値段も安い洋傘がいっきに全国に広まりました。
  年の79歳になる主人の加藤さんはいま、各県に1人か2人いるかいないかという和傘職人（注）の1人です。和傘づくりをやめようと思ったことがあります。そんなある日、たまたま店の前を通りかかった外国のお客さんが「和傘は日本人の性格をとてもよくあらわしているね」と言ったのを聞いて、(1)「ああ、やめちゃだめだ」と、考え直したそうです。
  加藤さんは、「まだまだ元気だから、あと10年は大丈夫。」と笑顔を見せてくれましたが、わたしはとてもさびしい気持ちになりました。
  （注）職人：身につけた技術によって物を作り出したりする職業の人。",
  question:"(1) 「ああ、やめちゃだめだ」と、考え直したとあるが、その理由は何か。",
  generated_answers: ["A. 日本では和傘職人は1人か2人しか残らないから", "B. 和傘の好きな外国人がどんどん増えてきたから", "C. 和傘作りの必要な技術はあまり高くないから", "D. 和傘作りの伝統を守り続けたいと思うから"],
  correct_answer: "D. 和傘作りの伝統を守り続けたいと思うから", user_answer: "", test: n3reading)
Question.create!(context: "先日、友人を訪ねて岐阜に行きました。待ち合わせの時間まで少し時間があったので古い和傘の店があったので入ってみると、「いらっしゃいませ」と元気な声で店の主人が迎えてくれました。
  和傘作りは江戸時代から続く技術で、明治時代まではどこの町にも必ず1人や2人職人（注）がいたそうです。しかし、日本に西洋文化が入ってくると、今私たちが日頃使っているような、作るのも簡単で値段も安い洋傘がいっきに全国に広まりました。
  年の79歳になる主人の加藤さんはいま、各県に1人か2人いるかいないかという和傘職人（注）の1人です。和傘づくりをやめようと思ったことがあります。そんなある日、たまたま店の前を通りかかった外国のお客さんが「和傘は日本人の性格をとてもよくあらわしているね」と言ったのを聞いて、(1)「ああ、やめちゃだめだ」と、考え直したそうです。
  加藤さんは、「まだまだ元気だから、あと10年は大丈夫。」と笑顔を見せてくれましたが、わたしはとてもさびしい気持ちになりました。
  （注）職人：身につけた技術によって物を作り出したりする職業の人。",
  question:"本文と合っているものはどれか。",
  generated_answers: ["A. 和傘作りの伝統を守るのは大切だが、難しいことだ。", "B. 和傘作りの職人はたくさんいるが、一人前のは少ない。", "C. 職人の加藤さんが和傘作りを続けるのは幸い。", "D. 職人の加藤さんは和傘作りの伝統を守るのに自信がある。"],
  correct_answer: "A. 和傘作りの伝統を守るのは大切だが、難しいことだ。", user_answer: "", test: n3reading)
Question.create!(context: "フランスのパリでは犬を飼っている人が多いが、散歩につれていく犬がアパートの玄関を出たところでフンをしても、それをかたづける人はだれもいないと、パリに長く住んでいる日本人が書いています。東京の住宅地を歩いていると、私がよく見る犬の散歩には、わりばし注１と紙袋を持っている人が多いので、フンで道路を汚すことを悪いと考えている人は[1]日本のほうが多いのではないかと思います。フランスでは犬を散歩させる人がフンをかたづけるのは、掃除をする人の仕事をとってしまうのだというのが[2]ふつうの考えのように思えるからです。
  しかし、その考えはおかしいと思います。町の中で犬をつれて歩くには、町の美しさを守るという気持ちが必要なのではないでしょうか。なぜかそう思ったかというと、「パリの歩道には犬のフンがとても多く、それをかたづけるためには年間7000万フラン注２（約１２億円）かかる」という新聞記事を読んだからです。そのお金はだれが出しているのでしょうか。
  （注１）わりばし：使うときに二つに割るはし。
  （注２）フラン：フランス・ベルギーなどの旧通貨単位。",
  question:"何が[1]日本のほうが多いのか。",
  generated_answers: ["A. 犬を散歩につれていく人", "B. 犬のフンをかたづけようとしない人", "C. わりばしと紙袋を持っている人", "D. フンで道を汚すことを悪いと考えている人"],
  correct_answer: "D. フンで道を汚すことを悪いと考えている人", user_answer: "", test: n3reading)
Question.create!(context: "フランスのパリでは犬を飼っている人が多いが、散歩につれていく犬がアパートの玄関を出たところでフンをしても、それをかたづける人はだれもいないと、パリに長く住んでいる日本人が書いています。東京の住宅地を歩いていると、私がよく見る犬の散歩には、わりばし注１と紙袋を持っている人が多いので、フンで道路を汚すことを悪いと考えている人は[1]日本のほうが多いのではないかと思います。フランスでは犬を散歩させる人がフンをかたづけるのは、掃除をする人の仕事をとってしまうのだというのが[2]ふつうの考えのように思えるからです。
  しかし、その考えはおかしいと思います。町の中で犬をつれて歩くには、町の美しさを守るという気持ちが必要なのではないでしょうか。なぜかそう思ったかというと、「パリの歩道には犬のフンがとても多く、それをかたづけるためには年間7000万フラン注２（約１２億円）かかる」という新聞記事を読んだからです。そのお金はだれが出しているのでしょうか。
  （注１）わりばし：使うときに二つに割るはし。
  （注２）フラン：フランス・ベルギーなどの旧通貨単位。",
  question:"[2] ふつうの考えとは、ここではどんな考えか。",
  generated_answers: ["A. フンで道路を汚すことを悪いと考える必要はない", "B. 犬を散歩させる人が犬のフンをかたづける必要はない", "C. 掃除をする人が町の美しさを守る必要はない", "D. フンをかたづけるのはお金がかかると考える必要はない"],
  correct_answer: "B. 犬を散歩させる人が犬のフンをかたづける必要はない", user_answer: "", test: n3reading)
puts "N3 Reading Test complete and unanswered!"

# ---------------------------N3 ^----------------------------------------------------

puts "Making a N2 Vocabulary Test"
n2vocab = Test.create!(title: "N2 Vocabulary Test", category: "Vocabulary", user: testtaro, level: "N2")
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
n2kanji = Test.create!(title: "N2 Kanji Test", category: "Kanji", user: testtaro, level: "N2")
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
n2grammar = Test.create!(title: "N2 Grammar Test", category: "Grammar", user: testtaro, level: "N2")
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

puts "Making a N2 Reading Test"
n2reading = Test.create!(title: "N2 Reading Test", category: "Reading", user: testtaro, level: "N2")
Question.create!(context: "現代は、(1) 時間がどんどん加速されているとも言われます。何事にも「早く、早く」とせかされ（注１）、時間と競争するかのように忙しさに追われていることを、大人たちはこういう言い方をしているのです。いつも同じ速さで時間が流れているはずなのに、時間の間隔（かんかく）が短くなったような気分で追い立てられて（注２）いるためでしょう。それをエンデ（注３）は『モモ』という作品の中で「時間どろぼう」と呼びました。ゆっくり花を見たり音楽を楽しんだりする、そんなゆったりした時間が盗まれていく、という話でした。(2)
  いつも何かしていないと気が落ち着かない、現代人はそんなふうになっています。
  その一つの原因は、世の中が便利になり、能率的になって、より早く仕事を仕上げることがより優れていると評価されるようになっているためと思われます。競争が激しくなって、人より早くしなければ負けてしまうという恐れを心に抱くようになったためでしょう。「時間は金なり」となってしまったのです。
  しかし、それでは心が貧しくなってしまいそうです。何も考えずにひたすら決められたことをしていて人生が楽しいはずがありません。ゆっくり歩むからこそ、道ばたに咲く花に気づいたり、きれいな夕日を楽しむ気分になれるのです。私たちは、時間を取り返し、もっとゆったりした時間を生きる必要がありそうですね。
  （池内了『時間とは何か』による）",
  question:"時間がどんどん加速されているとはどういうことか。",
  generated_answers: ["A. しなければならないことが多くて時間が短く感じられる。", "B. 何かに夢中になっていると一日の時間が短く感じられる。", "C. 作業能率が上がって一日の仕事の時間が短くなっている。", "D. 技術の進歩によって仕事にかかる時間が短くなっている。"],
  correct_answer: "A. しなければならないことが多くて時間が短く感じられる。", user_answer: "", test: n2reading)
Question.create!(context: "現代は、(1) 時間がどんどん加速されているとも言われます。何事にも「早く、早く」とせかされ（注１）、時間と競争するかのように忙しさに追われていることを、大人たちはこういう言い方をしているのです。いつも同じ速さで時間が流れているはずなのに、時間の間隔（かんかく）が短くなったような気分で追い立てられて（注２）いるためでしょう。それをエンデ（注３）は『モモ』という作品の中で「時間どろぼう」と呼びました。ゆっくり花を見たり音楽を楽しんだりする、そんなゆったりした時間が盗まれていく、という話でした。(2)
  いつも何かしていないと気が落ち着かない、現代人はそんなふうになっています。
  その一つの原因は、世の中が便利になり、能率的になって、より早く仕事を仕上げることがより優れていると評価されるようになっているためと思われます。競争が激しくなって、人より早くしなければ負けてしまうという恐れを心に抱くようになったためでしょう。「時間は金なり」となってしまったのです。
  しかし、それでは心が貧しくなってしまいそうです。何も考えずにひたすら決められたことをしていて人生が楽しいはずがありません。ゆっくり歩むからこそ、道ばたに咲く花に気づいたり、きれいな夕日を楽しむ気分になれるのです。私たちは、時間を取り返し、もっとゆったりした時間を生きる必要がありそうですね。
  （池内了『時間とは何か』による）",
  question:"いつも何かしていないと気が落ち着かない原因を筆者はどう考えているか。",
  generated_answers: ["A. 何もしないと心が貧しくなってしまうと感じること", "B. 早く何かを仕上げないと他の人に勝てないと思うこと", "C. 失った時間を取り戻さないと競争に負けてしまうと思うこと", "D. 奪（うば）われた時間を取り戻さないと人生を楽しめないと感じること"],
  correct_answer: "B. 早く何かを仕上げないと他の人に勝てないと思うこと", user_answer: "", test: n2reading)
Question.create!(context: "現代は、(1) 時間がどんどん加速されているとも言われます。何事にも「早く、早く」とせかされ（注１）、時間と競争するかのように忙しさに追われていることを、大人たちはこういう言い方をしているのです。いつも同じ速さで時間が流れているはずなのに、時間の間隔（かんかく）が短くなったような気分で追い立てられて（注２）いるためでしょう。それをエンデ（注３）は『モモ』という作品の中で「時間どろぼう」と呼びました。ゆっくり花を見たり音楽を楽しんだりする、そんなゆったりした時間が盗まれていく、という話でした。(2)
  いつも何かしていないと気が落ち着かない、現代人はそんなふうになっています。
  その一つの原因は、世の中が便利になり、能率的になって、より早く仕事を仕上げることがより優れていると評価されるようになっているためと思われます。競争が激しくなって、人より早くしなければ負けてしまうという恐れを心に抱くようになったためでしょう。「時間は金なり」となってしまったのです。
  しかし、それでは心が貧しくなってしまいそうです。何も考えずにひたすら決められたことをしていて人生が楽しいはずがありません。ゆっくり歩むからこそ、道ばたに咲く花に気づいたり、きれいな夕日を楽しむ気分になれるのです。私たちは、時間を取り返し、もっとゆったりした時間を生きる必要がありそうですね。
  （池内了『時間とは何か』による）",
  question:"筆者は、時間の使い方についてどのように考えているか。",
  generated_answers: ["A. 時間は貴重なので、休むときにも能率的に過ごしたほうがよい。", "B. 忙しい中にも、のんびり過ごす時間をできるだけ持ったほうがよい。", "C. 人生を楽しむためには、ひたすらゆっくり時間を過ごしたほうがよい。", "D. 人との競争に勝つためには、時間をもっと有効に使うようにしたほうがよい。"],
  correct_answer: "B. 忙しい中にも、のんびり過ごす時間をできるだけ持ったほうがよい。", user_answer: "", test: n2reading)
Question.create!(context: "練習のための練習”が行われているというチームがたくさんあります。練習は本番（ほんばん）の試合のために存在すべきものです。本番で最高の実力を発揮（はっき）させるためにすることを、練習と呼びます。すなわち、休養することが試合にとって、今、最もするべきことだとすれば、休養こそ勝つための練習といえるときがあるのです。休養はサボることではなく、時として練習なのです。",
  question:"筆者は、試合で実力を出すために何が大事だと述べているか。",
  generated_answers: ["A. 練習のための練習”をすること", "B. 練習でも最高の力を出すこと", "C. 必要であれば休養を取ること", "D. 試合の前に休養を取ること"],
  correct_answer: "C. 必要であれば休養を取ること", user_answer: "", test: n2reading)
Question.create!(context: "会社勤めの生活は楽だった。
  楽しくはないが、楽だった。
  ずっと一人で生きてきた後で、集団に入ってみると、その居心地（いごこち）の良さ、安楽さに驚くのである。一人の時は、朝目覚めて寝るまで「何をすべきか」という判断、決定を自分でしなければならない。つまり、それを「自由」というのだが、実力のない者には自由は重すぎる。一日中、選択（せんたく）と決断をし、その結果を自分一人でひき受けねばならない。",
  question:"筆者によると、なぜ会社勤めが楽だったのか。",
  generated_answers: ["A. 実力があれば、自由にできる部分もあるから", "B. 周囲の協力が得られれば、時間を自由に使えるから", "C. 自分の能力に適した仕事が与えられ無理がないから", "D. 自分一人で決めることも責任を取ることもしなくてすむから"],
  correct_answer: "D. 自分一人で決めることも責任を取ることもしなくてすむから", user_answer: "", test: n2reading)
puts "N2 Reading Test complete and unanswered!"

# ---------------------------N2 ^----------------------------------------------------

puts "Making a N1 Vocabulary Test"
n1vocab = Test.create!(title: "N1 Vocabulary Test", category: "Vocabulary", user: testtaro, level: "N1")
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
n1kanji = Test.create!(title: "N1 Kanji Test", category: "Kanji", user: testtaro, level: "N1")
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
n1grammar = Test.create!(title: "N1 Grammar Test", category: "Grammar", user: testtaro, level: "N1")
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

puts "Making a N1 Reading Test"
n1reading = Test.create!(title: "N1 Reading Test", category: "Reading", user: testtaro, level: "N1")
Question.create!(context: "人生というものには、いろいろな問題があります。しかし、それらのことも過ぎ去ってみると、あのときに迷わないでやってほんとうによかったな、というような場合が多いのです。そこが大事なところだと思います。ある場合には迷うこともあるでしょう。しかし、しょせん迷ってもお互い自分の知恵裁量というものは、ほんとうは小さいものです。だから、「これはもう仕方がない。ここまでできたのだからこれ以上進んで結果がうまくいかなくても、それは運命だ」と度胸を決めてしまう。そうした場合には、案外、困難だと思っていたことがスムーズにいって、むしろ非常によい結果を生む、ということにもなるのではないかと思うのです。",
  question:"筆者がここで最も言いたいことは何か。",
  generated_answers: ["A. うまくいかない場合は一人で迷うより、みんなの知恵を借りたほうがいい。", "B. 人生においてしかたないとあきらめることもいい結果をもたらす場合がある。", "C. 人生は心の持ちようで以外にうまくいく場合もある。", "D. 難しい問題に遭っても迷わず実践することが大事だ。"],
  correct_answer: "D. 難しい問題に遭っても迷わず実践することが大事だ。", user_answer: "", test: n1reading)
Question.create!(context: "日本人に個性がないということはよく言われていることだけれど、今世界的に、1 週間、或いは年間にどれだけ働くか、ということについて、常識的な申し合わせが行われていることには、私はいつも違和感を覚えている。
  私は毎年、身体障害者の方たちとイスラエルやイタリアなどに旅をしているが､一昨年はシナイ山に登った。盲人も６人、ボランティアの助力を得て頂上を究めた。普段、数十歩しか歩けない車椅子の人にも、頂上への道を少しでも歩いてもらった。障害者にとっての山頂は、決して現実の山の頂きではない。もし普段100 歩しか歩けない障害者が、頑張ってその日に限り、山道を200 歩歩いて力尽きたら、そここそがその人にとっての光栄ある山頂なのである。
  人間が週に何時間働くべきか、ということにも、ひとりひとりの適切な時間があると思う。労働時間を一律に決めなければならない、とするのは専門職ではない、未熟練労働に対する基準としてのみ有効である。未熟練労働者の場合は、時間あたりの労働賃金をできるだけ高くし、それによって労働時間を短縮しようとして当然である。
  しかし、専門職と呼ばれる仕事に従事する人は、労働報酬の時間あたりの金額など、ほとんど問題外だ。私は小説家だが、小説家の仕事も専門職に属するから、ひとつの作品のためにどれだけ時間をかけようと勝手である。短編をほんの2、3 時間で書いてしまうこともあるし、10 年、20 年と資料を集め調べ続けてやっと完成するものもある。ひとつの作品に私がどれだけの時間や労力や調査費をかけようが、昼夜何時間ずつ働こうが、それは私がプロである以上、自由である。
  日本の社会の中には、職場の同僚がお互いに牽制するので、取ってもいいはずの休みも取れない人が確かにかなりいる。小さな会社の社長に頼みこまれると、したくもない残業をしなければならなくなる社員もいる。そうしないと会社が潰れて失職をすることが目にみえているからである。その結果｢過労死｣などということも稀には起きることになる。
  しかし日本人のなかには、仕事が趣味という人も実に多い。ブルーカラーと呼ばれている人たちの中にさえ、どうしたら仕事の能率が上がるか考えている人はざらである。趣味になりかけているものが、たまたま会社の仕事だから、時間が来たら帰らねばならない。それはプロの楽しみを妨げることであって、一種の個人の自由の束縛というものである。
  ただそれほど働きたくない人は仕事をしない自由を完全に守れるように、社会は体制を作り変えるべきである。しかし同時に、一律に休みを取れ、というような社会主義的発想はいくら世界の流行だとはいえ、自由を手にしている人間に対しては個人への干渉であり、非礼である。",
  question:"違和感を覚えているのはなぜか。",
  generated_answers: ["A. 世界的に労働時間が決められているから。", "B. 適切な労働時間は人によって異なるから。", "C. 日本人は時間にきびしいから。", "D. 日本人は働きすぎるから"],
  correct_answer: "B. 適切な労働時間は人によって異なるから。", user_answer: "", test: n1reading)
Question.create!(context: "日本人に個性がないということはよく言われていることだけれど、今世界的に、1 週間、或いは年間にどれだけ働くか、ということについて、常識的な申し合わせが行われていることには、私はいつも違和感を覚えている。
  私は毎年、身体障害者の方たちとイスラエルやイタリアなどに旅をしているが､一昨年はシナイ山に登った。盲人も６人、ボランティアの助力を得て頂上を究めた。普段、数十歩しか歩けない車椅子の人にも、頂上への道を少しでも歩いてもらった。障害者にとっての山頂は、決して現実の山の頂きではない。もし普段100 歩しか歩けない障害者が、頑張ってその日に限り、山道を200 歩歩いて力尽きたら、そここそがその人にとっての光栄ある山頂なのである。
  人間が週に何時間働くべきか、ということにも、ひとりひとりの適切な時間があると思う。労働時間を一律に決めなければならない、とするのは専門職ではない、未熟練労働に対する基準としてのみ有効である。未熟練労働者の場合は、時間あたりの労働賃金をできるだけ高くし、それによって労働時間を短縮しようとして当然である。
  しかし、専門職と呼ばれる仕事に従事する人は、労働報酬の時間あたりの金額など、ほとんど問題外だ。私は小説家だが、小説家の仕事も専門職に属するから、ひとつの作品のためにどれだけ時間をかけようと勝手である。短編をほんの2、3 時間で書いてしまうこともあるし、10 年、20 年と資料を集め調べ続けてやっと完成するものもある。ひとつの作品に私がどれだけの時間や労力や調査費をかけようが、昼夜何時間ずつ働こうが、それは私がプロである以上、自由である。
  日本の社会の中には、職場の同僚がお互いに牽制するので、取ってもいいはずの休みも取れない人が確かにかなりいる。小さな会社の社長に頼みこまれると、したくもない残業をしなければならなくなる社員もいる。そうしないと会社が潰れて失職をすることが目にみえているからである。その結果｢過労死｣などということも稀には起きることになる。
  しかし日本人のなかには、仕事が趣味という人も実に多い。ブルーカラーと呼ばれている人たちの中にさえ、どうしたら仕事の能率が上がるか考えている人はざらである。趣味になりかけているものが、たまたま会社の仕事だから、時間が来たら帰らねばならない。それはプロの楽しみを妨げることであって、一種の個人の自由の束縛というものである。
  ただそれほど働きたくない人は仕事をしない自由を完全に守れるように、社会は体制を作り変えるべきである。しかし同時に、一律に休みを取れ、というような社会主義的発想はいくら世界の流行だとはいえ、自由を手にしている人間に対しては個人への干渉であり、非礼である。",
  question:"筆者は障害者にとっての山頂とはどこだと言っているか。",
  generated_answers: ["A. 現実の山の頂き", "B. シナイ山の山頂", "C. 力尽きたところ", "D. 普段どおりに100歩歩いたところ"],
  correct_answer: "C. 力尽きたところ", user_answer: "", test: n1reading)
Question.create!(context: "日本人に個性がないということはよく言われていることだけれど、今世界的に、1 週間、或いは年間にどれだけ働くか、ということについて、常識的な申し合わせが行われていることには、私はいつも違和感を覚えている。
  私は毎年、身体障害者の方たちとイスラエルやイタリアなどに旅をしているが､一昨年はシナイ山に登った。盲人も６人、ボランティアの助力を得て頂上を究めた。普段、数十歩しか歩けない車椅子の人にも、頂上への道を少しでも歩いてもらった。障害者にとっての山頂は、決して現実の山の頂きではない。もし普段100 歩しか歩けない障害者が、頑張ってその日に限り、山道を200 歩歩いて力尽きたら、そここそがその人にとっての光栄ある山頂なのである。
  人間が週に何時間働くべきか、ということにも、ひとりひとりの適切な時間があると思う。労働時間を一律に決めなければならない、とするのは専門職ではない、未熟練労働に対する基準としてのみ有効である。未熟練労働者の場合は、時間あたりの労働賃金をできるだけ高くし、それによって労働時間を短縮しようとして当然である。
  しかし、専門職と呼ばれる仕事に従事する人は、労働報酬の時間あたりの金額など、ほとんど問題外だ。私は小説家だが、小説家の仕事も専門職に属するから、ひとつの作品のためにどれだけ時間をかけようと勝手である。短編をほんの2、3 時間で書いてしまうこともあるし、10 年、20 年と資料を集め調べ続けてやっと完成するものもある。ひとつの作品に私がどれだけの時間や労力や調査費をかけようが、昼夜何時間ずつ働こうが、それは私がプロである以上、自由である。
  日本の社会の中には、職場の同僚がお互いに牽制するので、取ってもいいはずの休みも取れない人が確かにかなりいる。小さな会社の社長に頼みこまれると、したくもない残業をしなければならなくなる社員もいる。そうしないと会社が潰れて失職をすることが目にみえているからである。その結果｢過労死｣などということも稀には起きることになる。
  しかし日本人のなかには、仕事が趣味という人も実に多い。ブルーカラーと呼ばれている人たちの中にさえ、どうしたら仕事の能率が上がるか考えている人はざらである。趣味になりかけているものが、たまたま会社の仕事だから、時間が来たら帰らねばならない。それはプロの楽しみを妨げることであって、一種の個人の自由の束縛というものである。
  ただそれほど働きたくない人は仕事をしない自由を完全に守れるように、社会は体制を作り変えるべきである。しかし同時に、一律に休みを取れ、というような社会主義的発想はいくら世界の流行だとはいえ、自由を手にしている人間に対しては個人への干渉であり、非礼である。",
  question:"筆者は、プロの楽しみとは何だごと言っているか。",
  generated_answers: ["A. 仕事と趣味を両立させること", "B. 社長に頼みこまれて残業をすること", "C. 専門家として小説を書くこと", "D. 納得した仕事をするために時間をかけること"],
  correct_answer: "D. 納得した仕事をするために時間をかけること", user_answer: "", test: n1reading)
Question.create!(context: "日本人に個性がないということはよく言われていることだけれど、今世界的に、1 週間、或いは年間にどれだけ働くか、ということについて、常識的な申し合わせが行われていることには、私はいつも違和感を覚えている。
  私は毎年、身体障害者の方たちとイスラエルやイタリアなどに旅をしているが､一昨年はシナイ山に登った。盲人も６人、ボランティアの助力を得て頂上を究めた。普段、数十歩しか歩けない車椅子の人にも、頂上への道を少しでも歩いてもらった。障害者にとっての山頂は、決して現実の山の頂きではない。もし普段100 歩しか歩けない障害者が、頑張ってその日に限り、山道を200 歩歩いて力尽きたら、そここそがその人にとっての光栄ある山頂なのである。
  人間が週に何時間働くべきか、ということにも、ひとりひとりの適切な時間があると思う。労働時間を一律に決めなければならない、とするのは専門職ではない、未熟練労働に対する基準としてのみ有効である。未熟練労働者の場合は、時間あたりの労働賃金をできるだけ高くし、それによって労働時間を短縮しようとして当然である。
  しかし、専門職と呼ばれる仕事に従事する人は、労働報酬の時間あたりの金額など、ほとんど問題外だ。私は小説家だが、小説家の仕事も専門職に属するから、ひとつの作品のためにどれだけ時間をかけようと勝手である。短編をほんの2、3 時間で書いてしまうこともあるし、10 年、20 年と資料を集め調べ続けてやっと完成するものもある。ひとつの作品に私がどれだけの時間や労力や調査費をかけようが、昼夜何時間ずつ働こうが、それは私がプロである以上、自由である。
  日本の社会の中には、職場の同僚がお互いに牽制するので、取ってもいいはずの休みも取れない人が確かにかなりいる。小さな会社の社長に頼みこまれると、したくもない残業をしなければならなくなる社員もいる。そうしないと会社が潰れて失職をすることが目にみえているからである。その結果｢過労死｣などということも稀には起きることになる。
  しかし日本人のなかには、仕事が趣味という人も実に多い。ブルーカラーと呼ばれている人たちの中にさえ、どうしたら仕事の能率が上がるか考えている人はざらである。趣味になりかけているものが、たまたま会社の仕事だから、時間が来たら帰らねばならない。それはプロの楽しみを妨げることであって、一種の個人の自由の束縛というものである。
  ただそれほど働きたくない人は仕事をしない自由を完全に守れるように、社会は体制を作り変えるべきである。しかし同時に、一律に休みを取れ、というような社会主義的発想はいくら世界の流行だとはいえ、自由を手にしている人間に対しては個人への干渉であり、非礼である。",
  question:"筆者の考えに合っているものはどれか。",
  generated_answers: ["A. 仕事が趣味の人も、時間がきたら仕事を止めて帰ったほうがよい", "B. 職場の同僚に遠慮せずに、休みはできるだけ取るべきだ", "C. 長時間働くのも、あまり仕事をしないのも、個人の自由だ", "D. 労働時間の短縮は世界の流行だから、日本人ももっと休むべきだ"],
  correct_answer: "C. 長時間働くのも、あまり仕事をしないのも、個人の自由だ", user_answer: "", test: n1reading)
puts "N1 Reading Test complete and unanswered!"

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
