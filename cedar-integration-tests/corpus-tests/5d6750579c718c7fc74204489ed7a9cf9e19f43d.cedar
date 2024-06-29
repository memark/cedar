permit(
  principal == a::"\0",
  action in [Action::""],
  resource
) when {
  true && (Action::"".containsAny(false))
};
