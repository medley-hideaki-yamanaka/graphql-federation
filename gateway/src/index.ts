import { ApolloServer } from '@apollo/server';
import { startStandaloneServer } from '@apollo/server/standalone';
import { ApolloGateway, IntrospectAndCompose } from '@apollo/gateway'

const gateway = new ApolloGateway({
  supergraphSdl: new IntrospectAndCompose({
    subgraphs: [
      { name: 'authors', url: 'http://app1:3000/graphql' },
      { name: 'books', url: 'http://app2:3000/graphql' },
    ],
  }),
});

// Pass the ApolloGateway to the ApolloServer constructor
const server = new ApolloServer({
  gateway,
});
  
// Passing an ApolloServer instance to the `startStandaloneServer` function:
//  1. creates an Express app
//  2. installs your ApolloServer instance as middleware
//  3. prepares your app to handle incoming requests
const { url } = await startStandaloneServer(server, {
  listen: { port: 4000 },
});

console.log(`🚀  Server ready at: ${url}`);