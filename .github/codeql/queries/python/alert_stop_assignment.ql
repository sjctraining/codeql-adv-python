/**
 * @name Assignment of "STOP!!!!" to 'a'
 * @description Alerts when the variable 'a' is assigned the literal string "STOP!!!!".
 * @kind problem
 * @problem.severity error
 * @id python/stop-variable-assignment
 */

import python

from AssignStmt assignment, StringLiteral string_value
where
  // Check if the assigned value is a string literal
  assignment.getRhs() = string_value and
  // Check if the string literal's value is exactly "STOP!!!!"
  string_value.getValue() = "STOP!!!!" and
  // Check if 'a' is among the assigned targets
  exists(Name target |
    target = assignment.getLhs() and
    target.getId() = "a"
  )
select assignment, "Variable 'a' is assigned the string literal \"STOP!!!!\""
