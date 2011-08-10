FIND_PATH(GLOG_INCLUDE_DIR glog/logging.h)

FIND_LIBRARY(GLOG_LIBRARY NAMES glog
			DOC "The Google Glog Library"
			)

MARK_AS_ADVANCED(GLOG_INCLUDE_DIR GLOG_LIBRARY)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(GLOG DEFAULT_MSG GLOG_LIBRARY GLOG_INCLUDE_DIR)

IF(GLOG_FOUND)
	SET(GLOG_INCLUDE_DIRS ${GLOG_INCLUDE_DIR})
	SET(GLOG_LIBRARIES    ${GLOG_LIBRARY})
ENDIF()