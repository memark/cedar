permit(
  principal == a::"z",
  action == Action::"action",
  resource
) when {
  true && (false in a::"z")
};
