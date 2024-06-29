permit(
  principal,
  action in [Action::"action"],
  resource in a::"\0"
) when {
  ((true && (((principal has "A").contains(principal)) has "A")) && principal) && principal
};
