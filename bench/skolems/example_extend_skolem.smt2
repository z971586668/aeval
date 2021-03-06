(declare-fun $prop3$3 () Bool)
(declare-fun $prop2$3 () Bool)
(declare-fun $prop1$3 () Bool)
(declare-fun $state$3 () Int)
(declare-fun $prop4$3 () Bool)
(declare-fun $bias$3 () Int)
(declare-fun $prop_all$3 () Bool)
(declare-fun $bias_max$0 () Bool)
(declare-fun $bias_max$3 () Bool)
(declare-fun $state$0 () Int)
(declare-fun $x$1 () Bool)
(declare-fun $bias$0 () Int)

(assert (let ((a!1 (and (not $x$1)
                (not (<= 3 $bias$0))
                (not (<= $bias$0 (- 1)))
                (not $bias_max$0)
                (or (not (= $state$0 0)) (not $x$1))
                (or (not (= $state$0 0)) $x$1)))
      (a!2 (or $bias_max$0
               (>= (+ (- 1) $bias$0) 2)
               (<= (+ (- 1) $bias$0) (- 0 2))))
      (a!3 (or (= (+ (- 1) $bias$0) 0) (not (= 3 0))))
      (a!4 (or (not (and (= $state$0 0) $x$1)) (= 3 2)))
      (a!5 (or (not (and (= $state$0 0) (not $x$1))) (= 3 1)))
      (a!7 (and (not $x$1)
                (not (<= 3 $bias$0))
                (not (<= $bias$0 (- 1)))
                (not $bias_max$0)
                (or (not (= $state$0 0)) (not $x$1))))
      (a!8 (or (= (+ (- 1) $bias$0) 0) (not (= 1 0))))
      (a!9 (or (not (and (= $state$0 0) $x$1)) (= 1 2)))
      (a!12 (and (not $x$1)
                 (or (>= $bias$0 3) (<= $bias$0 (- 1)) $bias_max$0)
                 (or (not (= $state$0 0)) (not $x$1))
                 (or (not (= $state$0 0)) $x$1)))
      (a!13 (and (or (and $x$1 (= $bias$0 (- 1)))
                     (and (not $x$1) (= $bias$0 1)))
                 (not $bias_max$0)
                 (or (not (= $state$0 0)) (not $x$1))
                 (or (not (= $state$0 0)) $x$1)))
      (a!14 (= $bias_max$3 (or $bias_max$0 (>= 0 2) (<= 0 (- 0 2)))))
      (a!15 (and $x$1
                 (or (>= $bias$0 1) (<= $bias$0 (- 3)) $bias_max$0)
                 (or (not (= $state$0 0)) (not $x$1))
                 (or (not (= $state$0 0)) $x$1)))
      (a!16 (or $bias_max$0 (>= (+ 1 $bias$0) 2) (<= (+ 1 $bias$0) (- 0 2))))
      (a!17 (or (not (= 3 0)) (= (+ 1 $bias$0) 0)))
      (a!18 (and $x$1
                 (not (<= 1 $bias$0))
                 (not (<= $bias$0 (- 3)))
                 (not $bias_max$0)
                 (or (not (= $state$0 0)) $x$1)))
      (a!19 (or (= (+ 1 $bias$0) 0) (not (= 2 0))))
      (a!20 (or (not (and (= $state$0 0) (not $x$1))) (= 2 1))))
(let ((a!6 (and (= $bias$3 (+ (- 1) $bias$0))
                (= $bias_max$3 a!2)
                (= $prop1$3 a!3)
                (= $state$3 3)
                (= $prop2$3 a!4)
                (= $prop3$3 a!5)
                (= $prop4$3 true)
                (= $prop_all$3 (and true a!5 a!3 a!4))))
      (a!10 (= $prop_all$3 (and (or (not a!2) (= 1 3)) true a!8 a!9)))
      (a!21 (= $prop_all$3 (and (or (not a!16) (= 2 3)) a!20 true a!19))))
(let ((a!11 (and (= $bias$3 (+ (- 1) $bias$0))
                 (= $bias_max$3 a!2)
                 (= $prop1$3 a!8)
                 (= $state$3 1)
                 (= $prop2$3 a!9)
                 (= $prop3$3 true)
                 (= $prop4$3 (or (not a!2) (= 1 3)))
                 a!10))
      (a!22 (and (= $bias$3 (+ 1 $bias$0))
                 (= $bias_max$3 a!16)
                 (= $prop1$3 a!19)
                 (= $state$3 2)
                 (= $prop2$3 true)
                 (= $prop3$3 a!20)
                 (= $prop4$3 (or (not a!16) (= 2 3)))
                 a!21)))
(let ((a!23 (ite a!15
                 (and (= $bias$3 (+ 1 $bias$0))
                      (= $bias_max$3 a!16)
                      (= $prop1$3 a!17)
                      (= $state$3 3)
                      (= $prop2$3 a!4)
                      (= $prop3$3 a!5)
                      (= $prop4$3 true)
                      (= $prop_all$3 (and true a!5 a!4 a!17)))
                 (ite a!18 a!22 true))))
(let ((a!24 (ite a!13
                 (and (= $bias$3 0)
                      a!14
                      (= $prop1$3 true)
                      (= $state$3 3)
                      (= $prop2$3 a!4)
                      (= $prop3$3 a!5)
                      (= $prop4$3 true)
                      (= $prop_all$3 (and true a!5 true a!4)))
                 a!23)))
  (ite a!1 a!6 (ite a!7 a!11 (ite a!12 a!6 a!24)))))))))
(check-sat)
