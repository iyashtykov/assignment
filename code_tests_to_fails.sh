mkdir -p /home/codio/workspace/code_tests_fails/javafolder
mv /home/codio/workspace/code_tests/javafolder/JavaClassStyleOk1.java /home/codio/workspace/code_tests_fails/javafolder
echo "//comment" >> /home/codio/workspace/code_tests_fails/javafolder/JavaClassStyleOk1.java
mv /home/codio/workspace/code_tests /home/codio/workspace/code_tests_passed
mv /home/codio/workspace/code_tests_fails /home/codio/workspace/code_tests