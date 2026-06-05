nomedaLoja :: String
nomedaLoja = "Lojas de Hyrule"

data Item = Item String String Double

data StatusCompra = Pendente | Concluida | Cancelada
    deriving (Eq)

data Compra = Compra [Item] StatusCompra

descreverItem :: Item -> String
descreverItem i =
    let (Item nome categoria preco) = i
    in nome ++ " - " ++ categoria ++ " (R$ " ++ show preco ++ ")"

totalItens :: [Item] -> Double
totalItens itens =
    sum (map (\(Item _ _ preco) -> preco) itens)

valorFinal :: Compra -> Double
valorFinal compra
    | status == Cancelada = 0.0
    | total > 200         = total * 0.9
    | otherwise           = total

    where
        (Compra itens status) = compra
        total = totalItens itens

descreverTodosItens :: Compra -> [String]
descreverTodosItens (Compra itens _) =
    map descreverItem itens

main :: IO ()
main = do
    putStrLn "\n--- Lojas de Hyrule ---"
    putStrLn $ "Loja: " ++ nomedaLoja

    let compra =
            Compra
                [ Item "Master Sword" "Arma" 200.00
                , Item "Hylian Shield" "Escudo" 70.00
                , Item "Poção Verde" "Consumivel" 15.00
                ]
                Concluida

    putStrLn "\nItens da compra:" 
    mapM_ putStrLn (descreverTodosItens compra)

    putStrLn $ "\nValor final da compra: R$ " ++ show (valorFinal compra)
