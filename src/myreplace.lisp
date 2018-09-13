; Jerred Shepherd

(defun myreplace (old new target)
  (if (null target)  nil
    (if (listp target)
         (let ((curr (first target)))
           (if (listp curr)
             (append (list (myreplace old new curr)) (myreplace old new (cdr target)))
           (if (eq curr old)
             (append (list new) (myreplace old new (cdr target)))
             (append (list curr) (myreplace old new (cdr target)))
             )
           )
           )
       (if (eq target old)
         new
         target 
         )
       )
     )
    )

; (myreplace 'name 'joe '(name is my favorite name)) ; => (joe is my favorite joe)
; (myreplace 'name 'joe 'name)                       ; => joe
; (myreplace 'name 'joe nil)                         ; => nil
; (myreplace 'name 'joe '(name (name is name) name)) ; => (joe (joe is a joe) joe

