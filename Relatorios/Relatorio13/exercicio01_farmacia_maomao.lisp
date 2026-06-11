(defstruct erva
  nome
  preco-base)


(defun calculaDosagem (peso idade)
  (cond
    ((< idade 12) "10ml")
    ((< peso 40) "10ml")
    ((< idade 60) "25ml")
    (T "50ml")))


(defun ajustaPreco (erva)
  (cond
    ((string= (erva-nome erva) "Ginseng")
     (* (erva-preco-base erva) 3.0))

    ((string= (erva-nome erva) "Lotus")
     (* (erva-preco-base erva) 1.5))

    (T
     (erva-preco-base erva))))

(defun descricaoErva (erva peso idade)

  (let*
    ((preco-ajustado (ajustaPreco erva))
     (dosagem (calculaDosagem peso idade)))

    (format NIL "~a | Preco: R$~,2f | Dosagem: ~a"
            (erva-nome erva)
            preco-ajustado
            dosagem)))


(defun main ()

  (let*
    ((ginseng
      (make-erva
       :nome "Ginseng"
       :preco-base 20.00))

     (lotus
      (make-erva
       :nome "Lotus"
       :preco-base 15.00))

     (camomila
      (make-erva
       :nome "Camomila"
       :preco-base 4.00)))

    (format t "~%--- Paciente1 ---~%")
    (format t "~a~%"
            (descricaoErva ginseng 30 9))
    (format t "~a~%"
            (descricaoErva lotus 35 9))
    (format t "~a~%"
            (descricaoErva camomila 35 9))

    (format t "~%--- Paciente2 ---~%")
    (format t "~a~%"
            (descricaoErva ginseng 70 30))
    (format t "~a~%"
            (descricaoErva lotus 70 30))
    (format t "~a~%"
            (descricaoErva camomila 70 30))

    (format t "~%--- Paciente3 ---~%")
    (format t "~a~%"
            (descricaoErva ginseng 90 70))
    (format t "~a~%"
            (descricaoErva lotus 90 70))
    (format t "~a~%"
            (descricaoErva camomila 90 70))))

(main)
