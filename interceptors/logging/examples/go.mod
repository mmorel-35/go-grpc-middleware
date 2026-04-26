module github.com/grpc-ecosystem/go-grpc-middleware/interceptors/logging/examples

go 1.25.0

require (
	github.com/go-kit/log v0.2.1
	github.com/go-logr/logr v1.4.3
	github.com/grpc-ecosystem/go-grpc-middleware/v2 v2.0.0
	github.com/rs/zerolog v1.35.1
	github.com/sirupsen/logrus v1.9.4
	go.uber.org/zap v1.27.1
	google.golang.org/grpc v1.80.0
	k8s.io/klog/v2 v2.140.0
)

require (
	github.com/go-logfmt/logfmt v0.5.1 // indirect
	github.com/mattn/go-colorable v0.1.14 // indirect
	github.com/mattn/go-isatty v0.0.20 // indirect
	go.uber.org/multierr v1.10.0 // indirect
	golang.org/x/net v0.53.0 // indirect
	golang.org/x/sys v0.43.0 // indirect
	golang.org/x/text v0.36.0 // indirect
	google.golang.org/genproto/googleapis/rpc v0.0.0-20260120221211-b8f7ae30c516 // indirect
	google.golang.org/protobuf v1.36.11 // indirect
)

replace github.com/grpc-ecosystem/go-grpc-middleware/v2 => ../../../
