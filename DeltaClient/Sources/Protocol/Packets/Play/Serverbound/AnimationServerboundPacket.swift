//
//  AnimationServerboundPacket.swift
//  DeltaClient
//
//  Created by Rohan van Klinken on 21/2/21.
//

import Foundation

struct AnimationServerboundPacket: ServerboundPacket {
  static let id: Int = 0x2b
  
  var hand: Hand
  
  func writePayload(to writer: inout PacketWriter) {
    writer.writeVarInt(hand.rawValue)
  }
}