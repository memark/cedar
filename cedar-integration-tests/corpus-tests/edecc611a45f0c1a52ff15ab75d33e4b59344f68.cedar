permit(
  principal == a::"",
  action in [Action::"action"],
  resource
) when {
  ((true && (!a::"")) && (((if principal then principal else principal) + principal) + principal)) && principal
};
