
# Application Routes

To configure routes, the only object we need access to is `app`.  This module
can be called with `require("./lib/routes")(app)` as long as `app` is an
already initialized ExpressJS application.

    module.exports = (app) ->

## /

Render the main index page.

      app.get '/', (req, res) ->
        fs = require('fs')
        res.render 'index', {
          title: 'Welcome',
          extra_head_css: fs.readFileSync('views/extra/nivo.css'),
          extra_foot_js: fs.readFileSync('views/extra/nivo.js')
        }

## /page/:name

Render static pages at /view/page/name.html

      app.get '/page/:name', (req, res) ->
        pg_view = "page/" + req.params.name
        res.render pg_view

## Copying

This software is released under the ISC License.

Copyright (c) 2013, Cameron King <cking@ecc12.com>

Permission to use, copy, modify, and/or distribute this software for any
purpose with or without fee is hereby granted, provided that the above
copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND
FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT,
INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM
LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
PERFORMANCE OF THIS SOFTWARE.

<!-- vim: ts=2 sts=2 sw=2 expandtab
     CoffeeScript-friendly tabstops in vim. -->
