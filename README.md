# React 18 SSR using Pipeable Stream 🪴 Deployed on Microsoft Azure and Containerized with Docker

This example demonstrates how to render a React 18 application on a server-side (Node.js) application using React 18's `renderToPipeableStream` function.

On the client-side, we load a component with Suspense, and on the server-side, Suspense is also utilized from React 18.

## Setup Instructions

1. Install the dependencies for both the React application (`ssr-client`) and the main Node.js application.
2. Build the client application using the `npm run build:client` command before running the server application.

## Running the Application

Use the `npm run start:server` command to start the Node.js application. This will render the React application on the server-side and send the rendered content to the browser. The built static React application will then run after hydration.

## Available Commands

- `start:client` : Starts the client application
- `start:server` : Starts the server application
- `build:client` : Builds the client application into static files