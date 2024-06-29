permit(
  principal == a::"\0",
  action == Action::"action",
  resource
) when {
  true && (Action::"action" like "ou\u{6}]")
};
