forbid(
  principal in a::"",
  action == Action::"action",
  resource in a::""
) when {
  (true && (true == (if (if principal then principal else principal) then principal else principal))) && principal
};
