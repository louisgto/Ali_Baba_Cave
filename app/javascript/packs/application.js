import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';

import { loadDynamicBannerText } from '../components/banner';
import { initMapbox } from '../plugins/init_mapbox';

if (document.querySelector('#banner-typed-text')) {
  loadDynamicBannerText();
}

if (document.querySelector('#map')) {
  initMapbox();
}
