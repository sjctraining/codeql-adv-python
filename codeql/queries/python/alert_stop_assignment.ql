/**
 * @name Hardcoded STOP!! value in JC
 * @description Detects assignment of the string "STOP!!" to the variable JC.
 * @kind problem
 * @problem.severity error
 * @id python/jc-stop-critical
 */

import python

from AssignExpr assign, Name var, Expr rhs
where
  assign.getTarget() = var and
  var.getId() = "JC" and
  assign.getValue() = rhs and
  rhs instanceof StringConstant and
  rhs.getStringValue() = "STOP!!"
select assign, "Critical alert: JC is set to 'STOP!!'."
