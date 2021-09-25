FROM alpine:golang1.16.5-alpine3.14 as builder

RUN mkdir /app
COPY .  /app
WORKDIR /app
RUN make build

FROM alpine:latest
RUN mkdir /appWORKDIR /app
COPY --from=builder /app/main /app/
CMD ["/app/main"]