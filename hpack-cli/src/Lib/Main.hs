{-# LANGUAGE DeriveDataTypeable #-}
{- | CLI application harness.

-}
module Lib.Main
  ( run
  , getArgs
  , Args(..)
  ) where

import           Data.Version                   ( showVersion )
import           System.Console.CmdArgs         ( (&=)
                                                , Data
                                                , Typeable
                                                , cmdArgs
                                                , help
                                                , helpArg
                                                , name
                                                , program
                                                , summary
                                                )

-- TODO: fix this import
import           Paths_{{name}}                 ( version )


-- | Run the executable.
run :: Args -> IO ()
run Args{} = putStrLn "hello world"


-- | CLI arguments supported by the executable.
data Args = Args {}
  deriving (Show, Read, Eq, Data, Typeable)


-- | Parse the CLI arguments with 'System.Console.CmdArgs'.
getArgs :: IO Args
getArgs = cmdArgs argSpec


-- | Defines & documents the CLI arguments.
argSpec :: Args
argSpec =
  Args{}
    &= summary
         ("{{name}} v"
         <> showVersion version
         <> ", {{author-name}}{{^author-name}}Author name here{{/author-name}} {{year}}{{^year}}2021{{/year}}"
         )
    &= program "{{name}}"
    &= helpArg [name "h"]
    &= help "Short, one-line summary of project here."
