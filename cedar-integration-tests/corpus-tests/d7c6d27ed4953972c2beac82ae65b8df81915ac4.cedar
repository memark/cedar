permit(
  principal == a::"1",
  action in [Action::"action",Action::"action"],
  resource
) when {
  true && (!((true.contains(false)) in ("" is a)))
};
