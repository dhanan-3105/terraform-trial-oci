provider "oci" {
 version=">=3.11"
 tenancy_ocid="ocid1.tenancy.oc1..aaaaaaaahha7foqefrt7brld3bs3bijc4yu3jxrqoiaocgpkbvkpgilzi4da"
 user_ocid="ocid1.user.oc1..aaaaaaaaxcvlxdglwvlh236crgf7elxsu47scws6ck7bnoeslbciwsiojuaa"
 fingerprint="dc:05:4f:31:fe:72:dc:5a:c4:ab:39:c8:be:85:f7:14"
 private_key_path="~/.oci/apiprivatekey.pem"
 region="us-ashburn-1"
}


data "oci_identity_availability_domains" "test_availability_domains" {
    #Required
    compartment_id ="ocid1.tenancy.oc1..aaaaaaaahha7foqefrt7brld3bs3bijc4yu3jxrqoiaocgpkbvkpgilzi4da"
}


output all_domains {
 value= "${data.oci_identity_availability_domains.test_availability_domains.availability_domains}"
}
