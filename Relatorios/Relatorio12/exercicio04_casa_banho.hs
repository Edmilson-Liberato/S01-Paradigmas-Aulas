nomeRepositorio :: String
nomeRepositorio = "Casa de Banhos da Yubaba"

data Servico = Servico String String Double

data StatusAtendimento = EmAndamento | Finalizado | Cancelado
    deriving (Eq)

data Atendimento = Atendimento [Servico] StatusAtendimento

descreverServico :: Servico -> String
descreverServico opcao =
    let (Servico nome tipo preco) = opcao
    in nome ++ " - " ++ tipo ++ " (R$ " ++ show preco ++ ")"

totalServicos :: [Servico] -> Double
totalServicos servicos =
    sum (map (\(Servico _ _ preco) -> preco) servicos)

valorFinalAtendimento :: Atendimento -> Double
valorFinalAtendimento atendimento
    | status == Cancelado = 0.0
    | length servicos > 3 = total * 1.25
    | otherwise           = total

    where
        (Atendimento servicos status) = atendimento
        total = totalServicos servicos

primeiroServico :: Atendimento -> String
primeiroServico (Atendimento [] _) = "Nenhum servico encontrado."

primeiroServico (Atendimento ((Servico nome _ _):_) _) = "Primeiro servico: " ++ nome

descreverTodosServicos :: Atendimento -> [String]
descreverTodosServicos (Atendimento servicos _) = map descreverServico servicos

main :: IO ()
main = do
    putStrLn "\n--- Casa de Banhos da Yubaba ---"
    putStrLn $ "Local: " ++ nomeRepositorio

    let atendimento1 =
            Atendimento
                [ Servico "Banho Termal" "Relaxamento" 50.00
                , Servico "Massagem Espiritual" "Bem-estar" 80.00
                , Servico "Limpeza de Maldicao" "Purificacao" 120.00
                , Servico "Tratamento Especial" "Premium" 100.00
                ]
                Finalizado

    let atendimento2 =
            Atendimento
                [ Servico "Banho Simples" "Relaxamento" 40.00
                , Servico "Massagem Basica" "Bem-estar" 60.00
                ]
                EmAndamento

    putStrLn "\nAtendimento 1:"
    mapM_ putStrLn (descreverTodosServicos atendimento1)
    putStrLn $ "Valor final: R$ " ++ show (valorFinalAtendimento atendimento1)
    putStrLn $ primeiroServico atendimento1

    putStrLn "\nAtendimento 2:"
    mapM_ putStrLn (descreverTodosServicos atendimento2)
    putStrLn $ "Valor final: R$ " ++ show (valorFinalAtendimento atendimento2)
    putStrLn $ primeiroServico atendimento2
