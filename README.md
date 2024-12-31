# Ada Constraint_Error Example
This repository demonstrates a scenario in Ada where the `Constraint_Error` exception is raised.  `Constraint_Error` is less frequently encountered than other exceptions like `Numeric_Error`. This example highlights how seemingly simple code can lead to this specific error.

The example involves division by zero, a situation that would throw a `Constraint_Error` if not properly checked for in Ada. The code demonstrates how such an error can be caught and handled gracefully, thus preventing program termination.