/**
 * @name Always Alert
 * @description This query always raises an alert. Useful for testing CodeQL setup.
 * @kind problem
 * @problem.severity warning
 * @id python/always-alert
 */

import python

from Module mod
where mod.getName() = mod.getName()  // Always true
select mod, "This is a test alert that always triggers..."
