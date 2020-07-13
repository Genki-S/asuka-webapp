module Item exposing
    ( Item
    , Kind(..)
    , calculateBuyPrice
    , calculateSellPrice
    , dungeons
    , exposeInternals
    , hiraganaName
    , kind
    , kindToString
    , name
    , new
    , newConsumable
    )

import Dungeon exposing (Dungeon(..))


type Item
    = Item Internals


type Kind
    = Scroll
    | Herb
    | Bracelet
    | Wand
    | Vase


type alias Internals =
    { kind : Kind
    , name : String
    , hiraganaName : String
    , buyPrice : Int
    , buyPriceIncrement : Maybe Float
    , sellPrice : Int
    , sellPriceIncrement : Maybe Float
    , remaining : Maybe Int
    , dungeons : List Dungeon
    }


new : Kind -> String -> String -> Int -> Int -> List Dungeon -> Item
new kind_ name_ hiraganaName_ buyPrice_ sellPrice_ dungeons_ =
    Item
        { kind = kind_
        , name = name_
        , hiraganaName = hiraganaName_
        , buyPrice = buyPrice_
        , buyPriceIncrement = Nothing
        , sellPrice = sellPrice_
        , sellPriceIncrement = Nothing
        , remaining = Nothing
        , dungeons = dungeons_
        }


newConsumable : Kind -> String -> String -> Int -> Float -> Int -> Float -> Int -> List Dungeon -> Item
newConsumable kind_ name_ hiraganaName_ buyPrice_ buyPriceIncrement_ sellPrice_ sellPriceIncrement_ remaining_ dungeons_ =
    Item
        { kind = kind_
        , name = name_
        , hiraganaName = hiraganaName_
        , buyPrice = buyPrice_
        , buyPriceIncrement = Just buyPriceIncrement_
        , sellPrice = sellPrice_
        , sellPriceIncrement = Just sellPriceIncrement_
        , remaining = Just remaining_
        , dungeons = dungeons_
        }


exposeInternals : Item -> Internals
exposeInternals (Item i) =
    i


kind : Item -> Kind
kind (Item i) =
    i.kind


name : Item -> String
name (Item i) =
    i.name


hiraganaName : Item -> String
hiraganaName (Item i) =
    i.hiraganaName


calculateBuyPrice : Item -> Int
calculateBuyPrice (Item i) =
    case ( i.buyPriceIncrement, i.remaining ) of
        ( Just inc, Just remaining ) ->
            i.buyPrice + round (toFloat remaining * inc)

        _ ->
            i.buyPrice


calculateSellPrice : Item -> Int
calculateSellPrice (Item i) =
    case ( i.sellPriceIncrement, i.remaining ) of
        ( Just inc, Just remaining ) ->
            i.sellPrice + round (toFloat remaining * inc)

        _ ->
            i.sellPrice


dungeons : Item -> List Dungeon
dungeons (Item i) =
    i.dungeons


kindToString : Kind -> String
kindToString kind_ =
    case kind_ of
        Scroll ->
            "巻物"

        Herb ->
            "草"

        Bracelet ->
            "腕輪"

        Wand ->
            "杖"

        Vase ->
            "壺"
