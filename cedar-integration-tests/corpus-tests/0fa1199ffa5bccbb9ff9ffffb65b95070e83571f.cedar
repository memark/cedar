permit(
  principal == a::"",
  action == Action::"action",
  resource
) when {
  ((true && (resource like "****")) && (((!false) == (!principal)) == principal)) && principal
};
