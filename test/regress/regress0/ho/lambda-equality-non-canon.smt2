; COMMAND-LINE: --uf-ho
; EXPECT: sat
(set-logic UFLIA)
(set-info :status sat)
(declare-fun f (Int) Int)

(assert (= f (lambda ((x Int)) (ite (and true (= x 0)) 1 2))))

(check-sat)
