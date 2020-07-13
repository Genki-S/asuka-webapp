module Inventory exposing (generate)

import Dungeon exposing (Dungeon(..))
import Item exposing (Item, Kind(..))


generate : Result String (List Item)
generate =
    Ok
        (List.concat [ scrolls, herbs, rings, wands, vases ])


newItem : Kind -> String -> String -> Int -> Int -> Bool -> Item
newItem kind name hiragana buyPrice sellPrice appearsInUrahaku =
    let
        dungeons =
            if appearsInUrahaku then
                [ Urahaku ]

            else
                []
    in
    Item.new kind name hiragana buyPrice sellPrice dungeons


rings : List Item
rings =
    let
        gen =
            newItem Ring
    in
    -- NOTE: the form of `gen "うけながしの指輪" "うけながしのゆびわ" 20000 10000 [Urahaku]` confuses elm-language-server... so using dumb True/False argument here as a workaround
    [ gen "うけながしの指輪" "うけながしのゆびわ" 20000 10000 False
    , gen "きれいな指輪" "きれいなゆびわ" 8000 3000 True
    , gen "しあわせの指輪" "しあわせのゆびわ" 4000 2000 True
    , gen "しにがみの指輪" "しにがみのゆびわ" 10000 5000 False
    , gen "たれ流しの指輪" "たれながしのゆびわ" 4000 2000 True
    , gen "ちからの指輪" "ちからのゆびわ" 5000 2500 True
    , gen "とうぞくの指輪" "とうぞくのゆびわ" 15000 2500 False
    , gen "はね返しの指輪" "はねかえしのゆびわ" 20000 8000 False
    , gen "ふしぎ投げの指輪" "ふしぎなげのゆびわ" 5000 2500 True
    , gen "ふつうの指輪" "ふつうのゆびわ" 5000 2500 False
    , gen "へた投げの指輪" "へたなげのゆびわ" 5000 2500 True
    , gen "まがりの指輪" "まがりのゆびわ" 5000 2500 True
    , gen "まもりの指輪" "まもりのゆびわ" 20000 10000 False
    , gen "インパスの指輪" "いんぱすのゆびわ" 25000 12500 False
    , gen "ザメハの指輪" "ざめはのゆびわ" 10000 5000 True
    , gen "シャドーの指輪" "しゃどーのゆびわ" 10000 5000 False
    , gen "ドラゴンの指輪" "どらごんのゆびわ" 10000 5000 True
    , gen "ハラヘラズの指輪" "はらへらずのゆびわ" 15000 1000 False
    , gen "ハラペコの指輪" "はらぺこのゆびわ" 10000 5000 True
    , gen "ハラモチの指輪" "はらもちのゆびわ" 5000 2500 True
    , gen "ハラ守りの指輪" "はらまもりのゆびわ" 5000 2500 True
    , gen "ファイターリング" "ふぁいたーりんぐ" 10000 5000 False
    , gen "ミニデーモンの指輪" "みにでーもんのゆびわ" 5000 2500 True
    , gen "メタルリング" "めたるりんぐ" 2000 1000 False
    , gen "ルーラの指輪" "るーらのゆびわ" 7500 1500 True
    , gen "ワナあての指輪" "わなあてのゆびわ" 5000 2500 True
    , gen "ワナぬけの指輪" "わなぬけのゆびわ" 15000 7500 False
    , gen "人形よけの指輪" "にんぎょうよけのゆびわ" 10000 5000 True
    , gen "会心の指輪" "かいしんのゆびわ" 15000 7500 True
    , gen "値切りの指輪" "ねぎりのゆびわ" 10000 5000 False
    , gen "傷みよけの指輪" "いたみよけのゆびわ" 5000 2500 True
    , gen "呪いよけの指輪" "のろいよけのゆびわ" 5000 2500 True
    , gen "命の指輪" "いのちのゆびわ" 20000 10000 False
    , gen "回復の指輪" "かいふくのゆびわ" 10000 5000 True
    , gen "技封じの指輪" "わざふうじのゆびわ" 25000 12500 False
    , gen "投げ名人の指輪" "なげめいじんのゆびわ" 10000 5000 True
    , gen "母の形見" "ははのかたみ" 2000 1000 False
    , gen "毒けしの指輪" "どくけしのゆびわ" 5000 2500 True
    , gen "混乱よけの指輪" "こんらんよけのゆびわ" 3000 1500 True
    , gen "爆発の指輪" "ばくはつのゆびわ" 5000 2500 True
    , gen "痛恨の指輪" "つうこんのゆびわ" 15000 7500 True
    , gen "眠らずの指輪" "ねむらずのゆびわ" 5000 2500 True
    , gen "石像よけの指輪" "せきぞうよけのゆびわ" 25000 12500 False
    , gen "紙一重の指輪" "かみひとえのゆびわ" 10000 5000 False
    , gen "見切りの指輪" "みきりのゆびわ" 25000 12500 True
    , gen "透視の指輪" "とうしのゆびわ" 10000 5000 False
    , gen "通過の指輪" "つうかのゆびわ" 5000 2500 True
    , gen "遠投の指輪" "えんとうのゆびわ" 7500 3000 True
    , gen "魔封じの指輪" "まふうじのゆびわ" 25000 12500 False
    , gen "黄金の指輪" "おうごんのゆびわ" 25000 12500 False
    ]


