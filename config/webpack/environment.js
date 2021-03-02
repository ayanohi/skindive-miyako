const { environment } = require('@rails/webpacker')

module.exports = environment

// jQuery を直接使用する場合は以下を追加する
const webpack = require('webpack')
environment.plugins.append(
  'Provide',
  new webpack.ProvidePlugin({
    $: 'jquery/src/jquery',
    jQuery: 'jquery/src/jquery',
    Popper: ['popper.js', 'default']
  })
)
