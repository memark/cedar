permit(
  principal in a::"\0\u{2}.\0\0\0\0\0",
  action == Action::"action",
  resource in a::"\0\u{2}.\0\0\0\0\0"
) when {
  true && (context[""])
};
