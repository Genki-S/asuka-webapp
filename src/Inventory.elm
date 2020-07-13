module Inventory exposing (generate)

import Dungeon exposing (Dungeon(..))
import Item exposing (Item, Kind(..))


generate : Result String (List Item)
generate =
    Ok
        (List.concat [ scrolls, herbs, bracelets, wands, vases ])


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


newConsumables : ( Int, Int ) -> Kind -> String -> String -> Int -> Float -> Int -> Float -> Bool -> List Item
newConsumables remainingRange kind name hiragana buyPrice buyIncrement sellPrice sellIncrement appearsInUrahaku =
    let
        dungeons =
            if appearsInUrahaku then
                [ Urahaku ]

            else
                []
    in
    List.range (Tuple.first remainingRange) (Tuple.second remainingRange)
        |> List.map
            (\remaining ->
                Item.newConsumable kind name hiragana buyPrice buyIncrement sellPrice sellIncrement remaining dungeons
            )


bracelets : List Item
bracelets =
    let
        gen =
            newItem Bracelet
    in
    -- NOTE: the form of `gen "混乱よけの腕輪" "こんらんよけのうでわ" 2000 1000 True [Urahaku]` confuses elm-language-server... so using dumb True/False argument here as a workaround
    [ gen "混乱よけの腕輪" "こんらんよけのうでわ" 2000 1000 True
    , gen "サビよけの腕輪" "さびよけのうでわ" 2000 1000 True
    , gen "ねむらずの腕輪" "ねむらずのうでわ" 2000 1000 True
    , gen "呪いよけの腕輪" "のろいよけのうでわ" 2000 1000 True
    , gen "必着の腕輪" "ひっちゃくのうでわ" 2000 1000 True
    , gen "たかとびの腕輪" "たかとびのうでわ" 3000 1500 True
    , gen "ちからの腕輪" "ちからのうでわ" 3000 1500 True
    , gen "とうぞくの腕輪" "とうぞくのうでわ" 3000 1500 True
    , gen "ねがいの腕輪" "ねがいのうでわ" 3000 1500 True
    , gen "遠投の腕輪" "えんとうのうでわ" 4000 2000 True
    , gen "百発百中の腕輪" "ひゃっぱつひゃくちゅうのうでわ" 4000 2000 True
    , gen "まがりの腕輪" "まがりのうでわ" 4000 2000 True
    , gen "いやしの腕輪" "いやしのうでわ" 5000 2500 True
    , gen "ドレインよけの腕輪" "どれいんよけのうでわ" 5000 2500 True
    , gen "よくみえの腕輪" "よくみえのうでわ" 5000 2500 True
    , gen "会心の腕輪" "かいしんのうでわ" 6000 3000 True
    , gen "痛恨の腕輪" "つうこんのうでわ" 6000 3000 True
    , gen "まもりの腕輪" "まもりのうでわ" 7500 3000 True
    , gen "身代わりの腕輪" "みがわりのうでわ" 7500 3000 True
    , gen "通過の腕輪" "つうかのうでわ" 10000 5000 True
    , gen "透視の腕輪" "とうしのうでわ" 10000 5000 True
    , gen "パコレプキンの腕輪" "ぱこれぷきんのうでわ" 10000 5000 True
    , gen "値切の腕輪" "ねぎりのうでわ" 12000 6000 True
    , gen "うけながしの腕輪" "うけながしのうでわ" 15000 7500 True
    , gen "しあわせの腕輪" "しあわせのうでわ" 15000 7500 True
    , gen "ハラヘラズの腕輪" "はらへらずのうでわ" 15000 7500 True
    , gen "ハラヘリの腕輪" "はらへりのうでわ" 15000 7500 True
    , gen "気力の腕輪" "きりょくのうでわ" 25000 1000 True
    , gen "識別の腕輪" "しきべつのうでわ" 25000 12000 True
    , gen "ワナ師の腕輪" "わなしのうでわ" 25000 10000 True
    ]


