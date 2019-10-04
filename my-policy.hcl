path "kv/my-secret" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

# Even though we allowed my-secret/*, this line explicitly denies
# my-secret/super-my-secret. This takes precedence.
#path "kv/my-secret/super-my-secret" {
#  capabilities = ["deny"]
#}

# Policies can also specify allowed, disallowed, and required parameters. Here
# the key "my-secret/restricted" can only contain "foo" (any value) and "bar" (one
# of "zip" or "zap").
#path "kv/my-secret/restricted" {
 # capabilities = ["create"]
  #allowed_parameters = {
   # "foo" = []
    #"bar" = ["zip", "zap"]
  #}
#}