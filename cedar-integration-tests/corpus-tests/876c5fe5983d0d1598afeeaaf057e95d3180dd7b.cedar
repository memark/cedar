permit(
  principal,
  action == Action::"action",
  resource == a::"*"
) when {
  true && (!("" || (a::"*" == action)))
};
