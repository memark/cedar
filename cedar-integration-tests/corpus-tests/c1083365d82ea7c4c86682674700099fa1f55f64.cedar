forbid(
  principal,
  action,
  resource
) when {
  (true && (a::"" in ((if principal then principal else principal) || principal))) && principal
};
