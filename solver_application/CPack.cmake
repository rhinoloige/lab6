include(InstallRequiredSystemLibraries)
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "solver_application")
set(CPACK_PACKAGE_NAME "solver_application")
option(GENERATOR "")
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "rhinoloige")
install(FILES equation.cpp
      ../formatter_lib/formatter.cpp
      ../formatter_ex_lib/formatter_ex.cpp
      ../solver_lib/solver.cpp
      ../hello_world_application/hello_world.cpp
	DESTINATION code)
install(TARGETS formatter_ex solver_lib LIBRARY DESTINATION lib)
install(TARGETS solver_application DESTINATION bin)
include(CPack)
