forbid(
  principal is a in a::"",
  action,
  resource is a in a::""
) when {
  (true && ((if principal then principal else principal) in principal)) && principal
};
