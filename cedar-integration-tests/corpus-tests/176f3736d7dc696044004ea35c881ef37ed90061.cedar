permit(
  principal == a::"",
  action,
  resource
) when {
  true && (Action::"action" has ".\0\u{1}\0")
};
