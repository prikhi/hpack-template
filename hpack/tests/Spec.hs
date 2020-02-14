import           Hedgehog
import           Test.Tasty
import           Test.Tasty.Hunit
import           Test.Tasty.Hedgehog

import qualified Hedgehog.Gen                  as Gen
import qualified Hedgehog.Range                as Range


main :: IO ()
main = defaultMain tests


tests :: TestTree
tests = testGroup "Tests" [unitTests, properties]


unitTests :: TestTree
unitTests = testGroup "Unit Tests" [testCase "2+2 = 4" testAddition]
  where
    testAddition :: Assertion
    testAddition = (2 + 2) @?= 4


properties :: TestTree
properties = testGroup
    "Properties"
    [testProperty "Addition is Communative" testAdditionCommunative]
  where
    testAdditionCommunative :: Property
    testAdditionCommunative = do
        let genInt = Gen.int $ Range.linear 0 9001
        (a, b) <- forAll $ (,) <$> genInt <*> genInt
        (a + b) === (b + a)