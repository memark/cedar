permit(
  principal,
  action,
  resource
) when {
  ((true && a::"") && (!(![false, principal, principal]))) && principal
};
