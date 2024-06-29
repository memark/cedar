forbid(
  principal is a in a::"",
  action == Action::"action",
  resource
) when {
  ((true && (principal == Action::"action")) && principal) && principal
};
