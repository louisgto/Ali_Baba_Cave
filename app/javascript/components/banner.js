import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Ali Baba's Cave"],
    typeSpeed: 100,
    loop: true
  });
}

export { loadDynamicBannerText };
