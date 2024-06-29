permit(
  principal is a in a::"",
  action in [Action::"action",Action::"action"],
  resource is a
) when {
  true && (Action::"action" in context)
};
