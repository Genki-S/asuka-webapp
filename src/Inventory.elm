module Inventory exposing (generate)

import Item exposing (Item, Kind(..))


generate : Result String (List Item)
generate =
    Ok
        (List.concat [ scrolls, herbs, rings, wands, vases ])


rings : List Item
rings =
    let
        gen name hiragana buyPrice sellPrice =
            Item.new Ring name hiragana buyPrice sellPrice
    in
    [ gen "とうぞくの指輪" "とうぞくのゆびわ" 15000 2500
    , gen "ワナぬけの指輪" "わなぬけのゆびわ" 15000 7500
    , gen "はね返しの指輪" "はねかえしのゆびわ" 20000 8000
    , gen "うけながしの指輪" "うけながしのゆびわ" 20000 10000
    , gen "命の指輪" "いのちのゆびわ" 20000 10000
    , gen "インパスの指輪" "いんぱすのゆびわ" 25000 12500
    , gen "石像よけの指輪" "せきぞうよけのゆびわ" 25000 12500
    , gen "技封じの指輪" "わざふうじのゆびわ" 25000 12500
    , gen "母の形見" "ははのかたみ" 2000 1000
    , gen "メタルリング" "めたるりんぐ" 2000 1000
    , gen "混乱よけの指輪" "こんらんよけのゆびわ" 3000 1500
    , gen "しあわせの指輪" "しあわせのゆびわ" 4000 2000
    , gen "たれ流しの指輪" "たれながしのゆびわ" 4000 2000
    , gen "傷みよけの指輪" "いたみよけのゆびわ" 5000 2500
    , gen "眠らずの指輪" "ねむらずのゆびわ" 5000 2500
    , gen "ハラ守りの指輪" "はらまもりのゆびわ" 5000 2500
    , gen "毒けしの指輪" "どくけしのゆびわ" 5000 2500
    , gen "ちからの指輪" "ちからのゆびわ" 5000 2500
    , gen "通過の指輪" "つうかのゆびわ" 5000 2500
    , gen "爆発の指輪" "ばくはつのゆびわ" 5000 2500
    , gen "まがりの指輪" "まがりのゆびわ" 5000 2500
    , gen "ワナあての指輪" "わなあてのゆびわ" 5000 2500
    , gen "ハラモチの指輪" "はらもちのゆびわ" 5000 2500
    , gen "へた投げの指輪" "へたなげのゆびわ" 5000 2500
    , gen "ミニデーモンの指輪" "みにでーもんのゆびわ" 5000 2500
    , gen "呪いよけの指輪" "のろいよけのゆびわ" 5000 2500
    , gen "ふしぎ投げの指輪" "ふしぎなげのゆびわ" 5000 2500
    , gen "ルーラの指輪" "るーらのゆびわ" 7500 1500
    , gen "遠投の指輪" "えんとうのゆびわ" 7500 3000
    , gen "きれいな指輪" "きれいなゆびわ" 8000 3000
    , gen "透視の指輪" "とうしのゆびわ" 10000 5000
    , gen "回復の指輪" "かいふくのゆびわ" 10000 5000
    , gen "値切りの指輪" "ねぎりのゆびわ" 10000 5000
    , gen "ザメハの指輪" "ざめはのゆびわ" 10000 5000
    , gen "シャドーの指輪" "しゃどーのゆびわ" 10000 5000
    , gen "ハラペコの指輪" "はらぺこのゆびわ" 10000 5000
    , gen "人形よけの指輪" "にんぎょうよけのゆびわ" 10000 5000
    , gen "ドラゴンの指輪" "どらごんのゆびわ" 10000 5000
    , gen "しにがみの指輪" "しにがみのゆびわ" 10000 5000
    , gen "投げ名人の指輪" "なげめいじんのゆびわ" 10000 5000
    , gen "ハラヘラズの指輪" "はらへらずのゆびわ" 15000 1000
    , gen "会心の指輪" "かいしんのゆびわ" 15000 7500
    , gen "まもりの指輪" "まもりのゆびわ" 20000 10000
    , gen "ふつうの指輪" "ふつうのゆびわ" 5000 2500
    , gen "紙一重の指輪" "かみひとえのゆびわ" 10000 5000
    , gen "ファイターリング" "ふぁいたーりんぐ" 10000 5000
    , gen "痛恨の指輪" "つうこんのゆびわ" 15000 7500
    , gen "魔封じの指輪" "まふうじのゆびわ" 25000 12500
    , gen "見切りの指輪" "みきりのゆびわ" 25000 12500
    , gen "黄金の指輪" "おうごんのゆびわ" 25000 12500
    ]


