module Fuse.Attributes exposing (..)

import Json.Encode as Json
import Xml
import Xml.Encode as Xml
import Fuse exposing (..)


attribute : String -> Xml.Value -> Attribute msg model
attribute name value =
    Attribute name value


height : Int -> Attribute msg model
height =
    Xml.int
        >> Attribute "Height"


width : Int -> Attribute msg model
width =
    Xml.int
        >> Attribute "Width"


fontSize : Int -> Attribute msg model
fontSize =
    Xml.int
        >> Attribute "FontSize"


color : String -> Attribute msg model
color =
    Xml.string
        >> Attribute "Color"


url : String -> Attribute msg model
url =
    Xml.string
        >> Attribute "Url"


text : String -> Attribute msg model
text words =
    Attribute "Text" (Xml.string words)


bool : Bool -> Attribute msg model
bool =
    Xml.bool
        >> Attribute "Bool"


value : Xml.Value -> Attribute msg model
value =
    Attribute "Value"
