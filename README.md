# Minecraft Swift Edition

## Overview

Minecraft Swift Edition is an open source rewrite of Minecraft Java Edition written in Swift. It is only a rewrite of the part that allows playing on servers.

## Roadmap

- [x] Server list ping (reads server list from servers.dat)
- [x] Create nice UI using SwiftUI
- [ ] Login 
  - [x] Without encryption and compression
  - [ ] With compression
  - [ ] With encryption
- [ ] Be able to decode all clientbound packets
  - [ ] status
  - [ ] login
  - [x] play
- [ ] Be able to send all serverbound packets
  - [ ] status
  - [ ] login
  - [x] play
- [ ] Handle all packets
  - [ ] status
  - [ ] login
  - [ ] play
    - [ ] entities
    - [ ] chunks
      - [x] ChunkDataPacket
      - [x] UnloadChunkPacket
      - [x] BlockChangePacket
      - [ ] MultiBlockChangePacket
    - [x] player movement
    - [ ] inventory
    - [ ] everything else
- [ ] First launch
  - [x] download server jar
  - [x] extract server jar
  - [x] extract assets from server jar
  - [ ] create default config
- [ ] Create basic text interface
  - [x] chat
  - [ ] movement
  - [x] tablist
  - [ ] view entities
  - [ ] minimap just for fun?
  - [ ] maybe some block actions too?
- [ ] Entities (entity mappings and stuff)
- [ ] Mojang data
  - [x] load block states
  - [ ] load block models
    - [x] load them from the json
    - [ ] convert them to an efficient structure
    - [ ] cache to speed up startup time if needed
  - [x] load block textures
- [ ] Basic rendering using Metal (Apple's GPU library)
  - [ ] Block rendering
    - [x] Basic textureless blocks (with just a default texture)
    - [x] Basic block culling (don't render blocks that are completely surrounded by other blocks)
    - [ ] Block textures
    - [ ] Block models
    - [ ] Multiple chunks
  - [ ] Block Animations
  - [ ] Block entity rendering
  - [ ] Entity rendering
  - [ ] Chat Rendering
  - [ ] GUI Rendering (inventory and hot bar and the likes)
- [ ] Physics
- [ ] Inventory
  - [ ] Crafting
  - [ ] Other crafting (like smelting and stuff)

## Command Interface

At the moment when the client is connected to a server it gives you a text field for entering commands.

These are not commands in the traditional minecraft sense (e.g. ```/kill``` and ```/time set day```). They are commands that I have made that let you interact with the server.

As I implement more of the backend code -- and before I work on rendering -- I will be making more commands to reflect the current capabilities of the client. In future I will most likely also make a command for running commands on the server (this is starting to get confusing).

#### Current Commands

- ```say [message]```
  - sends a message in chat
- ```swing [mainhand|offhand]```
  - causes the player's arm to swing. can be used to say hi to other players :) (and also just to test if it's working)
- ```getblock [x] [y] [z]```
  - gets the block state id of the block at position

## Screenshots

#### Server List

![alt text](https://github.com/stackotter/minecraft-swift-edition/blob/main/screenshots/hypixel.png?raw=true)

#### Playing Server Screen

![alt text](https://github.com/stackotter/minecraft-swift-edition/blob/main/screenshots/play-screen.png?raw=true)
