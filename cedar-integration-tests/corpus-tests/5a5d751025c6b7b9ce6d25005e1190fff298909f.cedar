@A("")
forbid(
  principal,
  action in [Action::"action"],
  resource is a in a::""
) when {
  ((true && (((a::"" is a) like "") in principal)) && principal) && principal
};
