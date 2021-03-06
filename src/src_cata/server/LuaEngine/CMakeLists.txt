# Copyright (C) 2008-2013 TrinityCore <http://www.trinitycore.org/>
#
# This file is free software; as a special exception the author gives
# unlimited permission to copy and/or distribute it, with or without
# modifications, as long as this notice is preserved.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY, to the extent permitted by law; without even the
# implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

if( USE_COREPCH )
  include_directories(${CMAKE_CURRENT_BINARY_DIR})
  include_directories(${CMAKE_SOURCE_DIR})
endif()

file(GLOB sources_localdir *.cpp *.h)

set(LuaEngine_STAT_SRCS
  ${LuaEngine_STAT_SRCS}
  ${sources_localdir}
)

include_directories(
  ${CMAKE_BINARY_DIR}
  ${CMAKE_SOURCE_DIR}/dep_tc/recastnavigation/Detour
  ${CMAKE_SOURCE_DIR}/dep_tc/recastnavigation/Recast
  ${CMAKE_SOURCE_DIR}/dep_tc/g3dlite/include
  ${CMAKE_SOURCE_DIR}/dep_tc/SFMT
  ${CMAKE_SOURCE_DIR}/dep_tc/mersennetwister
  ${CMAKE_SOURCE_DIR}/dep_tc/zlib
  ${CMAKE_SOURCE_DIR}/dep_tc/lualib
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/shared
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/shared/Configuration
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/shared/Cryptography
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/shared/Database
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/shared/DataStores
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/shared/Debugging
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/shared/Dynamic/CountedReference
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/shared/Dynamic/LinkedReference
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/shared/Dynamic
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/shared/Logging
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/shared/Packets
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/shared/Policies
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/shared/Threading
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/shared/Utilities
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/collision
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/collision/Management
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/collision/Models
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/collision/Maps
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/shared
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/shared/Database
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Accounts
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Achievements
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Addons
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Handlers
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/AI
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/AI/CoreAI
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/AI/EventAI
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/AI/ScriptedAI
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/AI/SmartScripts
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/AuctionHouse
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Battlegrounds
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Battlegrounds/Zones
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Calendar
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Chat
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Chat/Channels
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Conditions
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/shared/Configuration
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Combat
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/DataStores
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/DungeonFinding
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Entities/Corpse
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Entities/Creature
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Entities/DynamicObject
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Entities/Item
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Entities/Item/Container
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Entities/GameObject
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Entities/Object
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Entities/Object/Updates
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Entities/Pet
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Entities/Player
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Entities/Transport
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Entities/Unit
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Entities/Vehicle
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Events
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Globals
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Grids
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Grids/Cells
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Grids/Notifiers
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Groups
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Guilds
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Instances
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/LookingForGroup
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Loot
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Mails
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Miscellaneous
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Maps
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Movement
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Movement/MovementGenerators
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Movement/Waypoints
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Movement/Spline
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Opcodes
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/OutdoorPvP
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Pools
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/PrecompiledHeaders
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Quests
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Reputation
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Scripting
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Server
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Server/Protocol
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Server/Protocol/Handlers
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Skills
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Spells
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Spells/Auras
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Texts
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Tickets
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Tools
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Weather
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/World
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/scripts/PrecompiledHeaders
  ${ACE_INCLUDE_DIR}
  ${MYSQL_INCLUDE_DIR}
)

add_library(LuaEngine STATIC 
  ${LuaEngine_STAT_SRCS}
  ${game_STAT_SRCS}
  ${game_STAT_PCH_SRC}
)

target_link_libraries(LuaEngine
  game
)

add_dependencies(LuaEngine game)