vases : List Item
vases =
    let
        gen =
            newItem Vase
    in
    [ gen "うそつきの壺" "うそつきのつぼ" 10000 2000 True
    , gen "すいこみの壺" "すいこみのつぼ" 5000 1500 True
    , gen "とじこめの壺" "とじこめのつぼ" 1500 750 True
    , gen "ふつうの壺" "ふつうのつぼ" 1000 500 True
    , gen "へんげの壺" "へんげのつぼ" 5000 1500 True
    , gen "まものの壺" "まもののつぼ" 3000 1500 True
    , gen "われにくい壺" "われにくいつぼ" 1500 750 False
    , gen "インパスの壺" "いんぱすのつぼ" 2000 1200 True
    , gen "ワープの壺" "わーぷのつぼ" 3000 1500 True
    , gen "保存の壺" "ほぞんのつぼ" 1500 750 True
    , gen "倉庫の壺" "そうこのつぼ" 1000 500 True
    , gen "合成の壺" "ごうせいのつぼ" 3000 1500 True
    , gen "呪いの壺" "のろいのつぼ" 3000 1500 True
    , gen "回復の壺" "かいふくのつぼ" 1000 500 True
    , gen "大砲の壺" "たいほうのつぼ" 1000 500 True
    , gen "水がめ" "みずがめ" 1000 500 True
    , gen "火薬壺" "かやくつぼ" 4000 2000 True
    , gen "父のとっくり" "ちちのとっくり" 1500 750 False
    , gen "祝福の壺" "しゅくふくのつぼ" 3000 1500 True
    , gen "草の神の壺" "くさのかみのつぼ" 5000 2000 True
    , gen "魔法の壺" "まほうのつぼ" 10000 2000 True
    , gen "黄金の壺" "おうごんのつぼ" 10000 2000 False
    ]


