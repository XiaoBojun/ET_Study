FIND_PATH(PERFTOOLS_INCLUDE_DIR google/heap-profiler.h)

FIND_LIBRARY(PERFTOOLS_DEBUG_LIBRARY NAMES tcmalloc_debug
			DOC "The Google Perftools Debug Library"
			)

FIND_LIBRARY(PERFTOOLS_LIBRARY NAMES tcmalloc
			DOC "The Google Perftools Library"
			)
			
MARK_AS_ADVANCED(PERFTOOLS_INCLUDE_DIR PERFTOOLS_DEBUG_LIBRARIE PERFTOOLS_LIBRARIE)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(PERFTOOLS DEFAULT_MSG PERFTOOLS_INCLUDE_DIR PERFTOOLS_DEBUG_LIBRARY PERFTOOLS_LIBRARY)

IF(PERFTOOLS_FOUND)
	SET(PERFTOOLS_INCLUDE_DIRS ${PERFTOOLS_INCLUDE_DIR})
	SET(PERFTOOLS_DEBUG_LIBRARIES ${PERFTOOLS_DEBUG_LIBRARY})
	SET(PERFTOOLS_LIBRARIES ${PERFTOOLS_LIBRARY})
ENDIF()