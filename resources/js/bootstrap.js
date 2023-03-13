window._ = require('lodash');

/**
 * We'll load jQuery and the Bootstrap jQuery plugin which provides support
 * for JavaScript based Bootstrap features such as modals and tabs. This
 * code may be modified to fit the specific needs of your application.
 */

window.Noty = require('noty');

try {
    window.Popper = require('popper.js').default;
    window.$ = window.jQuery = require('jquery');

    require('bootstrap');
} catch (e) {}

/**
 * We'll load the axios HTTP library which allows us to easily issue requests
 * to our Laravel back-end. This library automatically handles sending the
 * CSRF token as a header based on the value of the "XSRF" token cookie.
 */

window.axios = require('axios');

window.axios.defaults.headers.common['X-Requested-With'] = 'XMLHttpRequest';
window.axios.defaults.headers.common['Authorization'] = localStorage.getItem("token");


let token = document.head.querySelector('meta[name="csrf-token"]');

if (token) {
    window.axios.defaults.headers.common['X-CSRF-TOKEN'] = token.content;
} else {
    console.error('CSRF token not found: https://laravel.com/docs/csrf#csrf-x-csrf-token');
}
/**
 * Echo exposes an expressive API for subscribing to channels and listening
 * for events that are broadcast by Laravel. Echo and event broadcasting
 * allows your team to easily build robust real-time web applications.
 */
// import Echo from "laravel-echo"
// window.Pusher = require('pusher-js');
// window.Echo = new Echo({
//     broadcaster: 'pusher',
//     key: process.env.MIX_PUSHER_APP_KEY,
//     cluster: process.env.MIX_PUSHER_APP_CLUSTER,
//     encrypted: true,
//     authHost: "http://127.0.0.1:8000/broadcasting/auth",
//     authEndpoint: "/broadcasting/auth", 
//     wsPort: 8000,
//     forceTLS: true,
//         auth: {
//         headers: {
//             Authorization: localStorage.getItem('token')
//         }
//     }
// });

import Echo from "laravel-echo"
import Pusher from "pusher-js"
window.Pusher = require('pusher-js');
window.Echo = new Echo({
    broadcaster: 'pusher',
    key: '74b3ee488d87f739442a',
    cluster: 'mt1',
    encrypted: true,
    authHost: "http://127.0.0.1:8000/broadcasting/auth",
    authEndpoint: "/broadcasting/auth", 
    wsPort: 8000,
    forceTLS: true,
        auth: {
        headers: {
            Authorization: localStorage.getItem('token')
        }
    }
});

// import Echo from 'laravel-echo'

// window.Pusher = require('pusher-js');

// window.Echo = new Echo({
//     broadcaster: 'pusher',
//     key: process.env.MIX_PUSHER_APP_KEY,
//     cluster: process.env.MIX_PUSHER_APP_CLUSTER,
//     encrypted: true,
//     // host: window.location.hostname + ':8000',
//     // authEndpoint: "/api/broadcasting/auth", //
//     // csrfToken: token.content,
//     auth: {
//         headers: {
//             Authorization: JSON.parse(localStorage.getItem('token'))
//         }
//     },

// });


// import Echo from 'laravel-echo';
// import Pusher from 'pusher-js';
// window.Pusher = Pusher;
// window.Echo = new Echo({
//     broadcaster: 'pusher',
//     key: import.meta.env.VITE_PUSHER_APP_KEY,
//     cluster: import.meta.env.VITE_PUSHER_APP_CLUSTER,
//     encrypted: true
//     //     auth: {
//     //     headers: {
//     //         Authorization: JSON.parse(localStorage.getItem('token'))
//     //     }
//     // },
// });

// Echo.private(`App.Models.Micanic.${userId}`)
//     .notification((notification) => {
//         console.log(notification);
//     });
// var channel = Echo.channel("channeMicanic");
// channel.listen("PodcastProcessed", (data) => {
//   // add new price into the APPL widget
// });


