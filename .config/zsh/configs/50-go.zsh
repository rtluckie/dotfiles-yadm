export GOPATH="${XDG_DATA_HOME}/go:/go"

path=(
  /go/bin
  $GOPATH/bin
  $path
)