# 
# Copyright (C) Likan Mod   (https://github.com/ChaosDevLikan/)
# Copyright (C) Prydev      (http://sourceforge.net/projects/prydevserver) 
# Copyright (C) TrinityCore (http://www.trinitycore.org)
# Copyright (C) MaNGOS      (http://www.getmangos.com)
# Copyright (C) ArkCORE     (http://www.arkania.net)
# Copyright (C) SkyFireEMU  (http://www.projectskyfire.org)
# 
# World of Warcraft
# You can edit but you can not delete this copyright.
# Genesis Emulator - Genesis Database 
# 
# 
#  By Likan Developer Core C++, SQL (FUN, WoTLK, Cata Realm) of Genesis Server
# 

if( USE_SCRIPTPCH )
  include_directories(
    ${CMAKE_CURRENT_BINARY_DIR}
  )
endif()

file(GLOB_RECURSE sources_Cataclysm Cataclysm/*.cpp Cataclysm/*.h)
file(GLOB_RECURSE sources_Commands Commands/*.cpp Commands/*.h)
file(GLOB_RECURSE sources_Custom Custom/*.cpp Custom/*.h)
file(GLOB_RECURSE sources_EasternKingdoms EasternKingdoms/*.cpp EasternKingdoms/*.h)
file(GLOB_RECURSE sources_Events Events/*.cpp Events/*.h)
file(GLOB_RECURSE sources_Examples Examples/*.cpp Examples/*.h)
file(GLOB_RECURSE sources_Kalimdor Kalimdor/*.cpp Kalimdor/*.h)
file(GLOB_RECURSE sources_Maelstrom Maelstrom/*.cpp Maelstrom/*.h)
file(GLOB_RECURSE sources_Mods Mods/*.cpp Mods/*.h)
file(GLOB_RECURSE sources_Northrend Northrend/*.cpp Northrend/*.h)
file(GLOB_RECURSE sources_OutdoorPvP OutdoorPvP/*.cpp OutdoorPvP/*.h)
file(GLOB_RECURSE sources_Outland Outland/*.cpp Outland/*.h)
file(GLOB_RECURSE sources_Pandaria Pandaria/*.cpp Pandaria/*.h)
file(GLOB_RECURSE sources_PrecompiledHeaders PrecompiledHeaders/*.cpp PrecompiledHeaders/*.h)
file(GLOB_RECURSE sources_Spells Spells/*.cpp Spells/*.h)
file(GLOB_RECURSE sources_World World/*.cpp World/*.h)

source_group(Cataclysm FILES ${sources_Cataclysm})
source_group(Commands FILES ${sources_Commands})
source_group(Custom FILES ${sources_Custom})
source_group(EasternKingdoms FILES ${sources_EasternKingdoms})
source_group(Events FILES ${sources_Events})
source_group(Examples FILES ${sources_Examples})
source_group(Kalimdor FILES ${sources_Kalimdor})
source_group(Maelstrom FILES ${sources_Maelstrom})
source_group(Mods FILES ${sources_Mods})
source_group(Northrend FILES ${sources_Northrend})
source_group(OutdoorPvP FILES ${sources_OutdoorPvP})
source_group(Outland FILES ${sources_Outland})
source_group(Pandaria FILES ${sources_Pandaria})
source_group(PrecompiledHeaders FILES ${sources_PrecompiledHeaders})
source_group(Spells FILES ${sources_Spells})
source_group(World FILES ${sources_World}
source_group(CMake FILES CMakeLists.txt)

)

if (USE_SCRIPTPCH)
  set(scripts_STAT_PCH_HDR PrecompiledHeaders/ScriptPCH.h)
  set(scripts_STAT_PCH_SRC PrecompiledHeaders/ScriptPCH.cpp)
endif ()

message(STATUS "SCRIPT PREPARATIONS")
#include(Spells/CMakeLists.txt)

#include(Commands/CMakeLists.txt)

#include(Examples/CMakeLists.txt)

set(scripts_STAT_SRCS
  ${scripts_STAT_SRCS}
  ../game/AI/ScriptedAI/ScriptedEscortAI.cpp
  ../game/AI/ScriptedAI/ScriptedCreature.cpp
  ../game/AI/ScriptedAI/ScriptedFollowerAI.cpp
)

if(SCRIPTS)
  include(Cataclysm/CMakeLists.txt)
  include(Commands/CMakeLists.txt)
  include(Custom/CMakeLists.txt)
  include(EasternKingdoms/CMakeLists.txt)
  include(Events/CMakeLists.txt)
  include(Examples/CMakeLists.txt)
  include(Kalimdor/CMakeLists.txt)
  include(Maelstrom/CMakeLists.txt)
  include(Mods/CMakeLists.txt)
  include(Northrend/CMakeLists.txt)
  include(OutdoorPvP/CMakeLists.txt)
  include(Outland/CMakeLists.txt)
  include(Pandaria/CMakeLists.txt)
  include(PrecompiledHeaders/CMakeLists.txt)
  include(Spells/CMakeLists.txt)
  include(World/CMakeLists.txt)
endif()

message(STATUS "SCRIPT PREPARATION COMPLETE")
message("")

include_directories(
  ${CMAKE_BINARY_DIR}
  ${CMAKE_SOURCE_DIR}/dep_tc/recastnavigation/Detour
  ${CMAKE_SOURCE_DIR}/dep_tc/recastnavigation/Recast
  ${CMAKE_SOURCE_DIR}/dep_tc/g3dlite/include
  ${CMAKE_SOURCE_DIR}/dep_tc/SFMT
  ${CMAKE_SOURCE_DIR}/dep_tc/zlib
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/shared
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/shared/Configuration
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/shared/Cryptography
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/shared/Database
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/shared/DataStores
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/shared/Debugging
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/shared/Dynamic/LinkedReference
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/shared/Dynamic
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/shared/Logging
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/shared/Packets
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/shared/Threading
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/shared/Utilities
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/collision
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/collision/Management
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/collision/Models
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/LuaEngine
  ${CMAKE_SOURCE_DIR}/dep_tc/lualib
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/shared
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/shared/Database
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Accounts
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Achievements
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Addons
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/AI
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/AI/CoreAI
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/AI/ScriptedAI
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/AI/SmartScripts
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/AuctionHouse
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Battlefield
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Battlefield/Zones
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
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Handlers
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Instances
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/LookingForGroup
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Loot
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Mails
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Miscellaneous
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Maps
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Movement
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Movement/MovementGenerators
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Movement/Spline
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Movement/Waypoints
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Opcodes
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/OutdoorPvP
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Pools
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/PrecompiledHeaders
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Quests
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Reputation
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Scripting
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Server
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Server/Protocol
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Skills
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Spells
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Spells/Auras
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Texts
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Tickets
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Tools
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Warden
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Warden/Modules
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/Weather
  ${CMAKE_SOURCE_DIR}/src/src_cata/server/game/World
  ${CMAKE_CURRENT_SOURCE_DIR}/PrecompiledHeaders
  ${ACE_INCLUDE_DIR}
  ${MYSQL_INCLUDE_DIR}
)

add_library(scripts STATIC
  ${scripts_STAT_SRCS}
  ${scripts_STAT_PCH_SRC}
)

add_dependencies(scripts revision.h)

# Generate precompiled header
if (USE_SCRIPTPCH)
  add_cxx_pch(scripts ${scripts_STAT_PCH_HDR} ${scripts_STAT_PCH_SRC})
endif()

#if( USE_SCRIPTPCH )
#  if(CMAKE_COMPILER_IS_GNUCXX)
#    add_precompiled_header(scripts ${CMAKE_CURRENT_SOURCE_DIR}/PrecompiledHeaders/ScriptPCH.h)
#  elseif(MSVC)
#    add_native_precompiled_header(scripts ${CMAKE_CURRENT_SOURCE_DIR}/PrecompiledHeaders/ScriptPCH)
#  endif()
#endif()
