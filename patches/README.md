### Other Patches

* admin_menu:
  * line 596: `$links[$key]['#weight'] = -49;`
* autosave:
  * `autosave.js` line 2: `$(function(){`
  * `autosave.js` line -1: `});`
* field_collection:
  * https://www.drupal.org/node/1280568#comment-8835645
* linkchecker:
  * line 198 of `linkchecker.pages.inc`: `l($link->url, $link->url),`
* views:
  * line 226 of `includes/handlers.inc`: `!empty($options['table']) ? $options['table'] : NULL,`
  * line 227 of `includes/handlers.inc`: `!empty($options['id']) ? $options['id'] : NULL`
  * line 935 of `plugins/views_plugin_display.inc`: `if (empty($info['table']) || $info['id'] != $id) {`
  * line 960 of `plugins/views_plugin_display.inc`: `$handler = views_get_handler(!empty($info['table']) ? $info['table'] : NULL, !empty($info['field']) ? $info['field'] : NULL, $handler_type, $override);`
  * line 2917 of `plugins/views_plugin_display.inc`: `$handler = views_get_handler(!empty($info['table']) ? $info['table'] : NULL, !empty($info['field']) ? $info['field'] : NULL, $handler_type, $override);`
* workflow:
  * line 275 of `WorkflowTransition.php`: `$force = TRUE;`
  * line 271 of `WorkflowTransitionForm.php`: `if (true) {`
