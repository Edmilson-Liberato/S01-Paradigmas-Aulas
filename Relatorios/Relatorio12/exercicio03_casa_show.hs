nomeRepositorio :: String
nomeRepositorio = "Casa de Shows"

data Banda = Banda String String Double

data StatusEvento = Ativo | Encerrado | Cancelado
    deriving (Eq)

data Evento = Evento [Banda] StatusEvento

descreverBanda :: Banda -> String
descreverBanda l =
    let (Banda nome genero cache) = l
    in nome ++ " - " ++ genero ++ " (R$ " ++ show cache ++ ")"

custoTotalEvento :: Evento -> Double
custoTotalEvento evento
    | status == Cancelado = 0.0
    | otherwise = totalCache * 1.2

    where
        (Evento bandas status) = evento
        totalCache = sum (map (\(Banda _ _ cache) -> cache) bandas)

bandaAbertura :: Evento -> String
bandaAbertura (Evento [] _) = "Nenhuma banda encontrada."

bandaAbertura (Evento ((Banda nome _ _):_) _) = "Banda de abertura: " ++ nome

bandaEncerramento :: Evento -> String
bandaEncerramento (Evento [] _) = "banda nao encontrada."

bandaEncerramento (Evento bandas _) = let (Banda nome _ _) = last bandas  in "Banda de encerramento: " ++ nome

descreverTodasBandas :: Evento -> [String]
descreverTodasBandas (Evento bandas _) = map descreverBanda bandas

main :: IO ()
main = do
    putStrLn "\n--- Casa de Shows ---"
    putStrLn $ "Local: " ++ nomeRepositorio

    let evento1 =
            Evento
                [ Banda "Metalica" "Rock" 10000.00
                , Banda "Coldplay" "Rock" 15000.00
                ]
                Ativo

    let evento2 =
            Evento
                [ Banda "The Killers" "Rock" 12000.00
                , Banda "Stone Sour" "Rock" 9000.00
                ]
                Encerrado

    let evento3 =
            Evento
                [ Banda "Green Day" "Rock" 11000.00
                , Banda "Muse" "Rock" 13000.00
                ]
                Cancelado

    putStrLn "\nEvento Ativo:"
    mapM_ putStrLn (descreverTodasBandas evento1)
    putStrLn $ "Custo total: R$ " ++ show (custoTotalEvento evento1)
    putStrLn $ bandaAbertura evento1
    putStrLn $ bandaEncerramento evento1

    putStrLn "\nEvento Encerrado:"
    mapM_ putStrLn (descreverTodasBandas evento2)
    putStrLn $ "Custo total: R$ " ++ show (custoTotalEvento evento2)
    putStrLn $ bandaAbertura evento2
    putStrLn $ bandaEncerramento evento2

    putStrLn "\nEvento Cancelado:"
    mapM_ putStrLn (descreverTodasBandas evento3)
    putStrLn $ "Custo total: R$ " ++ show (custoTotalEvento evento3)
    putStrLn $ bandaAbertura evento3
    putStrLn $ bandaEncerramento evento3
