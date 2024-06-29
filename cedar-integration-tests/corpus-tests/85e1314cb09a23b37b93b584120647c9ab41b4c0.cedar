permit(
  principal == a::"non_scope_constraint?\t\04",
  action,
  resource is a in a::"non_scope_constraint?\t\04"
) when {
  true
};
