# tf-az-module-tls-private-key
Terraform module for creating a TLS Private key


Manages a SSH Public Key.

## [Example Usage](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/ssh_public_key#example-usage)

```hcl
resource "azurerm_ssh_public_key" "example" { name = "example" resource_group_name = "example" location = "West Europe" public_key = file("~/.ssh/id_rsa.pub") }
```

## [Arguments Reference](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/ssh_public_key#arguments-reference)

The following arguments are supported:

-   [`location`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/ssh_public_key#location-1) - (Required) The Azure Region where the SSH Public Key should exist. Changing this forces a new SSH Public Key to be created.
    
-   [`name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/ssh_public_key#name-1) - (Required) The name which should be used for this SSH Public Key. Changing this forces a new SSH Public Key to be created.
    
-   [`public_key`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/ssh_public_key#public_key-1) - (Required) SSH public key used to authenticate to a virtual machine through ssh. the provided public key needs to be at least 2048-bit and in ssh-rsa format.
    
-   [`resource_group_name`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/ssh_public_key#resource_group_name-1) - (Required) The name of the Resource Group where the SSH Public Key should exist. Changing this forces a new SSH Public Key to be created.
    

___

-   [`tags`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/ssh_public_key#tags-1) - (Optional) A mapping of tags which should be assigned to the SSH Public Key.

## [Attributes Reference](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/ssh_public_key#attributes-reference)

In addition to the Arguments listed above - the following Attributes are exported:

-   [`id`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/ssh_public_key#id-1) - The ID of the SSH Public Key.

## [Timeouts](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/ssh_public_key#timeouts)

The `timeouts` block allows you to specify [timeouts](https://www.terraform.io/language/resources/syntax#operation-timeouts) for certain actions:

-   [`create`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/ssh_public_key#create-1) - (Defaults to 45 minutes) Used when creating the SSH Public Key.
-   [`read`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/ssh_public_key#read-1) - (Defaults to 5 minutes) Used when retrieving the SSH Public Key.
-   [`update`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/ssh_public_key#update-1) - (Defaults to 45 minutes) Used when updating the SSH Public Key.
-   [`delete`](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/ssh_public_key#delete-1) - (Defaults to 45 minutes) Used when deleting the SSH Public Key.

## [Import](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/ssh_public_key#import)

SSH Public Keys can be imported using the `resource id`, e.g.

```shell
terraform import azurerm_ssh_public_key.example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.Compute/sshPublicKeys/mySshPublicKeyName1
```

## tls\_private\_key (Resource)

Creates a PEM (and OpenSSH) formatted private key.

Generates a secure private key and encodes it in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) and [OpenSSH PEM (RFC 4716)](https://datatracker.ietf.org/doc/html/rfc4716) formats. This resource is primarily intended for easily bootstrapping throwaway development environments.

This is a _logical resource_, so it contributes only to the current Terraform state and does not create any external managed resources.

## [Example Usage](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key#example-usage)

```terraform
# ECDSA key with P384 elliptic curve resource "tls_private_key" "ecdsa-p384-example" { algorithm = "ECDSA" ecdsa_curve = "P384" } # RSA key of size 4096 bits resource "tls_private_key" "rsa-4096-example" { algorithm = "RSA" rsa_bits = 4096 } # ED25519 key resource "tls_private_key" "ed25519-example" { algorithm = "ED25519" }
```

## [Schema](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key#schema)

### [Required](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key#required)

-   [`algorithm`](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key#algorithm-1) (String) Name of the algorithm to use when generating the private key. Currently-supported values are: `RSA`, `ECDSA`, `ED25519`.

### [Optional](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key#optional)

-   [`ecdsa_curve`](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key#ecdsa_curve-1) (String) When `algorithm` is `ECDSA`, the name of the elliptic curve to use. Currently-supported values are: `P224`, `P256`, `P384`, `P521`. (default: `P224`).
-   [`rsa_bits`](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key#rsa_bits-1) (Number) When `algorithm` is `RSA`, the size of the generated RSA key, in bits (default: `2048`).

### [Read-Only](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key#read-only)

-   [`id`](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key#id-1) (String) Unique identifier for this resource: hexadecimal representation of the SHA1 checksum of the resource.
-   [`private_key_openssh`](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key#private_key_openssh-1) (String, Sensitive) Private key data in [OpenSSH PEM (RFC 4716)](https://datatracker.ietf.org/doc/html/rfc4716) format.
-   [`private_key_pem`](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key#private_key_pem-1) (String, Sensitive) Private key data in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format.
-   [`private_key_pem_pkcs8`](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key#private_key_pem_pkcs8-1) (String, Sensitive) Private key data in [PKCS#8 PEM (RFC 5208)](https://datatracker.ietf.org/doc/html/rfc5208) format.
-   [`public_key_fingerprint_md5`](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key#public_key_fingerprint_md5-1) (String) The fingerprint of the public key data in OpenSSH MD5 hash format, e.g. `aa:bb:cc:...`. Only available if the selected private key format is compatible, similarly to `public_key_openssh` and the [ECDSA P224 limitations](https://registry.terraform.io/providers/hashicorp/tls/latest/docs#limitations).
-   [`public_key_fingerprint_sha256`](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key#public_key_fingerprint_sha256-1) (String) The fingerprint of the public key data in OpenSSH SHA256 hash format, e.g. `SHA256:...`. Only available if the selected private key format is compatible, similarly to `public_key_openssh` and the [ECDSA P224 limitations](https://registry.terraform.io/providers/hashicorp/tls/latest/docs#limitations).
-   [`public_key_openssh`](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key#public_key_openssh-1) (String) The public key data in ["Authorized Keys"](https://www.ssh.com/academy/ssh/authorized_keys/openssh#format-of-the-authorized-keys-file) format. This is not populated for `ECDSA` with curve `P224`, as it is [not supported](https://registry.terraform.io/providers/hashicorp/tls/latest/docs#limitations). **NOTE**: the [underlying](https://pkg.go.dev/encoding/pem#Encode) [libraries](https://pkg.go.dev/golang.org/x/crypto/ssh#MarshalAuthorizedKey) that generate this value append a `\n` at the end of the PEM. In case this disrupts your use case, we recommend using [`trimspace()`](https://www.terraform.io/language/functions/trimspace).
-   [`public_key_pem`](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key#public_key_pem-1) (String) Public key data in [PEM (RFC 1421)](https://datatracker.ietf.org/doc/html/rfc1421) format. **NOTE**: the [underlying](https://pkg.go.dev/encoding/pem#Encode) [libraries](https://pkg.go.dev/golang.org/x/crypto/ssh#MarshalAuthorizedKey) that generate this value append a `\n` at the end of the PEM. In case this disrupts your use case, we recommend using [`trimspace()`](https://www.terraform.io/language/functions/trimspace).

## [Generating a New Key](https://registry.terraform.io/providers/hashicorp/tls/latest/docs/resources/private_key#generating-a-new-key)

Since a private key is a logical resource that lives only in the Terraform state, it will persist until it is explicitly destroyed by the user.

In order to force the generation of a new key within an existing state, the private key instance can be "tainted":

```
terraform taint tls_private_key.example
```

A new key will then be generated on the next `terraform apply`.