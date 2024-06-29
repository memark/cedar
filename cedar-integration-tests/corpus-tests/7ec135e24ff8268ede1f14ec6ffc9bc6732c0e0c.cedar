permit(
  principal == a::"",
  action == Action::"action",
  resource
) when {
  true && (principal has "")
};
