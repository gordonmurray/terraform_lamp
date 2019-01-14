Generate AMIs using Packer
--------------------------

When a Packer build is run, it will replace the existing AMI of the same name, if it exists.

Validate an image file

> packer validate -var-file=variables.json php.json

Build the image

> packer build -var-file=variables.json php.json