forbid(
  principal is A in A::"",
  action in [Action::"action"],
  resource is A in A::""
) when {
  (true && (!(if principal then principal else principal))) && principal
};
