import "bootstrap";

const showOnlyPending = showPending => {
  document.querySelectorAll('.pending').forEach( elt => {
    if (showPending) {
      elt.classList.remove('trip-hidden');
    } else {
      elt.classList.add('trip-hidden');
    }
  });
  document.querySelectorAll('.confirmed').forEach( elt => {
    if (showPending) {
      elt.classList.add('trip-hidden');
    } else {
      elt.classList.remove('trip-hidden');
    }
  });
};

const attachTripButtonFilterBehavior = () => {
  const button = document.getElementById("trip-status-filter-btn");

  if (button) {
    button.addEventListener("change", event => {
      status = button.value;
      if (status == 'pending') {
        showOnlyPending(true);
      } else {
        showOnlyPending(false);
      }
    });
  }
};

document.addEventListener('DOMContentLoaded', _ => {
  attachTripButtonFilterBehavior();
});
