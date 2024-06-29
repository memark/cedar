permit(
  principal,
  action,
  resource == a::""
) when {
  true && (Action::"action"["\0"])
};
