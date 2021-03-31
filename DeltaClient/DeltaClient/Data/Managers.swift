//
//  Managers.swift
//  DeltaClient
//
//  Created by Rohan van Klinken on 13/3/21.
//

import Foundation

struct Managers {
  var eventManager: EventManager
  var storageManager: StorageManager!
  var cacheManager: CacheManager!
  var configManager: ConfigManager!
  var assetManager: AssetManager!
  var textureManager: TextureManager!
  var blockPaletteManager: BlockPaletteManager!
  var localeManager: LocaleManager!
  
  init() {
    self.init(eventManager: EventManager())
  }
  
  init(eventManager: EventManager) {
    self.eventManager = eventManager
  }
}