herbs : List Item
herbs =
    let
        gen =
            newItem Herb
    in
    [ gen "雑草" "ざっそう" 50 25 True
    , gen "薬草" "やくそう" 100 50 True
    , gen "睡眠草" "すいみんそう" 100 50 True
    , gen "混乱草" "こんらんそう" 100 50 True
    , gen "すばやさの種" "すばやさのたね" 300 150 True
    , gen "高とび草" "たかとびそう" 300 150 True
    , gen "物忘れの草" "ものわすれのくさ" 300 150 True
    , gen "キグニ族の種" "きぐにぞくのたね" 300 150 True
    , gen "くねくね草" "くねくねそう" 300 150 True
    , gen "命の草" "いのちのくさ" 400 200 True
    , gen "毒消し草" "どくけしそう" 400 200 True
    , gen "胃拡張の種" "いかくちょうのたね" 400 200 True
    , gen "胃縮小の種" "いしゅくしょうのたね" 400 200 True
    , gen "超不幸の種" "ちょうふこうのたね" 400 200 True
    , gen "弟切草" "おとぎりそう" 500 250 True
    , gen "めぐすり草" "めぐすりそう" 500 250 True
    , gen "ドラゴン草" "どらごんそう" 500 250 True
    , gen "火炎草" "かえんそう" 700 350 True
    , gen "よくきき草" "よくききそう" 1000 500 True
    , gen "ちからの種" "ちからのたね" 1500 700 True
    , gen "毒草" "どくそう" 1500 700 True
    , gen "しあわせ草" "しあわせそう" 2000 1000 True
    , gen "不幸の種" "ふこうのたね" 2000 1000 True
    , gen "無敵草" "むてきそう" 2000 1000 True
    , gen "復活の草" "ふっかつのくさ" 2500 1250 True
    , gen "天使の種" "てんしのたね" 3000 1500 True
    ]


scrolls : List Item
scrolls =
    let
        gen =
            newItem Scroll
    in
    [ gen "ワナの巻物" "わなのまきもの" 200 100 True
    , gen "識別の巻物" "しきべつのまきもの" 500 250 True
    , gen "あかりの巻物" "あかりのまきもの" 500 250 True
    , gen "水びたしの巻物" "みずびたしのまきもの" 500 250 True
    , gen "火種の巻物" "ひだねのまきもの" 500 250 True
    , gen "引き上げの巻物" "ひきあげのまきもの" 500 250 False
    , gen "おはらいの巻物" "おはらいのまきもの" 1000 500 True
    , gen "ゾワゾワの巻物" "ぞわぞわのまきもの" 1000 500 True
    , gen "必中の巻物" "ひっちゅうのまきもの" 1000 500 True
    , gen "ファイトの巻物" "ふぁいとのまきもの" 1000 500 True
    , gen "ワナけしの巻物" "わなけしのまきもの" 1000 500 True
    , gen "はりつけの巻物" "はりつけのまきもの" 1000 500 True
    , gen "飛ばずの巻物" "とばずのまきもの" 1000 500 True
    , gen "持ち帰りの巻物" "もちかえりのまきもの" 1000 500 False
    , gen "天の恵みの巻物" "てんのめぐみのまきもの" 1200 600 True
    , gen "地の恵みの巻物" "ちのめぐみのまきもの" 1200 600 True
    , gen "バクスイの巻物" "ばくすいのまきもの" 1200 600 True
    , gen "炎上の巻物" "えんじょうのまきもの" 1200 600 True
    , gen "混乱の巻物" "こんらんのまきもの" 1500 750 True
    , gen "落石の巻物" "らくせきのまきもの" 1500 750 True
    , gen "いかずちの巻物" "いかずちのまきもの" 1500 750 True
    , gen "困った時の巻物" "こまったときのまきもの" 1500 750 True
    , gen "困った巻物" "こまったまきもの" 1500 750 True
    , gen "モンスターハウスの巻物" "もんすたーはうすのまきもの" 1500 750 True
    , gen "水がれの巻物" "みずがれのまきもの" 2000 1000 True
    , gen "大部屋の巻物" "おおべやのまきもの" 2000 1000 True
    , gen "壺われずの巻物" "つぼわれずのまきもの" 2000 1000 True
    , gen "壺増大の巻物" "つぼぞうだいのまきもの" 2000 1000 True
    , gen "転写の巻物" "てんしゃのまきもの" 2000 1000 True
    , gen "すいだしの巻物" "すいだしのまきもの" 3000 1500 True
    , gen "メッキの巻物" "めっきのまきもの" 4000 2000 True
    , gen "白紙の巻物" "はくしのまきもの" 5000 2500 False
    , gen "聖域の巻物" "せいいきのまきもの" 7500 2500 True
    , gen "ねだやしの巻物" "ねだやしのまきもの" 25000 400 False
    , gen "奥技の巻物" "おうぎのまきもの" 1500 750 True
    ]


