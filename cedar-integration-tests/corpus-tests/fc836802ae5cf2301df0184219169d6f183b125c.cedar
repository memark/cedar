permit(
  principal == a::"\0\0\0\0\u{b}\0\0",
  action == Action::"action",
  resource
) when {
  true && (Action::"action" like "*")
};
