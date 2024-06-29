permit(
  principal in a::"V",
  action == Action::"action",
  resource == a::"V"
) when {
  (true && (!(!(principal["\0\0"])))) && "\t\u{2}"
};
