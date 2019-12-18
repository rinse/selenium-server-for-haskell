import qualified Data.Text            as T
import           Test.WebDriver
import           Test.WebDriver.Class


myConfig :: WDConfig
myConfig = def
    { wdCapabilities = def { browser = chrome }
    }

someFunc :: IO ()
someFunc = do
    text <- runSession myConfig $ do
        openPage "https://example.com"
        getTitle
    putStrLn . T.unpack $ text
