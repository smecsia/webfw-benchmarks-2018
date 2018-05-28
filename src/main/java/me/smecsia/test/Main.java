package me.smecsia.test;

import io.undertow.util.Headers;

import static io.undertow.Undertow.builder;

public class Main {

    private static final String HELLO_WORLD = "Hello World";

    public static void main(String[] args) {
        builder()
                .addHttpListener(8080, "localhost")
                .setHandler(exchange -> {
                    exchange.getResponseHeaders().put(Headers.CONTENT_TYPE, "text/plain");
                    exchange.getResponseSender().send(HELLO_WORLD);
                })
                .build().start();
    }
}
