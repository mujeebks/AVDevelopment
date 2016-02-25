﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MongoDB.Bson;
using MongoDB.Bson.Serialization.Attributes;

namespace AV.Development.Dal.MongoDB.DatabaseObjects
{

    [BsonIgnoreExtraElements]
    public abstract class MongoDbObjectBase
    {
        [BsonId]
        public ObjectId DbObjectId { get; set; }
    }
}
