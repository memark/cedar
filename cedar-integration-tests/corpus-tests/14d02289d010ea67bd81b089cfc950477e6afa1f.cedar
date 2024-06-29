permit(
  principal in a::"",
  action,
  resource is a in a::""
) when {
  (true && (((principal in action) in (Eiq1::"" in principal)) in principal)) && principal
};
