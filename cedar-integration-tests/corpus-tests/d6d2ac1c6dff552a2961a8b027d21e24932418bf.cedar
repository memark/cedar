forbid(
  principal == a::"",
  action in [Action::"action"],
  resource
) when {
  true && (true in (Action::"action" is a))
};
