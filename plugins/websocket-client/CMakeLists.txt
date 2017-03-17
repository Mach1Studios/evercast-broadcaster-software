set (CMAKE_CXX_STANDARD 11)

if( WIN32 )
  set (OPENSSL_ROOT_DIR "C:/Program Files (x86)/OpenSSL")
endif()

find_package( OpenSSL REQUIRED )

include_directories(
  ${CMAKE_CURRENT_SOURCE_DIR}
  ${CMAKE_CURRENT_SOURCE_DIR}/third_party/asio/include
  )

set( websocketclient_SOURCES WebsocketClientImpl.cpp )
if( WIN32 )
  set( websocketclient_SOURCES
    ${websocketclient_SOURCES}
    dllmain.cpp
    )
  add_definitions( -DWEBSOCKETCLIENT_EXPORTS )
endif()

set( websocketclient_HEADERS
  json.hpp
  WebsocketClientImpl.h
  WebsocketClient.h
  )
add_library( websocketclient SHARED
  ${OPENSSL_INCLUDE_DIR}
  ${OPENSSL_LIBRARIES}
  ${websocketclient_SOURCES}
  ${websocketclient_HEADERS}
  )
