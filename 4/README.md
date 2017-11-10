# Example 4: Custom Facts

This is a canned example that demonstrates custom facts within a module.

In this example we create two custom facts from within the `apache` module; and later, use them in the manifest `init.pp` (just print their values).

* `running_containers`: an array of IDs of Docker containers running on the node.
* `stopped_containers`: an array of IDs of Docker containers stopped on the node.

## References
1. https://www.puppetcookbook.com/posts/deploying-custom-facts-in-modules.html
