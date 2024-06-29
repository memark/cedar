permit(
  principal == a::"\0",
  action == Action::"action",
  resource
) when {
  true && (Action::"action" like "u\u{6}**\0\0")
};
