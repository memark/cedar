permit(
  principal,
  action,
  resource
) when {
  (true && (([a::"\u{7ae}", false, principal, principal] == principal)[""])) && principal
};
