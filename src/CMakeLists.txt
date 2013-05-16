CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

#set(BOOST_1_51_INCLUDE_DIR "/Users/chris/p4sync/dev/ThirdParty/boost/boost_1_51_0/libApple/include")
#set(BOOST_1_51_LIBRARY_DIR "/Users/chris/p4sync/dev/ThirdParty/boost/boost_1_51_0/libApple/lib")

#include_directories(${BOOST_1_51_INCLUDE_DIR})
#link_directories(${BOOST_1_51_LIBRARY_DIR})
#add_definitions("-DHAS_BOOST")
#add_definitions("-DBOOST_ALL_DYN_LINK")

set(sources main.cpp)

add_executable(main_app MACOSX_BUNDLE ${sources})

#set(BOOST_LIBS ${BOOST_1_49_LIBRARY_DIR}/libboost_filesystem-1_51_0.dylib
#               ${BOOST_1_49_LIBRARY_DIR}/libboost_system-1_51_0.dylib)

#target_link_libraries(main_app ${BOOST_LIBS})
