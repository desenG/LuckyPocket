//
//  ListRoomsInteractor.swift
//  LuckyPocket
//
//  Created by Desen Guo on 2018-10-27.
//  Copyright (c) 2018 desen guo. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol ListRoomsBusinessLogic
{
  func fetchRooms(request: ListRooms.FetchRooms.Request)
}

protocol ListRoomsDataStore
{
  //var name: String { get set }
}

class ListRoomsInteractor: ListRoomsBusinessLogic, ListRoomsDataStore
{
  var presenter: ListRoomsPresentationLogic?
  var dbWorker: RoomsWorker?
    var apiWorker: RoomsAPI?
    var rooms: [Room]?
  //var name: String = ""
  
  // MARK: Do something
  
  func fetchRooms(request: ListRooms.FetchRooms.Request)
  {
    //todo use apiWorker to update list
    
    
    dbWorker?.fetchRooms{(rooms)->Void in
        self.rooms = rooms
        let response = ListRooms.FetchRooms.Response(rooms: rooms)
        self.presenter?.presentFetchedRooms(response: response)
    }
  }
}
