permit(
  principal,
  action,
  resource is a in a::""
) when {
  (true && (((context has "") == (!principal)) in principal)) && principal
};
