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

# Needs to link against likanmod_worldd.lib
#if(WIN32)
#  link_directories(
#    ${CMAKE_BINARY_DIR}/src/likanmod/${CMAKE_CFG_INTDIR}
#  )
#  include_directories(
#    ${CMAKE_SOURCE_DIR}/dep/include # For Win32
#  )
#endif()

##############################

#add_subdirectory(genrev)

##############################

add_subdirectory(src_cata)
#add_subdirectory(src_mop)
#add_subdirectory(src_wotlk)
##############################

#if(TOOLS)
#  add_subdirectory(tools)
#endif(TOOLS)
##############################
