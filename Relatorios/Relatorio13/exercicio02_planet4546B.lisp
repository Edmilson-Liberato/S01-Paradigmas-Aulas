
(defstruct criatura
  nome
  ambiente
  periculosidade
  vidaMedia)

(defparameter *catalogo*
  (list
    (make-criatura :nome "Peeper"            :ambiente "Safe Shallows"  :periculosidade "Baixa" :vidaMedia 5)
    (make-criatura :nome "Reaper Leviathan"  :ambiente "Crash Zone"     :periculosidade "Alta"  :vidaMedia 80)
    (make-criatura :nome "Crabsquid"         :ambiente "Deep"           :periculosidade "Media" :vidaMedia 20)
    (make-criatura :nome "Ghost Leviathan"   :ambiente "Deep"           :periculosidade "Alta"  :vidaMedia 100)))

(defun filtraPorPerigo (catalogo)
  (remove-if-not
    (lambda (criatura)
      (not (string= (criatura-periculosidade criatura) "Baixa")))
    catalogo))

(defun relatorioProfundidade (catalogo)
  (mapcar
    (lambda (criatura)
      (format NIL "~a: Vive em ~a"
              (criatura-nome criatura)
              (criatura-ambiente criatura)))
    (remove-if-not
      (lambda (criatura)
        (string= (criatura-ambiente criatura) "Deep"))
      catalogo)))

(defun descricaoCriatura (criatura)
  (format NIL "~a | Ambiente: ~a | Periculosidade: ~a"
          (criatura-nome criatura)
          (criatura-ambiente criatura)
          (criatura-periculosidade criatura)))

(defun main ()

  (format t "~%--- Catalogo Completo ---~%")
  (dolist (criatura *catalogo*)
    (format t "~a~%"
            (descricaoCriatura criatura)))

  (format t "~%--- Criaturas Perigosas ---~%")
  (dolist (criatura (filtraPorPerigo *catalogo*))
    (format t "~a~%"
            (descricaoCriatura criatura)))

  (format t "~%--- Relatorio de Profundidade ---~%")
  (dolist (linha (relatorioProfundidade *catalogo*))
    (format t "~a~%"
            linha)))

(main)
