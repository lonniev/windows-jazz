windows-jazz Cookbook
=============
Downloads Installation packages for IBM Jazz CLM on Windows

Attributes
----------
* `default['windows-jazz']['installer']`
    - URL for IBM Installation Manager
* `default['windows-jazz']['imrDir']`
    - where to unzip the Installation Manager
* `default['windows-jazz']['repo']`
    - URL for Jazz CLM Releases
* `default['windows-jazz']['release']`
    - Choice of numeric release, e.g. 5.0
* `default['windows-jazz']['URL']`
    - the concatenation of repo and release to form a valid URL
* `default['windows-jazz']['repoDir']`
    - where to unzip the Jazz release
    
Usage
-----

Just include `windows-jazz` in your node's `run_list`:

```json
{
  "name":"my_node",
  "run_list": [
    "recipe[windows-jazz]"
  ]
}
```

Contributing
------------
To Contribute

1. Fork the repository on Github
2. Create a named feature branch (like `add_component_x`)
3. Write you change
4. Write tests for your change (if applicable)
5. Run the tests, ensuring they all pass
6. Submit a Pull Request using Github

License and Authors
-------------------
Authors: Lonnie VanZandt <lonniev@gmail.com>
