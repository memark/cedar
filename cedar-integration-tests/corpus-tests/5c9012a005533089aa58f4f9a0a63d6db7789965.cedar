permit(
  principal == a::"\0",
  action == Action::"action",
  resource
) when {
  true && (a::"\0" like "*88+8")
};