vases : List Item
vases =
    let
        gen name hiragana buyPrice sellPrice =
            Item.new Vase name hiragana buyPrice sellPrice
    in
    [ gen "とじこめの壺" "とじこめのつぼ" 1500 750
    , gen "父のとっくり" "ちちのとっくり" 1500 750
    , gen "魔法の壺" "まほうのつぼ" 10000 2000
    , gen "ふつうの壺" "ふつうのつぼ" 1000 500
    , gen "回復の壺" "かいふくのつぼ" 1000 500
    , gen "水がめ" "みずがめ" 1000 500
    , gen "大砲の壺" "たいほうのつぼ" 1000 500
    , gen "倉庫の壺" "そうこのつぼ" 1000 500
    , gen "われにくい壺" "われにくいつぼ" 1500 750
    , gen "保存の壺" "ほぞんのつぼ" 1500 750
    , gen "インパスの壺" "いんぱすのつぼ" 2000 1200
    , gen "呪いの壺" "のろいのつぼ" 3000 1500
    , gen "祝福の壺" "しゅくふくのつぼ" 3000 1500
    , gen "ワープの壺" "わーぷのつぼ" 3000 1500
    , gen "合成の壺" "ごうせいのつぼ" 3000 1500
    , gen "まものの壺" "まもののつぼ" 3000 1500
    , gen "火薬壺" "かやくつぼ" 4000 2000
    , gen "すいこみの壺" "すいこみのつぼ" 5000 1500
    , gen "へんげの壺" "へんげのつぼ" 5000 1500
    , gen "草の神の壺" "くさのかみのつぼ" 5000 2000
    , gen "黄金の壺" "おうごんのつぼ" 10000 2000
    , gen "うそつきの壺" "うそつきのつぼ" 10000 2000
    ]


wands : List Item
wands =
    let
        gen name hiragana buyPrice sellPrice =
            Item.new Wand name hiragana buyPrice sellPrice
    in
    [ gen "トンネルの杖" "とんねるのつえ" 500 200
    , gen "ホイミの杖" "ほいみのつえ" 500 250
    , gen "火柱の杖" "ひばしらのつえ" 800 400
    , gen "とびつきの杖" "とびつきのつえ" 800 400
    , gen "レミーラの杖" "れみーらのつえ" 800 400
    , gen "バシルーラの杖" "ばしるーらのつえ" 800 400
    , gen "いかずちの杖" "いかずちのつえ" 800 400
    , gen "場所替えの杖" "ばしょがえのつえ" 800 400
    , gen "氷柱の杖" "つららのつえ" 800 400
    , gen "砂柱の杖" "すなばしらのつえ" 800 400
    , gen "風の杖" "かぜのつえ" 800 400
    , gen "木彫りのバット" "きぼりのばっと" 1000 500
    , gen "一時しのぎの杖" "いちじしのぎのつえ" 1000 500
    , gen "もろはの杖" "もろはのつえ" 1000 500
    , gen "へんげの杖" "へんげのつえ" 1000 500
    , gen "メダパニの杖" "めだぱにのつえ" 1200 250
    , gen "ラリホーの杖" "らりほーのつえ" 1200 400
    , gen "イカリの杖" "いかりのつえ" 1200 600
    , gen "かなしばりの杖" "かなしばりのつえ" 1200 600
    , gen "痛みわけの杖" "いたみわけのつえ" 1200 600
    , gen "ひきよせの杖" "ひきよせのつえ" 1200 600
    , gen "ルカニの杖" "るかにのつえ" 1200 600
    , gen "ボミオスの杖" "ぼみおすのつえ" 1200 600
    , gen "ふきとばしの杖" "ふきとばしのつえ" 1200 600
    , gen "封印の杖" "ふういんのつえ" 1500 500
    , gen "クオーターの杖" "くおーたーのつえ" 2000 1000
    , gen "おびえの杖" "おびえのつえ" 2000 1000
    , gen "大損の杖" "おおぞんのつえ" 2000 1000
    , gen "モノカの杖" "ものかのつえ" 2000 1000
    , gen "身代わりの杖" "みがわりのつえ" 2500 1000
    , gen "分裂の杖" "ぶんれつのつえ" 2500 1200
    , gen "ピオリムの杖" "ぴおりむのつえ" 2500 1200
    , gen "レムオルの杖" "れむおるのつえ" 3000 1200
    , gen "転ばぬ先の杖" "ころばぬさきのつえ" 3000 1400
    , gen "きとうしの杖" "きとうしのつえ" 3000 1500
    , gen "バーサーカーの杖" "ばーさーかーのつえ" 3000 1500
    , gen "ミミックの杖" "みみっくのつえ" 3000 1500
    , gen "万能の杖" "ばんのうのつえ" 3000 1500
    , gen "ようじゅつしの杖" "ようじゅつしのつえ" 4000 2000
    , gen "マヌーサの杖" "まぬーさのつえ" 5000 2500
    , gen "草なげの杖" "くさなげのつえ" 5000 2500
    , gen "草うけの杖" "くさうけのつえ" 5000 2500
    , gen "ドルイドの杖" "どるいどのつえ" 6000 3000
    , gen "げんじゅつしの杖" "げんじゅつしのつえ" 8000 4000
    , gen "丸得の杖" "まるとくのつえ" 10000 1
    , gen "ザキの杖" "ざきのつえ" 10000 2500
    , gen "黄金の杖" "おうごんのつえ" 10000 2500
    , gen "ゴッドスパークの杖" "ごっどすぱーくのつえ" 10000 5000
    ]