vases : List Item
vases =
    let
        gen =
            newConsumables ( 0, 6 ) Vase
    in
    [ gen "回復の壺" "かいふくのつぼ" 1000 50 500 25 True
    , gen "水がめ" "みずがめ" 1000 50 500 25 True
    , gen "弱化の壺" "じゃくかのつぼ" 1000 50 500 25 True
    , gen "保存の壺" "ほぞんのつぼ" 1200 60 600 30 True
    , gen "換金の壺" "かんきんのつぼ" 1200 60 600 30 True
    , gen "識別の壺" "しきべつのつぼ" 1500 75 750 37.5 True
    , gen "変化の壺" "へんかのつぼ" 1500 75 750 37.5 True
    , gen "やりすごしの壺" "やりすごしのつぼ" 2000 100 1000 50 True
    , gen "底抜けの壺" "そこぬけのつぼ" 2000 100 1000 50 True
    , gen "手封じの壺" "てふうじのつぼ" 2000 100 1000 50 True
    , gen "倉庫の壺" "そうこのつぼ" 3000 150 1500 75 True
    , gen "合成の壺" "ごうせいのつぼ" 4000 200 2000 100 True
    , gen "祝福の壺" "しゅくふくのつぼ" 5000 250 2000 100 True
    , gen "強化の壺" "きょうかのつぼ" 15000 750 7500 375 True
    ]
        |> List.concat


wands : List Item
wands =
    let
        gen =
            newConsumables ( 0, 7 ) Wand
    in
    [ gen "ふきとばしの杖" "ふきとばしのつえ" 500 25 200 10 True
    , gen "イカリの杖" "いかりのつえ" 800 40 400 20 True
    , gen "痛み分けの杖" "いたみわけのつえ" 800 40 400 20 True
    , gen "入れ替えの杖" "いれかえのつえ" 800 40 400 20 True
    , gen "けものみちの杖" "けものみちのつえ" 800 40 400 20 True
    , gen "ばくだんの杖" "ばくだんのつえ" 800 40 400 20 True
    , gen "場所替えの杖" "ばしょがえのつえ" 800 40 400 20 True
    , gen "引きよせの杖" "ひきよせのつえ" 800 40 400 20 True
    , gen "回復の杖" "かいふくのつえ" 800 80 400 40 True
    , gen "転ばぬ先の杖" "ころばぬさきのつえ" 1000 50 500 25 True
    , gen "鈍足の杖" "どんそくのつえ" 1200 60 400 20 True
    , gen "一時しのぎの杖" "いちじしのぎのつえ" 1200 60 600 30 True
    , gen "かなしばりの杖" "かなしばりのつえ" 1200 60 600 30 True
    , gen "封印の杖" "ふういんのつえ" 2000 100 500 25 True
    , gen "いかずちの杖" "いかずちのつえ" 2000 100 1000 50 True
    , gen "クォーターの杖" "くぉーたーのつえ" 2000 100 1000 50 True
    , gen "とうめいの杖" "とうめいのつえ" 2000 100 1000 50 True
    , gen "トンネルの杖" "とんねるのつえ" 2000 100 1000 50 True
    , gen "身がわりの杖" "みがわりのつえ" 2000 100 1000 50 True
    , gen "倍速の杖" "ばいそくのつえ" 2000 200 1000 100 True
    , gen "オオイカリの杖" "おおいかりのつえ" 2500 125 1200 60 True
    , gen "からぶりの杖" "からぶりのつえ" 2500 125 1200 60 True
    , gen "火ばしらの杖" "ひばしらのつえ" 2500 125 1200 60 True
    , gen "しあわせの杖" "しあわせのつえ" 3000 150 1500 75 True
    , gen "不幸の杖" "ふこうのつえ" 3000 300 1500 150 True
    ]
        |> List.concat
