﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AV.Development.Dal.MongoDB.Repositories.Interface;

namespace AV.Development.Dal.MongoDB.Repositories
{
    public abstract class MongoDbRepository
    {
        private readonly IMongoConnectionStringRepository _connectionStringRepository;

        public MongoDbRepository(IMongoConnectionStringRepository connectionStringRepository)
        {
            if (connectionStringRepository == null) throw new ArgumentNullException("ConnectionStringRepository");
            _connectionStringRepository = connectionStringRepository;
        }

        public IMongoConnectionStringRepository ConnectionStringRepository
        {
            get
            {
                return _connectionStringRepository;
            }
        }
    }
}
