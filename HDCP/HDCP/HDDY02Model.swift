//
//  HDDY02Model.swift
//  HDCP
//
//  Created by 徐琰璋 on 16/4/1.
//  Copyright © 2016年 batonsoft. All rights reserved.
//

import Foundation
import ObjectMapper

class HDDY02Response:Mappable {
    
    var request_id:String?
    var result:HDDY02Result?
    
    required init?(map: Map){
        mapping(map: map)
    }
    func mapping(map: Map) {
        
        request_id <- map["request_id"]
        result <- map["result"]
        
    }
    
}

class HDDY02Result: Mappable {
    
    var info:HDDY02InfoModel?
    
    required init?(map: Map){
        mapping(map: map)
    }
    
    func mapping(map: Map) {
        
        info <- map["info"]
        
    }
    
}

class HDDY02InfoModel: Mappable {
    
    var collection:String?
    var commentCount:String?
    var commentList:Array<HDDY02Comment>?
    
    var createTime:String?
    var cover:String?
    var cookTime:String?
    var diggCount:Int?
    var diggUsersUrl:String?
    var duration:String?
    var hasVideo:Int?
    var intro:String?
    var isDigg:Int?
    var isLike:Int?
    
    var lastDiggUsers:Array<HDDY02LastDiggUsersModel>?
    
    var likeCount:Int?
    var mainStuff:Array<HDDY02StuffModel>?
    var mallUrl:String?
    var otherStuff:Array<HDDY02StuffModel>?
    var photoCount:Int?
    var rate:Int?
    var readyTime:String?
    var recipeId:Int?
    
    var recommendTopic:Array<HDDY02RecommendTopicModel>?
    
    var reviewTime:String?
    var status:Int?
    
    var steps:Array<HDDY02StepModel>?
    var stuff:Array<HDDY02StuffModel>?
    var tags:Array<HDDY02TagsModel>?
    
    var talkUrl:String?
    var tips:String?
    var title:String?
    var type:Int?
    var userCount:String?
    var userId:Int?
    var userInfo:HDDY02UserInfoModel?
    var videoCover:String?
    var viewCount:Int?
    
    var vedioUrl:String?
    
    required init?(map: Map){
        mapping(map:map)
    }
    
    func mapping(map: Map) {
        
        collection <- map["Collection"]
        commentCount <- map["CommentCount"]
        commentList <- map["CommentList"]
        
        createTime <- map["CreateTime"]
        cover <- map["Cover"]
        cookTime <- map["CookTime"]
        diggCount <- map["DiggCount"]
        diggUsersUrl <- map["DiggUsersUrl"]
        duration <- map["Duration"]
        hasVideo <- map["HasVideo"]
        intro <- map["Intro"]
        isDigg <- map["IsDigg"]
        isLike <- map["IsLike"]
        
        lastDiggUsers <- map["LastDiggUsers"]
        likeCount <- map["LikeCount"]
        mainStuff <- map["MainStuff"]
        mallUrl <- map["MallUrl"]
        otherStuff <- map["OtherStuff"]
        photoCount <- map["PhotoCount"]
        rate <- map["Rate"]
        readyTime <- map["ReadyTime"]
        recipeId <- map["RecipeId"]
        
        recommendTopic <- map["RecommendTopic"]
        reviewTime <- map["ReviewTime"]
        status <- map["Status"]
        steps <- map["Steps"]
        stuff <- map["Stuff"]
        tags <- map["Tags"]
        
        talkUrl <- map["TalkUrl"]
        tips <- map["Tips"]
        title <- map["Title"]
        type <- map["Type"]
        userCount <- map["UserCount"]
        userId <- map["UserId"]
        userInfo <- map["UserInfo"]
        videoCover <- map["VideoCover"]
        viewCount <- map["ViewCount"]
    }
    
}

class HDDY02Comment: Mappable {
    
    var avatar:String!
    var content:String!
    var createTime:String!
    var userId:String!
    var userName:String!
    var height:CGFloat!
    
    init(){}
    
    required init?(map: Map) {
        mapping(map: map)
    }
    
    func mapping(map: Map) {
        
        avatar <- map["Avatar"]
        content <- map["Content"]
        createTime <- map["CreateTime"]
        userId <- map["UserId"]
        userName <- map["UserName"]
    }
    
}

class HDDY02LastDiggUsersModel: Mappable {
    
    var avatar:String?
    var openUrl:Int?
    var userId:Int?
    
    init(){}
    
    required init?(map: Map){
        mapping(map: map)
    }
    
    func mapping(map: Map) {
        
        avatar <- map["Avatar"]
        openUrl <- map["OpenUrl"]
        userId <- map["UserId"]
        
    }
}

class HDDY02StuffModel: Mappable {
    
    var cate:String?
    var cateid:Int?
    var id:Int?
    var name:String?
    var type:Int?
    var weight:String?
    
    init(){}
    
