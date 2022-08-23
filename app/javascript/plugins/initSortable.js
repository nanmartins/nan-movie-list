

import Sortable from 'sortablejs';

const initSortable = () => {
  const list = document.querySelector('.row');
  Sortable.create(list, {
  ghostClass: "ghost",
  animation: 150,
});
};

export { initSortable };
