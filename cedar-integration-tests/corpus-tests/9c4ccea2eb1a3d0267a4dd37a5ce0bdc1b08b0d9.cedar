permit(
  principal,
  action == Action::"action",
  resource == a::""
) when {
  (true && (a::"" in "Q")) && resource
};
