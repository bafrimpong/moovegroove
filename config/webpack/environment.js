const { environment } = require('@rails/webpacker')
const webpack = require('webpack')

environment.plugins.prepend('Provide',
    new webpack.ProvidePlugin({
        $: "jquery",
        jquery: "jQuery",
        Popper: ["popper.js", "default"]
    })
);

module.exports = environment

// const { environment } = require('@rails/webpacker')
// const webpack = require('webpack')

// environment.plugins.prepend('Provide',
//     new webpack.ProvidePlugin({
//         $: 'jquery/dist/jquery',
//         jQuery: 'jquery/dist/jquery',
//         jquery: 'jquery/dist/jquery',
//         Rails: ['@rails/ujs'],
//         alertify: 'alertifyjs/build/alertify.js',
//         'jquery-ui': 'jquery-ui/external/jquery-1.12.1/jquery.js'
//     })
// );

// module.exports = environment