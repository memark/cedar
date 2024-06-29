permit(
  principal,
  action,
  resource
) when {
  true && ((!(a::"" has "")) == (principal has ""))
};
