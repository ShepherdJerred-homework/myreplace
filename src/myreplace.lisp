(defun myreplace (old new target)
  ()
)

(myreplace 'name 'joe '(name is my favorite name)) ; => (joe is my favorite joe)
(myreplace 'name 'joe 'name)                       ; => joe
(myreplace 'name 'joe nil                          ; => nil

