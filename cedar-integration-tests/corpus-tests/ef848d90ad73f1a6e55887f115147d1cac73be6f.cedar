permit(
  principal in a::"+&",
  action == Action::"action",
  resource == a::"+&"
) when {
  ((true && (!(BVu0000000000000::"" in principal))) && principal) && principal
};
