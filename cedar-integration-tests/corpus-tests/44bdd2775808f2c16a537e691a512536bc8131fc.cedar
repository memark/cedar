permit(
  principal,
  action == Action::"action",
  resource is a in a::"\0s"
) when {
  true && action
};
