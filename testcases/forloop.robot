*** Test Cases ***
#forloop1
 #   FOR    ${i}    IN  1 2 2 3 4 5
  #  log to console      ${i}
   # END
 #forloop2
  #  FOR     ${i}    IN  1  2  3  4  5
   # log to console  ${i}
    #END
forloop3
    @{fruits}   create list  "mango"  "gova"  "banana"  "apple"  "grape"
    FOR     ${i}    IN  @{fruits}
    log to console  ${i}
    exit for loop if  ${i}=="apple"
    END