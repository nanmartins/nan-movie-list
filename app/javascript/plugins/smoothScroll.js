
const smoothScroll = () => {
  const cards = document.querySelector('.row');
  const cardsTop = cards.getBoundingClientRect().top;

  if (cardsTop < 600) {
    cards.classList.add('js-smoothScroll-active');
  }
}

window.addEventListener('scroll', smoothScroll);
