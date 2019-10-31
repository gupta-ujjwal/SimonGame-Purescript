module App.View (view) where
 
import Prelude hiding (div)
import Text.Smolder.Markup (Markup, text)
import Text.Smolder.HTML (div)

view :: forall a. Markup a
view =
    div
        $ text "Hello World"