herbs : List Item
herbs =
    let
        gen name hiragana buyPrice sellPrice =
            Item.new Herb name hiragana buyPrice sellPrice
    in
    [ gen "でたらめ草" "でたらめそう" 100 50
    , gen "踊り草" "おどりそう" 100 50
    , gen "かなしばりのたね" "かなしばりのたね" 100 50
    , gen "目覚まし草" "めざましそう" 100 50
    , gen "胃下垂のたね" "いかすいのたね" 100 50
    , gen "火炎草" "かえんそう" 100 50
    , gen "ルーラ草" "るーらそう" 100 50
    , gen "雑草" "ざっそう" 100 50
    , gen "草ぶえ" "くさぶえ" 100 50
    , gen "毒草" "どくそう" 150 75
    , gen "バーサーカーのたね" "ばーさーかーのたね" 150 75
    , gen "まどわし草" "まどわしそう" 150 75
    , gen "めつぶし草" "めつぶしそう" 200 100
    , gen "メダパニ草" "めだぱにそう" 200 100
    , gen "鉄化のたね" "てっかのたね" 200 100
    , gen "ラリホー草" "らりほーそう" 200 100
    , gen "毒けし草" "どくけしそう" 300 1
    , gen "めぐすり草" "めぐすりそう" 300 150
    , gen "ふこうのたね" "ふこうのたね" 300 150
    , gen "すばやさのたね" "すばやさのたね" 350 170
    , gen "胃縮小のたね" "いしゅくしょうのたね" 600 300
    , gen "胃拡張のたね" "いかくちょうのたね" 600 300
    , gen "しんぴの草" "しんぴのくさ" 1000 500
    , gen "世界樹の葉" "せかいじゅのは" 1500 750
    , gen "黄金の草" "おうごんのくさ" 2000 100
    , gen "薬草" "やくそう" 2000 1000
    , gen "命の草" "いのちのくさ" 4000 2000
    , gen "ちからのたね" "ちからのたね" 5000 2500
    , gen "しあわせのたね" "しあわせのたね" 5000 2500
    , gen "弟切草" "おとぎりそう" 5000 2500
    ]