wands : List Item
wands =
    let
        gen =
            newItem Wand
    in
    [ gen "いかずちの杖" "いかずちのつえ" 800 400 True
    , gen "おびえの杖" "おびえのつえ" 2000 1000 True
    , gen "かなしばりの杖" "かなしばりのつえ" 1200 600 True
    , gen "きとうしの杖" "きとうしのつえ" 3000 1500 True
    , gen "げんじゅつしの杖" "げんじゅつしのつえ" 8000 4000 True
    , gen "とびつきの杖" "とびつきのつえ" 800 400 True
    , gen "ひきよせの杖" "ひきよせのつえ" 1200 600 True
    , gen "ふきとばしの杖" "ふきとばしのつえ" 1200 600 True
    , gen "へんげの杖" "へんげのつえ" 1000 500 True
    , gen "もろはの杖" "もろはのつえ" 1000 500 True
    , gen "ようじゅつしの杖" "ようじゅつしのつえ" 4000 2000 True
    , gen "イカリの杖" "いかりのつえ" 1200 600 True
    , gen "クオーターの杖" "くおーたーのつえ" 2000 1000 True
    , gen "ゴッドスパークの杖" "ごっどすぱーくのつえ" 10000 5000 True
    , gen "ザキの杖" "ざきのつえ" 10000 2500 True
    , gen "トンネルの杖" "とんねるのつえ" 500 200 True
    , gen "ドルイドの杖" "どるいどのつえ" 6000 3000 True
    , gen "バシルーラの杖" "ばしるーらのつえ" 800 400 True
    , gen "バーサーカーの杖" "ばーさーかーのつえ" 3000 1500 True
    , gen "ピオリムの杖" "ぴおりむのつえ" 2500 1200 True
    , gen "ホイミの杖" "ほいみのつえ" 500 250 True
    , gen "ボミオスの杖" "ぼみおすのつえ" 1200 600 True
    , gen "マヌーサの杖" "まぬーさのつえ" 5000 2500 True
    , gen "ミミックの杖" "みみっくのつえ" 3000 1500 True
    , gen "メダパニの杖" "めだぱにのつえ" 1200 250 True
    , gen "モノカの杖" "ものかのつえ" 2000 1000 False
    , gen "ラリホーの杖" "らりほーのつえ" 1200 400 True
    , gen "ルカニの杖" "るかにのつえ" 1200 600 True
    , gen "レミーラの杖" "れみーらのつえ" 800 400 True
    , gen "レムオルの杖" "れむおるのつえ" 3000 1200 True
    , gen "一時しのぎの杖" "いちじしのぎのつえ" 1000 500 True
    , gen "万能の杖" "ばんのうのつえ" 3000 1500 True
    , gen "丸得の杖" "まるとくのつえ" 10000 1 True
    , gen "分裂の杖" "ぶんれつのつえ" 2500 1200 True
    , gen "場所替えの杖" "ばしょがえのつえ" 800 400 True
    , gen "大損の杖" "おおぞんのつえ" 2000 1000 True
    , gen "封印の杖" "ふういんのつえ" 1500 500 True
    , gen "木彫りのバット" "きぼりのばっと" 1000 500 False
    , gen "氷柱の杖" "つららのつえ" 800 400 True
    , gen "火柱の杖" "ひばしらのつえ" 800 400 True
    , gen "痛みわけの杖" "いたみわけのつえ" 1200 600 True
    , gen "砂柱の杖" "すなばしらのつえ" 800 400 True
    , gen "草うけの杖" "くさうけのつえ" 5000 2500 False
    , gen "草なげの杖" "くさなげのつえ" 5000 2500 False
    , gen "身代わりの杖" "みがわりのつえ" 2500 1000 True
    , gen "転ばぬ先の杖" "ころばぬさきのつえ" 3000 1400 True
    , gen "風の杖" "かぜのつえ" 800 400 True
    , gen "黄金の杖" "おうごんのつえ" 10000 2500 False
    ]


herbs : List Item
herbs =
    let
        gen =
            newItem Herb
    in
    [ gen "かなしばりのたね" "かなしばりのたね" 100 50 True
    , gen "しあわせのたね" "しあわせのたね" 5000 2500 True
    , gen "しんぴの草" "しんぴのくさ" 1000 500 True
    , gen "すばやさのたね" "すばやさのたね" 350 170 True
    , gen "ちからのたね" "ちからのたね" 5000 2500 True
    , gen "でたらめ草" "でたらめそう" 100 50 True
    , gen "ふこうのたね" "ふこうのたね" 300 150 True
    , gen "まどわし草" "まどわしそう" 150 75 True
    , gen "めぐすり草" "めぐすりそう" 300 150 True
    , gen "めつぶし草" "めつぶしそう" 200 100 True
    , gen "バーサーカーのたね" "ばーさーかーのたね" 150 75 True
    , gen "メダパニ草" "めだぱにそう" 200 100 True
    , gen "ラリホー草" "らりほーそう" 200 100 True
    , gen "ルーラ草" "るーらそう" 100 50 True
    , gen "世界樹の葉" "せかいじゅのは" 1500 750 True
    , gen "命の草" "いのちのくさ" 4000 2000 True
    , gen "弟切草" "おとぎりそう" 5000 2500 True
    , gen "毒けし草" "どくけしそう" 300 1 True
    , gen "毒草" "どくそう" 150 75 True
    , gen "火炎草" "かえんそう" 100 50 True
    , gen "目覚まし草" "めざましそう" 100 50 True
    , gen "胃下垂のたね" "いかすいのたね" 100 50 True
    , gen "胃拡張のたね" "いかくちょうのたね" 600 300 True
    , gen "胃縮小のたね" "いしゅくしょうのたね" 600 300 True
    , gen "草ぶえ" "くさぶえ" 100 50 False
    , gen "薬草" "やくそう" 2000 1000 True
    , gen "踊り草" "おどりそう" 100 50 True
    , gen "鉄化のたね" "てっかのたね" 200 100 True
    , gen "雑草" "ざっそう" 100 50 True
    , gen "黄金の草" "おうごんのくさ" 2000 100 False
    ]


