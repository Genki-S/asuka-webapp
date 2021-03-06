module Filter exposing (Filter(..), applyFilter, applyFilters)

import Dungeon exposing (Dungeon(..))
import Item exposing (Item, Kind(..))


type Filter
    = IdentifiedFilter (List String) Bool
    | ItemKindFilter Kind
    | FreeTextFilter String
    | DungeonFilter Dungeon


applyFilters : List Filter -> List Item -> List Item
applyFilters filters items =
    List.foldl applyFilter items filters


applyFilter : Filter -> List Item -> List Item
applyFilter filter items =
    List.filter (toFilterFunc filter) items


toFilterFunc : Filter -> Item -> Bool
toFilterFunc f item =
    case f of
        IdentifiedFilter identifiedItemNames identified ->
            identified == List.member (Item.name item) identifiedItemNames

        ItemKindFilter kind ->
            Item.kind item == kind

        FreeTextFilter s ->
            case String.toInt s of
                Just price ->
                    let
                        allowedError =
                            2

                        targetPrices =
                            [ Item.calculateBuyPrice item, Item.calculateSellPrice item ]
                                -- 呪い / 祝福
                                |> List.map (\p -> [ round (toFloat p * 0.9), p, round (toFloat p * 1.1) ])
                                |> List.concat
                    in
                    targetPrices
                        |> List.any (\target -> abs (target - price) <= allowedError)

                Nothing ->
                    String.contains s (Item.name item) || String.contains s (Item.hiraganaName item)

        DungeonFilter dungeon ->
            List.member dungeon (Item.dungeons item)
