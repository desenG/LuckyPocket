//
//  RoomsMemoStore.swift
//  LuckyPocket
//
//  Created by Desen Guo on 2018-10-27.
//  Copyright © 2018 desen guo. All rights reserved.
//

import Foundation
class RoomsMemStore: RoomsStoreProtocol
{
    // MARK: - Data
    
    static var rooms = [
        Room(name:"Room1"),
        Room(name:"Room2"),
    ]
    // MARK: - CRUD operations - Optional error
    func fetchRooms(completionHandler: @escaping ([Room], RoomsStoreError?) -> Void) {
        
        completionHandler(type(of:self).rooms,nil)
    }
    
    func fetchRoom(id: String, completionHandler: @escaping (Room?, RoomsStoreError?) -> Void) {
        
    }
    
    func createRoom(RoomToCreate: Room, completionHandler: @escaping (Room?, RoomsStoreError?) -> Void) {
        
    }
    
    func updateRoom(RoomToUpdate: Room, completionHandler: @escaping (Room?, RoomsStoreError?) -> Void) {
        
    }
    
    func deleteRoom(id: String, completionHandler: @escaping (Room?, RoomsStoreError?) -> Void) {
        
    }
    
    func fetchRooms(completionHandler: @escaping RoomsStoreFetchRoomsCompletionHandler) {
        
    }
    
    func fetchRoom(id: String, completionHandler: @escaping RoomsStoreFetchRoomCompletionHandler) {
        
    }
    
    func createRoom(RoomToCreate: Room, completionHandler: @escaping RoomsStoreCreateRoomCompletionHandler) {
        
    }
    
    func updateRoom(RoomToUpdate: Room, completionHandler: @escaping RoomsStoreUpdateRoomCompletionHandler) {
        
    }
    
    func deleteRoom(id: String, completionHandler: @escaping RoomsStoreDeleteRoomCompletionHandler) {
        
    }
    
    func fetchRooms(completionHandler: @escaping (() throws -> [Room]) -> Void) {
        
    }
    
    func fetchRoom(id: String, completionHandler: @escaping (() throws -> Room?) -> Void) {
        
    }
    
    func createRoom(RoomToCreate: Room, completionHandler: @escaping (() throws -> Room?) -> Void) {
        
    }
    
    func updateRoom(RoomToUpdate: Room, completionHandler: @escaping (() throws -> Room?) -> Void) {
        
    }
    
    func deleteRoom(id: String, completionHandler: @escaping (() throws -> Room?) -> Void) {
        
    }
}
