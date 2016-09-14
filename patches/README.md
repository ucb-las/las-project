### Other Patches

* views:
  * line 226 of `includes/handlers.inc`: `!empty($options['table']) ? $options['table'] : NULL,`
  * line 227 of `includes/handlers.inc`: `!empty($options['id']) ? $options['id'] : NULL`
  * line 935 of `plugins/views_plugin_display.inc`: `if (empty($info['table']) || $info['id'] != $id) {`
  * line 960 of `plugins/views_plugin_display.inc`: `$handler = views_get_handler(!empty($info['table']) ? $info['table'] : NULL, !empty($info['field']) ? $info['field'] : NULL, $handler_type, $override);`
  * line 2917 of `plugins/views_plugin_display.inc`: `$handler = views_get_handler(!empty($info['table']) ? $info['table'] : NULL, !empty($info['field']) ? $info['field'] : NULL, $handler_type, $override);`
