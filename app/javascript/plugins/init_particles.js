import 'particles.js';

const initParticles = () => {
  particlesJS.load('particles-js', "particles.json", function() {
    console.log('callback - particles.js config loaded');
  });
}

export { initParticles };
