nomeRepositorio :: String
nomeRepositorio = "Cafe Leblanc"

data Bebida = Bebida String String Double

data StatusPedido = Aberto | Entregue | Cancelado
    deriving (Eq)

data Pedido = Pedido [Bebida] StatusPedido

descreverBebida :: Bebida -> String
descreverBebida l =
    let (Bebida nome tipo preco) = l
    in nome ++ " - " ++ tipo ++ " (R$ " ++ show preco ++ ")"

valorPedido :: Pedido -> Double
valorPedido pedido
    | status == Cancelado = 0.0
    | otherwise = sum (map (\(Bebida _ _ preco) -> preco) bebidas)

    where
        (Pedido bebidas status) = pedido

descreverTodasBebidas :: Pedido -> [String]
descreverTodasBebidas (Pedido bebidas _) =
    map descreverBebida bebidas

primeiraBebida :: Pedido -> String
primeiraBebida (Pedido [] _) =
    "Nenhuma bebida encontrada."

primeiraBebida (Pedido ((Bebida nome _ _):_) _) =
    "Primeira bebida: " ++ nome

main :: IO ()
main = do
    putStrLn "\n--- Cafe Leblanc ---"
    putStrLn $ "Cafeteria: " ++ nomeRepositorio

    let pedido1 =
            Pedido
                [ Bebida "Cafe Gourmet" "Cafe" 18.00
                , Bebida "Cappuccino" "Cafe" 15.00
                , Bebida "Cafe Expresso" "Cafe" 5.00
                ]
                Entregue

    let pedido2 =
            Pedido
                [ Bebida "Chocolate Quente" "Chocolate" 8.00
                , Bebida "Cafe Longo" "Cafe" 6.00
                ]
                Cancelado

    putStrLn "\nBebidas do Pedido 1:"
    mapM_ putStrLn (descreverTodasBebidas pedido1)

    putStrLn $
        "\nValor total do Pedido 1: R$ " ++ show (valorPedido pedido1)

    putStrLn $ primeiraBebida pedido1

    putStrLn "\nBebidas do Pedido 2:"
    mapM_ putStrLn (descreverTodasBebidas pedido2)

    putStrLn $
        "\nValor total do Pedido 2: R$ " ++ show (valorPedido pedido2)

    putStrLn $ primeiraBebida pedido2