scrolls : List Item
scrolls =
    let
        gen =
            newItem Scroll
    in
    [ gen "うしろむきの巻物" "うしろむきのまきもの" 500 250 True
    , gen "かなしばりの巻物" "かなしばりのまきもの" 650 300 True
    , gen "くちなしの巻物" "くちなしのまきもの" 1000 500 True
    , gen "すごろく" "すごろく" 650 300 False
    , gen "すてみの巻物" "すてみのまきもの" 650 300 True
    , gen "たからの地図" "たからのちず" 650 300 False
    , gen "はりつけの巻物" "はりつけのまきもの" 650 300 True
    , gen "ひきよせの巻物" "ひきよせのまきもの" 650 300 True
    , gen "ふはつの巻物" "ふはつのまきもの" 2000 1000 True
    , gen "まものいそぎの巻物" "まものいそぎのまきもの" 5000 2500 True
    , gen "まものしばりの巻物" "まものしばりのまきもの" 650 300 True
    , gen "らくがき帳" "らくがきちょう" 650 300 False
    , gen "イオの巻物" "いおのまきもの" 1000 500 True
    , gen "インパスの巻物" "いんぱすのまきもの" 500 250 True
    , gen "ザオラルの巻物" "ざおらるのまきもの" 650 300 True
    , gen "シャナクの巻物" "しゃなくのまきもの" 3000 500 True
    , gen "スカラの巻物" "すからのまきもの" 1500 750 True
    , gen "ダイバクハツの巻物" "だいばくはつのまきもの" 400 200 False
    , gen "チキンの巻物" "ちきんのまきもの" 20000 1 True
    , gen "トラマナの巻物" "とらまなのまきもの" 650 300 True
    , gen "ニフラムの巻物" "にふらむのまきもの" 20000 1 True
    , gen "バイキルトの巻物" "ばいきるとのまきもの" 1500 750 True
    , gen "バクスイの巻物" "ばくすいのまきもの" 650 300 True
    , gen "パルプンテの巻物" "ぱるぷんてのまきもの" 0 0 False
    , gen "パワーアップの巻物" "ぱわーあっぷのまきもの" 650 300 True
    , gen "パンの巻物" "ぱんのまきもの" 650 300 True
    , gen "ベホマラーの巻物" "べほまらーのまきもの" 2500 1250 True
    , gen "メダパニの巻物" "めだぱにのまきもの" 650 300 True
    , gen "メッキの巻物" "めっきのまきもの" 650 300 True
    , gen "モンスターの巻物" "もんすたーのまきもの" 1000 500 True
    , gen "リレミトの巻物" "りれみとのまきもの" 100 50 True
    , gen "ルカナンの巻物" "るかなんのまきもの" 650 300 True
    , gen "レミーラの巻物" "れみーらのまきもの" 650 300 True
    , gen "ワナけしの巻物" "わなけしのまきもの" 500 250 True
    , gen "ワナの巻物" "わなのまきもの" 1000 500 True
    , gen "ワナ作動の巻物" "わなさどうのまきもの" 400 200 True
    , gen "中部屋の巻物" "ちゅうべやのまきもの" 700 350 True
    , gen "千里眼の巻物" "せんりがんのまきもの" 650 300 True
    , gen "地獄耳の巻物" "じごくみみのまきもの" 650 300 True
    , gen "壺強化の巻物" "つぼきょうかのまきもの" 700 350 True
    , gen "変身の巻物" "へんしんのまきもの" 1000 500 True
    , gen "大部屋の巻物" "おおべやのまきもの" 300 150 True
    , gen "大風の巻物" "おおかぜのまきもの" 650 300 True
    , gen "拾えずの巻物" "ひろえずのまきもの" 2500 1250 True
    , gen "時限爆弾の巻物" "じげんばくだんのまきもの" 1000 500 True
    , gen "水がれの巻物" "みずがれのまきもの" 400 200 True
    , gen "氷結の巻物" "ひょうけつのまきもの" 400 200 True
    , gen "炎上の巻物" "えんじょうのまきもの" 400 200 True
    , gen "白紙の巻物" "はくしのまきもの" 5000 2500 True
    , gen "砂柱の巻物" "すなばしらのまきもの" 400 200 True
    , gen "祈りの巻物" "いのりのまきもの" 5000 2500 False
    , gen "聖城の巻物" "せいじょうのまきもの" 400 200 True
    , gen "聖域の巻物" "せいいきのまきもの" 2500 1250 True
    , gen "銀のたてごとの巻物" "ぎんのたてごとのまきもの" 650 300 True
    , gen "黄金の紙切れ" "おうごんのかみきれ" 20000 1000 True
    ]
