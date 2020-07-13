module Dungeon exposing (Dungeon(..), toString)


type Dungeon
    = Urahaku


toString : Dungeon -> String
toString d =
    case d of
        Urahaku ->
            "裏白"
