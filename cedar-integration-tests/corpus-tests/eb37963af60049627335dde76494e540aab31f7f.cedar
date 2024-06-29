permit(
  principal == a::"\0",
  action == Action::"action",
  resource
) when {
  true && (Action::"action" like "\u{651}\0\0\0\0߀")
};
