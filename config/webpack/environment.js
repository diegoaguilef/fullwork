const { environment } = require('@rails/webpacker')
const webpack = require("webpack");
const customConfig = require('./custom')
environment.plugins.prepend(
    'Provide',
    new webpack.ProvidePlugin({
        $: 'jquery',
        jQuery: 'jquery',
        jquery: 'jquery',
        Popper: ['popper.js', 'default']
    })
)
environment.config.merge(customConfig)
module.exports = environment
