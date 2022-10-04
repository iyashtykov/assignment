(write-line "Hello World")
; Writing to a file

(with-open-file (file "helloworld.txt" :direction :output
:if-exists :supersede
:if-does-not-exist :create)

; Here :supersede supersedes (replaces) the preexisting file and
; the :direction :output ensures that the file is
; opened for the writing purpose.
; FREEZE CODE BEGIN
(dolist (line '("Banana" "Guava" "Apple" "Cherry" "Mango"
						"Strawberry" "Pineapple" "Avocado"
))

(write-line line file)))
; FREEZE CODE END
; Since with open file is used so file is closed automatically
; Reading from a file

(let ((in (open "helloworld.txt" :if-does-not-exist nil)))

; :if does not exist set to null means there's
; no file to read from so indicate failure
	
(when in

(loop for line = (read-line in nil)

while line do (format t "~a~%" line))

(close in)
)
)
; stream" in" is closed with close command at last
