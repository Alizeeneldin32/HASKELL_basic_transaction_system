display :: [(Int, [Char])] -> IO ()
display [] = print $ "end"
display (x:xs) = do
    print $ x
    display xs
bank :: [(Int, [Char])] -> IO ()
bank accounts = do
    print $ "Press 0: to quit"
    print $ "Press 1: to create a bank account"
    print $ "Press 2: to deposit credit"
    print $ "Press 3: to withdraw"
    print $ "Press 4: to transfer"
    print $ "Press 5: to know account balance"
    print $ "Press 6: to print all"
    num <- getLine
    if num == "0" then
        return();                                       --alternative
        else
            if num == "1" then do
                putStrLn "Enter name"
                name <- getLine
                bank (accounts ++ [(0, name)])
                else
                    if num == "6" then
                        display accounts
                        else
                            print $ "other";
    bank accounts
main :: IO ()
main = do
    bank []