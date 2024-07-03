# this script installs the package flask
# version 2.1.0 frompip3
package { 'flask':
  ensure   => '2.1.0',
  provider => 'pip'
}
