main :: IO ()
main = putStrLn myhtml

myhtml :: String
myhtml =
  html_
    "My title"
    [ h1_ "Header"
    , p_ "Paragraph #1"
    , p_ "Paragraph #2"
    ]

html_ :: String -> [String] -> String
html_ title content =
  el "html"
    ( concat
      [ el "head" (el "title" title)
      , el "body" (concat content)
      ]
    )

p_ :: String -> String
p_ = el "p"

h1_ :: String -> String
h1_ = el "h1"

el :: String -> String -> String
el tag content =
  "<" <> tag <> ">" <> content <> "</" <> tag <> ">"