scrolls : List Item
scrolls =
    let
        gen name hiragana buyPrice sellPrice =
            Item.new Scroll name hiragana buyPrice sellPrice
    in
    [ gen "パルプンテの巻物" "ぱるぷんてのまきもの" 0 0
    , gen "リレミトの巻物" "りれみとのまきもの" 100 50
    , gen "大部屋の巻物" "おおべやのまきもの" 300 150
    , gen "聖城の巻物" "せいじょうのまきもの" 400 200
    , gen "氷結の巻物" "ひょうけつのまきもの" 400 200
    , gen "炎上の巻物" "えんじょうのまきもの" 400 200
    , gen "ワナ作動の巻物" "わなさどうのまきもの" 400 200
    , gen "水がれの巻物" "みずがれのまきもの" 400 200
    , gen "ダイバクハツの巻物" "だいばくはつのまきもの" 400 200
    , gen "砂柱の巻物" "すなばしらのまきもの" 400 200
    , gen "ワナけしの巻物" "わなけしのまきもの" 500 250
    , gen "うしろむきの巻物" "うしろむきのまきもの" 500 250
    , gen "インパスの巻物" "いんぱすのまきもの" 500 250
    , gen "ルカナンの巻物" "るかなんのまきもの" 650 300
    , gen "すごろく" "すごろく" 650 300
    , gen "メッキの巻物" "めっきのまきもの" 650 300
    , gen "パンの巻物" "ぱんのまきもの" 650 300
    , gen "たからの地図" "たからのちず" 650 300
    , gen "レミーラの巻物" "れみーらのまきもの" 650 300
    , gen "かなしばりの巻物" "かなしばりのまきもの" 650 300
    , gen "らくがき帳" "らくがきちょう" 650 300
    , gen "銀のたてごとの巻物" "ぎんのたてごとのまきもの" 650 300
    , gen "地獄耳の巻物" "じごくみみのまきもの" 650 300
    , gen "トラマナの巻物" "とらまなのまきもの" 650 300
    , gen "まものしばりの巻物" "まものしばりのまきもの" 650 300
    , gen "千里眼の巻物" "せんりがんのまきもの" 650 300
    , gen "すてみの巻物" "すてみのまきもの" 650 300
    , gen "大風の巻物" "おおかぜのまきもの" 650 300
    , gen "はりつけの巻物" "はりつけのまきもの" 650 300
    , gen "メダパニの巻物" "めだぱにのまきもの" 650 300
    , gen "パワーアップの巻物" "ぱわーあっぷのまきもの" 650 300
    , gen "バクスイの巻物" "ばくすいのまきもの" 650 300
    , gen "ザオラルの巻物" "ざおらるのまきもの" 650 300
    , gen "ひきよせの巻物" "ひきよせのまきもの" 650 300
    , gen "壺強化の巻物" "つぼきょうかのまきもの" 700 350
    , gen "中部屋の巻物" "ちゅうべやのまきもの" 700 350
    , gen "くちなしの巻物" "くちなしのまきもの" 1000 500
    , gen "イオの巻物" "いおのまきもの" 1000 500
    , gen "変身の巻物" "へんしんのまきもの" 1000 500
    , gen "モンスターの巻物" "もんすたーのまきもの" 1000 500
    , gen "ワナの巻物" "わなのまきもの" 1000 500
    , gen "時限爆弾の巻物" "じげんばくだんのまきもの" 1000 500
    , gen "スカラの巻物" "すからのまきもの" 1500 750
    , gen "バイキルトの巻物" "ばいきるとのまきもの" 1500 750
    , gen "ふはつの巻物" "ふはつのまきもの" 2000 1000
    , gen "聖域の巻物" "せいいきのまきもの" 2500 1250
    , gen "ベホマラーの巻物" "べほまらーのまきもの" 2500 1250
    , gen "拾えずの巻物" "ひろえずのまきもの" 2500 1250
    , gen "シャナクの巻物" "しゃなくのまきもの" 3000 500
    , gen "白紙の巻物" "はくしのまきもの" 5000 2500
    , gen "祈りの巻物" "いのりのまきもの" 5000 2500
    , gen "まものいそぎの巻物" "まものいそぎのまきもの" 5000 2500
    , gen "ニフラムの巻物" "にふらむのまきもの" 20000 1
    , gen "チキンの巻物" "ちきんのまきもの" 20000 1
    , gen "黄金の紙切れ" "おうごんのかみきれ" 20000 1000
    ]