    required init?(map: Map){
        mapping(map: map)
    }
    
    func mapping(map: Map) {
        
        cate <- map["cate"]
        cateid <- map["cateid"]
        id <- map["id"]
        name <- map["name"]
        type <- map["type"]
        weight <- map["weight"]
        
    }
}

class HDDY02RecommendTopicModel: Mappable {
    
    var avatar:String?
    var collection:String?
    var commentCount:String?
    var lastPostTime:String?
    var title:String?
    var topicId:String?
    var url:String?
    var userId:String?
    var userName:String?
    
    init(){}
    
    required init?(map: Map){
        mapping(map:map)
    }
    
    func mapping(map: Map) {
        
        avatar <- map["Avatar"]
        collection <- map["Collection"]
        commentCount <- map["CommentCount"]
        lastPostTime <- map["LastPostTime"]
        title <- map["Title"]
        topicId <- map["TopicId"]
        url <- map["Url"]
        userId <- map["UserId"]
        userName <- map["UserName"]
        
    }
}

class HDDY02StepModel: Mappable {
    
    var intro:String?
    var stepPhoto:String?
    
    init(){}
    
    required init?(map: Map){
        mapping(map:map)
    }
    
    func mapping(map: Map) {
        
        intro <- map["Intro"]
        stepPhoto <- map["StepPhoto"]
    }
    
}

class HDDY02TagsModel: Mappable {
    
    var id:Int?
    var name:String?
    
    init(){}
    
    required init?(map: Map) {
        mapping(map:map)
    }
    
    func mapping(map: Map) {
        
        id <- map["Id"]
        name <- map["Name"]
    }
}

class HDDY02FavoriteListModel: Mappable {
    
    var id:Int?
    var name:String?
    
    init(){}
    
    required init?(map: Map) {
        mapping(map:map)
    }
    
    func mapping(map: Map) {
        
        id <- map["Id"]
        name <- map["Name"]
    }
}

class HDDY02UserInfoModel: Mappable {
    
    var avatar:String?
    var gender:Int?
    var intro:String?
    var openUrl:String?
    var relation:Int?
    var userId:Int?
    var userName:String?
    var vip:Int?
    var favoriteList:Array<HDDY02FavoriteListModel>?
    
    
    required init?(map: Map){
        mapping(map:map)
    }
    
    func mapping(map: Map) {
        
        avatar <- map["Avatar"]
        gender <- map["Gender"]
        intro <- map["Intro"]
        openUrl <- map["OpenUrl"]
        relation <- map["Relation"]
        userId <- map["UserId"]
        userName <- map["UserName"]
        vip <- map["Vip"]
        favoriteList <- map["FavoriteList"]
    }
    
}

/**************************************/

class HDDY0202Response:Mappable {
    
    var request_id:String?
    var result:HDDY0202Result?
    
    required init?(map: Map){
        mapping(map:map)
    }
    func mapping(map: Map) {
        
        request_id <- map["request_id"]
        result <- map["result"]
        
    }
    
}

class HDDY0202Result: Mappable {
    
    var list:Array<HDDY0202ListModel>?
    var count:Int?
    
    required init?(map: Map){
        mapping(map:map)
    }
    
    func mapping(map: Map) {
        
        count <- map["count"]
        list <- map["list"]
    }
    
}

class HDDY0202ListModel: Mappable {
    
    var atContent:String?
    var atImageSmallUrl:String?
    var atImageUrl:String?
    var atUserId:Int?
    var atUserName:String?
    var avatar:String?
    var cid:Int?
    var content:String?
    var createTime:String?
    var gender:Int?
    var imageSmallUrl:String?
    var imageUrl:String?
    var isAuthor:Int?
    var isVip:Int?
    var photoFlag:Int?
    var photoId:String?
    var photoUrl:String?
    var userId:Int?
    var userName:String?
    var contentHeight:CGFloat?
    var atContentHeight:CGFloat?
    var rowHeight:CGFloat?
    
    required init?(map: Map){
        mapping(map:map)
    }
    
    func mapping(map: Map) {
        
        atContent <- map["AtContent"]
        atImageSmallUrl <- map["AtImageSmallUrl"]
        atImageUrl <- map["AtImageUrl"]
        atUserId <- map["AtUserId"]
        atUserName <- map["AtUserName"]
        avatar <- map["Avatar"]
        cid <- map["Cid"]
        content <- map["Content"]
        createTime <- map["CreateTime"]
        gender <- map["Gender"]
        imageSmallUrl <- map["ImageSmallUrl"]
        imageUrl <- map["ImageUrl"]
        isAuthor <- map["IsAuthor"]
        isVip <- map["IsVip"]
        photoFlag <- map["PhotoFlag"]
        photoId <- map["PhotoId"]
        photoUrl <- map["PhotoUrl"]
        userId <- map["UserId"]
        userName <- map["UserName"]
    }
    
}

