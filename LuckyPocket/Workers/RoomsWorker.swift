//
//  RoomsWorker.swift
//  LuckyPocket
//
//  Created by desen guo on 2018-10-25.
//  Copyright (c) 2018 desen guo. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import Foundation

// MARK: - Rooms worker
class RoomsWorker
{
    var RoomsStore: RoomsStoreProtocol
    
    init(RoomsStore: RoomsStoreProtocol)
    {
        self.RoomsStore = RoomsStore
    }
    
    func fetchRooms(completionHandler: @escaping ([Room]) -> Void)
    {
        RoomsStore.fetchRooms { (Rooms: () throws -> [Room]) -> Void in
            do {
                let Rooms = try Rooms()
                DispatchQueue.main.async {
                    completionHandler(Rooms)
                }
            } catch {
                DispatchQueue.main.async {
                    completionHandler([])
                }
            }
        }
    }
    
    func createRoom(RoomToCreate: Room, completionHandler: @escaping (Room?) -> Void)
    {
        RoomsStore.createRoom(RoomToCreate: RoomToCreate) { (Room: () throws -> Room?) -> Void in
            do {
                let Room = try Room()
                DispatchQueue.main.async {
                    completionHandler(Room)
                }
            } catch {
                DispatchQueue.main.async {
                    completionHandler(nil)
                }
            }
        }
    }
    
    func updateRoom(RoomToUpdate: Room, completionHandler: @escaping (Room?) -> Void)
    {
        RoomsStore.updateRoom(RoomToUpdate: RoomToUpdate) { (Room: () throws -> Room?) in
            do {
                let Room = try Room()
                DispatchQueue.main.async {
                    completionHandler(Room)
                }
            } catch {
                DispatchQueue.main.async {
                    completionHandler(nil)
                }
            }
        }
    }
}

// MARK: - Rooms store API
protocol RoomsStoreProtocol
{
    // MARK: CRUD operations - Optional error
    
    func fetchRooms(completionHandler: @escaping ([Room], RoomsStoreError?) -> Void)
    func fetchRoom(id: String, completionHandler: @escaping (Room?, RoomsStoreError?) -> Void)
    func createRoom(RoomToCreate: Room, completionHandler: @escaping (Room?, RoomsStoreError?) -> Void)
    func updateRoom(RoomToUpdate: Room, completionHandler: @escaping (Room?, RoomsStoreError?) -> Void)
    func deleteRoom(id: String, completionHandler: @escaping (Room?, RoomsStoreError?) -> Void)
    
    // MARK: CRUD operations - Generic enum result type
    
    func fetchRooms(completionHandler: @escaping RoomsStoreFetchRoomsCompletionHandler)
    func fetchRoom(id: String, completionHandler: @escaping RoomsStoreFetchRoomCompletionHandler)
    func createRoom(RoomToCreate: Room, completionHandler: @escaping RoomsStoreCreateRoomCompletionHandler)
    func updateRoom(RoomToUpdate: Room, completionHandler: @escaping RoomsStoreUpdateRoomCompletionHandler)
    func deleteRoom(id: String, completionHandler: @escaping RoomsStoreDeleteRoomCompletionHandler)
    
    // MARK: CRUD operations - Inner closure
    
    func fetchRooms(completionHandler: @escaping (() throws -> [Room]) -> Void)
    func fetchRoom(id: String, completionHandler: @escaping (() throws -> Room?) -> Void)
    func createRoom(RoomToCreate: Room, completionHandler: @escaping (() throws -> Room?) -> Void)
    func updateRoom(RoomToUpdate: Room, completionHandler: @escaping (() throws -> Room?) -> Void)
    func deleteRoom(id: String, completionHandler: @escaping (() throws -> Room?) -> Void)
}

protocol RoomsStoreUtilityProtocol {}

extension RoomsStoreUtilityProtocol
{
    func generateRoomID(Room: inout Room)
    {
//        guard Room.id == nil else { return }
//        Room.id = "\(arc4random())"
    }
    
    func calculateRoomTotal(Room: inout Room)
    {
//        guard Room.total == NSDecimalNumber.notANumber else { return }
//        Room.total = NSDecimalNumber.one
    }
}

// MARK: - Rooms store CRUD operation results
typealias RoomsStoreFetchRoomsCompletionHandler = (RoomsStoreResult<[Room]>) -> Void
typealias RoomsStoreFetchRoomCompletionHandler = (RoomsStoreResult<Room>) -> Void
typealias RoomsStoreCreateRoomCompletionHandler = (RoomsStoreResult<Room>) -> Void
typealias RoomsStoreUpdateRoomCompletionHandler = (RoomsStoreResult<Room>) -> Void
typealias RoomsStoreDeleteRoomCompletionHandler = (RoomsStoreResult<Room>) -> Void

enum RoomsStoreResult<U>
{
    case Success(result: U)
    case Failure(error: RoomsStoreError)
}

// MARK: - Rooms store CRUD operation errors
enum RoomsStoreError: Equatable, Error
{
    case CannotFetch(String)
    case CannotCreate(String)
    case CannotUpdate(String)
    case CannotDelete(String)
}

func ==(lhs: RoomsStoreError, rhs: RoomsStoreError) -> Bool
{
    switch (lhs, rhs) {
    case (.CannotFetch(let a), .CannotFetch(let b)) where a == b: return true
    case (.CannotCreate(let a), .CannotCreate(let b)) where a == b: return true
    case (.CannotUpdate(let a), .CannotUpdate(let b)) where a == b: return true
    case (.CannotDelete(let a), .CannotDelete(let b)) where a == b: return true
    default: return false
    }
}