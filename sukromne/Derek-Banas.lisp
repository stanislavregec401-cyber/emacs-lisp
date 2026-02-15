 (format t "hello world~%")


(print "what is your name")
(defvar *name* (read))

(defun hello-you (*name*)
(format t "hello ~a! ~%" *name*)
  )

(setq *print-case* :capitalize) ; :upcase :downcase

(hello-you *name*)

;;; ~a : shows the value
;;; ~s : shows quotes around the value
;;; ~10a : adds 10 spaces for the value with extra space t
;;; ~10@a : adds 10 spaces for the value with extra space


; 10 minuta

(defvar *number* 7)

(setf *number* 10)

(format t "Number with commas ~:d" 1000000)


(defparameter *name* 'Derek)

;;(format t "(eq *name* 'Derek) = ~d ~%" (eq *name* 'Derek))

(equal (list 1 2 3) (list 1 2 3))



(defvar *age* 18)

(if (= *age* 18)
    (format t " he can vote~%")
    (format t " he cannot vote~%"))

(defvar *age* 18)

(if (not (= *age* 18))
    (format t " he can vote~%")
    (format t " he cannot vote~%"))


)


(if (or (<= *age* 14) (>= *age* 67))
    (format t "time for work~%")
(format t "not work for him~%"))


(if (and (>= *age* 15) (<= *age* 66))
    (format t "time for work~%")
    (format t "not work for him~%"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defvar *num* 2)
(defvar *num-2* 2)
(defvar *num-3* 2)

(if (= *num* 2)
(progn
  (setf *num-2* (* *num-2* 2))
  (setf *num-3* (* *num-3* 3))
  )

(format t "not equal to 2~%"))

(format t "*num-2* = ~d ~%" *num-2*)
(format t "*num-3* = ~d ~%" *num-3*)


;;;;;;;;;



(setf *age* 5)

(defun get-school (age)
  (case age
    ((0 1 2 3 4) "preschool")
    (5 "kindergarten age")
    (6 "first grade")
    ((7 8 9 10 11) "elementary school")
    ((12 13 14) "middle school")
    ((15 16 17 18) "high school")
    (otherwise "college or adult")))

(format t "Age ~d: ~a~%" *age* (get-school *age*))

 (dolist (age '(3 5 6 8 13 16 25))
  (format t "Age ~2d: ~a~%" age (get-school age)))

(terpri)

(setf *age* 18)

(when (= *age* 18)
(setf *num-3* 18)
(format t "go to college you are ~d ~%" *num-3*))


(unless (not (= *age* 18))
  (setf *num-3* 20)
  (format t "something random ~d ~%" *num-3*))


(defvar *age* 18)
(defvar *num-3* 5)
(defvar *college-ready* nil)

(cond (( >= *age* 18)
       (setf *college-ready* 'yes)
       (format t "ready for college"))

((< *age* 18)
     (setf *college-ready* 'no)
      (format t "not ready for college"))

(t (format t "do not know ~%")))

     
(loop for x from 1 to 10
do (print x))

(setf x 1)

(loop (format t "~d ~%" x)
(setf x (+ x 1))
(when (> x 10) (return x))
)



(loop for x in '(Peter Paul Mary) do
(format t "~s ~%" x)
)


(loop for y from 100 to 110 do
(print y)
)




(dotimes (z 12)
(print z))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(cons 'superman 'batman)

(list 'superman 'batman 'flash)

(cons 'aquaman '(superman batman))

(format t "first = ~a ~%" (car '(superman batman aquaman)))

(format t "everything else = ~a ~%" (cdr '(superman batman aquaman)))

(format t "2nd item = ~a ~%" (cadr '(superman batman aquaman flash joker)))


(format t "3,4,5 item = ~a ~%" (cddr '(superman batman aquaman flash joker)))

(format t "4,5 item = ~a ~%" (cdddr '(superman batman aquaman flash joker)))

(format t "4th item = ~a ~%" (cadddr '(superman batman aquaman flash joker)))

(format t "5th item = ~a ~%" (cddddr '(superman batman aquaman flash joker)))


(format t "is it a list = ~a ~%" (listp '(batman superman)))

(format t "is 3 in list = ~a ~%" (if (member 3 '(2 4 6)) 't nil))

(append '(just) '(some) '(random words))

(defparameter *nums* '(2 4 6))
(push 1 *nums*)

(format t "2nd item in list ~a ~%" (nth 2 *nums*))


;;;;;;;;;;;;;;;;;;;;;;;;;34 minuta videa

(defvar superman (list :name "Superman" :secret-id "Stano Regec"))
(defvar *hero-list* nil)
(setf *hero-list* (list superman))

(dolist (hero *hero-list*)
  (format t "Name: ~a, Secret ID: ~a~%"
          (getf hero :name)
          (getf hero :secret-id)))


(defparameter *heroes*
  '((Superman ((Stano Regec)))
    (Flash (Tato Bubo))
    (Batman (Fero Hruska))))

(format t "Superman Data ~a ~%" (assoc 'Superman *heroes*))

(format t "Superman Data ~a ~%" (cadr (assoc 'Superman *heroes*)))

(defparameter *hero-size*
  '((Superman (1m 70cm) ( 85kg))
    (Flash (1m 80cm) ( 120kg))
    (Batman (1m 90cm ( 99kg)))))

(format t "Superman is ~a ~%" (cadr (assoc 'Superman *hero-size*)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;38:40 min;;;;;;;;;;;;;;;;;;;;;;;;

(defvar *total* 0)

(defun sum (&rest nums)
  (dolist (num nums)
    (setf *total* (+ *total* num))
    )
  (format t "sum = ~a ~%" *total*)  )

(sum 1 2 3 4 7 8)

;;;;;;;;;;;;;;;;;;;;;;;;41:18;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun print-list (&optional &key x y z)
  (format t "List: ~a ~%" (list x y z) ) )

(print-list :x 1 :y 2)

(defun difference (num1 num2)
  (return-from difference (- num1 num2)))

(difference 20 5)


(defparameter *hero-size*
  '((Superman (1m 70cm) ( 85kg))
    (Flash (1m 80cm) ( 120kg))
    (Batman (1m 90cm ( 99kg)))))

(defun get-hero-data (size)
  (format t "~a ~%"
	 `(,(caar size) is,(cadar size) and,(cddar size))))

(get-hero-data *hero-size*)

(format t "A number ~a ~%" (mapcar #'numberp '(1 2 3 f g)))

(labels ((double-it (num)
	   (* num 2))
	 (triple-it (num)
	   (* (double-it num) 3 )))
  (format t "Double & Triple 2 = ~d~%" (triple-it 3)))

;;;;;;;;;;;;;;;;;;;;;;;;;;;47:58;;;;;;;;;;;;;;;;;;;;;;;;

(defun squares (num)
  (values (expt num 2) (expt num 3)))

 (multiple-value-bind (a b) (squares 2)
           (format t "2^2 = ~d, 2^3 = ~d~%" a b))



(defun times-3 (x) (* 3 x))
(defun times-4 (x) (* 4 x))

(defun multiples (mult-func max-num)
  (dotimes (x max-num)

    (format t "~d : ~d ~%" x (funcall mult-func x))))

(multiples #'times-3 10)
(multiples #'times-4 10)

;;;;;;;;;;;;;;;;;;;;;;50:18;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(mapcar (lambda (x) (print (* x 2))) '(1 2 3 4 5))

(funcall (lambda (x) (print (* x 2)))7); pokus

(defparameter m (funcall (lambda (x) (* x 2))7))
(print m)
(* m 10)

;;;;;;;;;;;;;;;;;;;;;;;;52:02;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defvar *num* 2)
(defvar *num-2* 0)

(if (= *num* 2)
    (progn
      (setf *num-2* 2)
      (format t "*num-2* = ~d ~%" *num-2*))
(format t "Not equal to 2 ~%"))

;;;;;;;;;;;;;;;;;;;;

(defmacro ifit (condition &rest body)
  `(if , condition (progn ,@body) (format t "cannot drive ~%")
	 ))
(setf *age* 16)

(ifit (>= *age* 16)
      (print "you are over 16")
      (print "time to drive")
      (terpri))

#|
Gemini said

Jasné, poďme si tento kód rozobrať riadok po riadku. Je to skvelý príklad toho, ako fungujú makrá v Common Lispe.
1. Definícia makra ifit
Lisp

(defmacro ifit (condition &rest body)

    defmacro: Kľúčové slovo, ktoré hovorí Lispu: "Nedefinujem funkciu, ale makro." Makro nezoberie hodnoty argumentov, ale ich kód a pred spustením ho transformuje na iný kód.

    ifit: Názov nášho nového makra.

    (condition &rest body): Toto sú parametre makra.

        condition: Jeden výraz (podmienka).

        &rest body: Zoberie všetky zvyšné výrazy, ktoré napíšeme pri volaní makra, a uloží ich do jedného zoznamu s názvom body.

Lisp

  `(if ,condition (progn ,@body) (format t "cannot drive ~%")))

    ` (Backtick): Hovorí Lispu: "Toto je šablóna pre kód, ktorý sa má vygenerovať."

    ,condition (Comma): Hovorí: "Vlož sem hodnotu premennej condition (tú, ktorú sme dostali pri volaní)."

    (progn ,@body) (Comma-at): Toto je kľúčová časť. ,@body zoberie zoznam výrazov z body a "rozbalí" ich dovnútra funkcie progn. progn zaručí, že ak je podmienka pravdivá, vykonajú sa všetky príkazy jeden po druhom.

    (format t "cannot drive ~%"): Toto je kód, ktorý sa vykoná, ak je condition nepravdivá (else vetva).

2. Nastavenie dát
Lisp

(setf *age* 16)

    setf: Funkcia na priradenie hodnoty premennej.

    *age*: Globálna premenná, do ktorej ukladáme hodnotu 16. Hviezdičky * sú konvencia v Lispe pre globálne premenné (tzv. "earmuffs").

3. Volanie makra ifit
Lisp

(ifit (>= *age* 16)

    ifit: Voláme naše makro.

    (>= *age* 16): Toto je argument condition. Lisp skontroluje, či je 16 väčšie alebo rovné 16 (čo je pravda).

Lisp

      (print "you are over 16")
      (print "time to drive")
      (terpri))

    (print "..."), (print "..."), (terpri): Tieto tri príkazy tvoria argument &rest body.

        print: Vypíše reťazec a zakaždým pridá nový riadok.

        terpri: Vypíše dodatočný nový riadok (terrible print).

Čo sa stane po spustení:

    Makro ifit sa rozšíri na:
    Lisp

    (if (>= 16 16)
        (progn (print "you are over 16") (print "time to drive") (terpri))
        (format t "cannot drive ~%"))

    Podmienka (>= 16 16) je pravdivá.

    Vykona sa progn a v konzole uvidíš:

    "you are over 16" 
    "time to drive" 

|#

(defun add (num1 num2)
(let ((sum (+ num1 num2)))
  (format t "~a + ~a = ~a ~%" num1 num2 sum)))

(defmacro letx (var val &rest body)
`(let ((,var ,val)) ,@body))

(defun subtract (num1 num2)
(letx dif (- num1 num2)
      (format t "~a - ~a = ~a ~%" num1 num2 dif)))

(subtract 10 6)
  
#|
 Gemini said

Tento kód ukazuje pekný prechod od jednoduchej funkcie k použitiu makra na zjednodušenie syntaxe. Poďme si to rozobrať na tri časti:
1. Funkcia add
Lisp

(defun add (num1 num2)

    defun: Kľúčové slovo pre definíciu pomenovanej funkcie.

    add: Názov funkcie.

    (num1 num2): Parametre funkcie (dve čísla, ktoré ideme sčítať).

Lisp

  (let ((sum (+ num1 num2)))

    let: Lokálna premenná. Slúži na to, aby sme si vypočítaný výsledok uložili do dočasnej premennej sum, ktorú použijeme len vo vnútri tejto funkcie.

    sum: Názov našej lokálnej premennej.

    (+ num1 num2): Výpočet, ktorého výsledok sa priradí do sum.

Lisp

    (format t "~a + ~a = ~a ~%" num1 num2 sum)))

    format t: Funkcia na formátovaný výpis do konzoly.

    "~a + ~a = ~a ~%": Formátovací reťazec. ~a sú zástupné znaky pre argumenty (num1, num2, sum), ~% znamená nový riadok.

    num1 num2 sum: Hodnoty, ktoré sa doplnia za ~a.

2. Makro letx
Lisp

(defmacro letx (var val &rest body)

    defmacro: Definujeme makro. Toto makro má za cieľ zjednodušiť zápis let.

    letx: Názov makra.

    var val &rest body: Parametre makra. Očakáva názov premennej (var), jej hodnotu (val) a kód, ktorý sa má vykonať (body).

Lisp

  `(let ((,var ,val)) ,@body))

    ` (Backtick): Šablóna pre kód.

    (let ((,var ,val)): Toto makro expanduje (preloží sa) na klasický let.

    ,@body: Rozbalí telo kódu, ktoré sa má vykonať vnútri let-u.

3. Funkcia subtract
Lisp

(defun subtract (num1 num2)

    Definícia funkcie subtract s dvoma parametrami.

Lisp

  (letx dif (- num1 num2)

    letx: Tu používame naše makro. Je to prehľadnejšie ako klasické zátvorkovanie (let ((dif (- ...)))).

    dif: Názov lokálnej premennej pre rozdiel.

    (- num1 num2): Výpočet rozdielu.

Lisp

      (format t "~a - ~a = ~a ~%" num1 num2 dif)))

    Výpis výsledku do konzoly.

Ako by si tieto funkcie zavolal?
Lisp

(add 5 3)
;; Výstup: 5 + 3 = 8

(subtract 10 4)
;; Výstup: 10 - 4 = 6

Chceš vyskúšať rozšíriť funkciu add tak, aby vracala výsledok (sum) namiesto toho, aby ho len vypísala?
|#

;;;;;;;;;;;;;;;;;;;;;;;;;56:00;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defclass animal ()
  (name
   Sound))

(defparameter *dog* (make-instance 'animal))

(setf (slot-value *dog* 'name) "Spot")

(setf (slot-value *dog* 'sound) "HafHaf")

(format t "~a says ~a ~%"
	(slot-value *dog* 'name)
(slot-value *dog* 'sound ))

(defclass mammal ()
  ((name
    :initarg :name
    :initform (error "Must provide a name"))
   (sound
    :initarg :sound
    :initform "no sound"
    :accessor mammal-sound
    )))

(defparameter *king-kong*
(make-instance 'mammal :name "King Kong" :sound "Rrrrrrhhh")
)


(format t "~a says ~a ~%"
(slot-value *king-kong* 'name)
(slot-value *king-kong* 'sound))

(defparameter *fluffy*
(make-instance 'mammal :name "fluffy" :sound "mnau-mnau")
  )

(defgeneric make-sound (mammal))

(defmethod make-sound ((the-mammal mammal))  
(format t "~a says ~a ~%"
(slot-value the-mammal 'name)
(slot-value the-mammal 'sound)))	

(make-sound *king-kong*)
(make-sound *fluffy*)

(defgeneric (setf mammal-name) (value the-mammal))

(defmethod (setf mammal-name) (value (the-mammal mammal))
  (setf (slot-value the-mammal 'name) value))

(defgeneric mammal-name (the-mammal))

(defmethod mammal-name ((the-mammal mammal))
(slot-value the-mammal 'name))

(setf (mammal-name *king-kong*) "Kong")

(format t "I am ~a ~%" (mammal-name *king-kong*))

(setf (mammal-sound *king-kong*) "rawwwwwwwhhhh")

(format t "I am ~a ~%" (mammal-sound *king-kong*))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;1:05;;;;;;;;;;;;;;;;;;;;;

(defclass dog (mammal) ())

(defparameter *rover*
(make-instance 'dog :name "Rover" :sound "hafhaf-ja som Rover"))

(make-sound *rover*)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defparameter names (make-array 3))

(setf (aref names 1) 'Bob)

(format t "~a ~%" (aref names 1))

(setf num-array (make-array '(3 3)
			    :initial-contents '((0 1 2) (3 4 5) (6 7 8))))

(dotimes (x 3)
  (dotimes (y 3)
    (print (aref num-array x y))
    ))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defparameter people (make-hash-table))

(setf (gethash '102 people) '(Paul Regec))

(setf (gethash '103 people) '(David Regec))

(format t "~a ~%" (gethash '102 people))

(maphash #'(lambda (k v) (format t "~a = ~a ~%" k v)) people)

(remhash '103 people)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defstruct customer name address id)

(setf paulsmith
      (make-customer
       :name "Paul Smith"
       :address "Tatranska 123"
       :id 1000))

(format t "~a " (customer-name paulsmith))

(setf (customer-address paulsmith) "134 Kosice")

(write paulsmith)

(setf sally-smith-1001 (make-customer
			:name "Sally Smith"
			:address "126 Main"
			:id 1001))

(write sally-smith-1001)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(with-open-file (my-stream
                 "test.txt"
                 :direction :output
                 :if-exists :supersede)
  (princ "Some random text" my-stream))




(let ((in (open "test.txt" :if-does-not-exist nil)))
  (when in
    (loop for line = (read-line in nil)
	  while line do (format t "~a~%" line))
    (close in)
    ))
;;;ale da sa to aj takto:

(with-open-file (in "test.txt")
  (loop for line = (read-line in nil)
        while line do (format t "~a~%" line)))




