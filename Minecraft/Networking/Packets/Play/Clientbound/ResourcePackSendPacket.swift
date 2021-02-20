//
//  ResourcePackSendPacket.swift
//  Minecraft
//
//  Created by Rohan van Klinken on 14/2/21.
//

import Foundation

struct ResourcePackSendPacket: ClientboundPacket {
  static let id: Int = 0x39
  
  var url: String
  var hash: String

  init(fromReader packetReader: inout PacketReader) throws {
    url = packetReader.readString()
    hash = packetReader.readString()
  }
}