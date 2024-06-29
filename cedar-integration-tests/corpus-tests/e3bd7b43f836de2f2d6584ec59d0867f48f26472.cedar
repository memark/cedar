permit(
  principal,
  action,
  resource
) when {
  (true && (!(!Action::"action"))) && ((!a::"") in ((principal - principal) == principal))
};
