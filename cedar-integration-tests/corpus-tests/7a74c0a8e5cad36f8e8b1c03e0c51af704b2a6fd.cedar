permit(
  principal == a::"",
  action,
  resource
) when {
  true && ((!(if principal then Action::"action" else true)) like "")
};
