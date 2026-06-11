(defstruct local
  nome
  elemento
  dificuldade
  recompensa)


(defparameter *catalogo*
  (list
    (make-local :nome "Pyro Regisvine"     :elemento "Pyro"    :dificuldade 3 :recompensa 450)
    (make-local :nome "Electro Hypostasis" :elemento "Electro" :dificuldade 2 :recompensa 480)
    (make-local :nome "Cryo Regisvine"     :elemento "Cryo"    :dificuldade 3 :recompensa 470)
    (make-local :nome "Oceanid"            :elemento "Hydro"   :dificuldade 4 :recompensa 550)
    (make-local :nome "Stormterror"        :elemento "Anemo"   :dificuldade 2 :recompensa 520)))

(defun bonusElemental (local)

  (cond
    ((string= (local-elemento local) "Pyro")
     (* (local-recompensa local) 1.20))

    ((string= (local-elemento local) "Electro")
     (* (local-recompensa local) 1.20))

    ((string= (local-elemento local) "Cryo")
     (* (local-recompensa local) 1.10))

    (T
     (local-recompensa local))))


(defun valeAPena (local)

  (cond
    ((and
       (> (bonusElemental local) 500)
       (<= (local-dificuldade local) 3))
     T)

    (T NIL)))

(defun rotaDeFarm (catalogo)

  (mapcar
    (lambda (local)
      (format NIL "~a - Recompensa: ~,2f"
              (local-nome local)
              (bonusElemental local)))

    (remove-if-not
      (lambda (local)
        (valeAPena local))
      catalogo)))

(defun descricaoLocal (local)

  (format NIL "~a | Elemento: ~a | Dificuldade: ~a | Recompensa: ~,2f"
          (local-nome local)
          (local-elemento local)
          (local-dificuldade local)
          (bonusElemental local)))

(defun main ()

  (format t "~%--- Catalogo Completo ---~%")

  (dolist (local *catalogo*)
    (format t "~a~%"
            (descricaoLocal local)))

  (format t "~%--- Rota de Farm Recomendada ---~%")

  (dolist (linha (rotaDeFarm *catalogo*))
    (format t "~a~%"
            linha)))

(main)
