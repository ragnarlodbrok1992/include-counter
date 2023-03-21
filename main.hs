-- Include counter to se how complicated some codebase is.
-- 1. Count and show how many #include are in a files and compose a list of them.
-- 2. List goes as follow: <path_to_file>/file.(cpp/hpp) - how many includes are there.
-- 3. Sort list in descending order.

import System.Environment
import System.Exit
import System.IO

main :: IO ()

printList :: [String] -> IO ()
printList [] = return ()
printList (x:xs) = do
  putStrLn x
  printList xs

openAndPrintFileLines :: String -> IO ()
openAndPrintFileLines s = do
  contents <- readFile s
  contents_lines <- lines contents
  printList contents_lines

{-
openAndPrintFile :: String -> IO ()
openAndPrintFile s = do
  contents <- readFile s
  putStrLn contents

splitByNewLine :: String -> [String]
splitByNewLine s = lines s
-}

main = do
  putStrLn "Include Counter - v 0.0.1"
  putStrLn "  - Count how many #include are in a files and print out a list of them"
  -- In Haskell, no args means empty list
  args <- getArgs

  -- Exit program if no args are provided
  if args == []
    then do
      putStrLn "    ! No args provided - exiting!"
      exitWith ExitSuccess
  else do

  -- Print out command lines if there are some
    putStrLn("    Command line arguments: " ++ show args)

  -- Open files in list and print them
    printList args

