
(defstruct item
  nome
  tipo
  preco
  forcaMagica)


(defparameter *catalogo*
  (list
    (make-item :nome "Katana Longa"    :tipo "Arma"     :preco 100.0  :forcaMagica 90)
    (make-item :nome "Espada Longa"     :tipo "Arma"     :preco 80.0   :forcaMagica 70)
    (make-item :nome "Pocao de Cura"     :tipo "Pocao"    :preco 20.0   :forcaMagica 30)
    (make-item :nome "Anel da Ira"    :tipo "Artefato" :preco 150.0  :forcaMagica 95)
    (make-item :nome "Pocao de Mana"     :tipo "Pocao"    :preco 25.0   :forcaMagica 40)))


(defun adicionaImposto (preco)
  (* preco 1.15))

(defun bonusMaldicao (forca)
  (cond
    ((> forca 80) (* forca 1.5))
    (T forca)))

(defun descricaoVenda (item)
  (format NIL "~a | Preco: R$~,2f | Forca Magica: ~,1f"
          (item-nome item)
          (item-preco item)
          (item-forcaMagica item)))

(defun processaVenda (catalogo)

  (let*
    ((armas
      (remove-if-not
        (lambda (item)
          (string= (item-tipo item) "Arma"))
        catalogo))

     (com-imposto
      (mapcar
        (lambda (item)
          (make-item
            :nome (item-nome item)
            :tipo (item-tipo item)
            :preco (adicionaImposto (item-preco item))
            :forcaMagica (item-forcaMagica item)))
        armas))

     (com-bonus
      (mapcar
        (lambda (item)
          (make-item
            :nome (item-nome item)
            :tipo (item-tipo item)
            :preco (item-preco item)
            :forcaMagica
            (bonusMaldicao (item-forcaMagica item))))
        com-imposto)))

    (mapcar
      (lambda (item)
        (descricaoVenda item))
      com-bonus)))

(defun main ()

  (format t "~%--- Resultado das Vendas ---~%")

  (dolist (linha (processaVenda *catalogo*))
    (format t "~a~%" linha)))

(main)
