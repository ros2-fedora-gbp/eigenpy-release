# Copyright (C) 2008-2014 LAAS-CNRS, JRL AIST-CNRS.
#
# This program is free software: you can redistribute it and/or modify it under
# the terms of the GNU General Public License as published by the Free Software
# Foundation, either version 3 of the License, or (at your option) any later
# version.
#
# This program is distributed in the hope that it will be useful, but WITHOUT
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
# FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
# details.
#
# You should have received a copy of the GNU General Public License along with
# this program.  If not, see <http://www.gnu.org/licenses/>.

# .rst: .. ifmode:: user
#
# By default, Doxygen_, if found, is used to generate a HTML documentation of
# the code. You can configure it as follows:
#
# * Many Doxygen options can be configured from CMake itself. E.g. Doxygen
#   option `PROJECT_NAME` can be set using CMake variable
#   `DOXYGEN_PROJECT_NAME`.
#
# * If present, the file *doc/Doxyfile.extra.in* will be configured and append
#   to the above mentionned configuration file.
#
# For a good documentation of the available options, see either `local
# documentation <file:///usr/share/doc/doxygen/html/config.html>`_ provided by
# package *doxygen-doc* or the `online version
# <http://www.doxygen.nl/manual/config.html>`_.
#
# .. variable:: INSTALL_DOCUMENTATION
#
# whether the documentation should be installed. Turning this to OFF does not
# prevent the documentation generation.
#
# .. _Doxygen: http://www.doxygen.nl

# .rst: .. ifmode:: internal
#
# .. command:: _SETUP_DOXYGEN_DEFAULT_OPTIONS
#
# Set default options for doxygen configuration when the user didn't specify
# those options already. To add doxygen configuration option, the easiest is
#
# * `doxygen -s -g Doxyfile.tmp`
# * `awk -f doxyfile.awk doxygen`
#
# :param configfile: the output file
macro(_SETUP_DOXYGEN_CONFIG_FILE configfile)
  file(WRITE ${configfile} "# Generated by cmake/doxygen.cmake\n")
  foreach(
    option
    # This list was generated using doxygen -s -g Doxyfile.tmp awk -f
    # doxyfile.awk doxygen Doxyfile 1.8.18
    # ---------------------------------------------------------------------------
    # Project related configuration options
    # ---------------------------------------------------------------------------
    DOXYFILE_ENCODING
    PROJECT_NAME
    PROJECT_NUMBER
    PROJECT_BRIEF
    PROJECT_LOGO
    OUTPUT_DIRECTORY
    CREATE_SUBDIRS
    ALLOW_UNICODE_NAMES
    OUTPUT_LANGUAGE
    OUTPUT_TEXT_DIRECTION
    BRIEF_MEMBER_DESC
    REPEAT_BRIEF
    ABBREVIATE_BRIEF
    ALWAYS_DETAILED_SEC
    INLINE_INHERITED_MEMB
    FULL_PATH_NAMES
    STRIP_FROM_PATH
    STRIP_FROM_INC_PATH
    SHORT_NAMES
    JAVADOC_AUTOBRIEF
    JAVADOC_BANNER
    QT_AUTOBRIEF
    MULTILINE_CPP_IS_BRIEF
    INHERIT_DOCS
    SEPARATE_MEMBER_PAGES
    TAB_SIZE
    ALIASES
    TCL_SUBST
    OPTIMIZE_OUTPUT_FOR_C
    OPTIMIZE_OUTPUT_JAVA
    OPTIMIZE_FOR_FORTRAN
    OPTIMIZE_OUTPUT_VHDL
    OPTIMIZE_OUTPUT_SLICE
    EXTENSION_MAPPING
    MARKDOWN_SUPPORT
    TOC_INCLUDE_HEADINGS
    AUTOLINK_SUPPORT
    BUILTIN_STL_SUPPORT
    CPP_CLI_SUPPORT
    SIP_SUPPORT
    IDL_PROPERTY_SUPPORT
    DISTRIBUTE_GROUP_DOC
    GROUP_NESTED_COMPOUNDS
    SUBGROUPING
    INLINE_GROUPED_CLASSES
    INLINE_SIMPLE_STRUCTS
    TYPEDEF_HIDES_STRUCT
    LOOKUP_CACHE_SIZE
    # ---------------------------------------------------------------------------
    # Build related configuration options
    # ---------------------------------------------------------------------------
    EXTRACT_ALL
    EXTRACT_PRIVATE
    EXTRACT_PRIV_VIRTUAL
    EXTRACT_PACKAGE
    EXTRACT_STATIC
    EXTRACT_LOCAL_CLASSES
    EXTRACT_LOCAL_METHODS
    EXTRACT_ANON_NSPACES
    HIDE_UNDOC_MEMBERS
    HIDE_UNDOC_CLASSES
    HIDE_FRIEND_COMPOUNDS
    HIDE_IN_BODY_DOCS
    INTERNAL_DOCS
    CASE_SENSE_NAMES
    HIDE_SCOPE_NAMES
    HIDE_COMPOUND_REFERENCE=
    SHOW_INCLUDE_FILES
    SHOW_GROUPED_MEMB_INC
    FORCE_LOCAL_INCLUDES
    INLINE_INFO
    SORT_MEMBER_DOCS
    SORT_BRIEF_DOCS
    SORT_MEMBERS_CTORS_1ST
    SORT_GROUP_NAMES
    SORT_BY_SCOPE_NAME
    STRICT_PROTO_MATCHING
    GENERATE_TODOLIST
    GENERATE_TESTLIST
    GENERATE_BUGLIST
    GENERATE_DEPRECATEDLIST=
    ENABLED_SECTIONS
    MAX_INITIALIZER_LINES
    SHOW_USED_FILES
    SHOW_FILES
    SHOW_NAMESPACES
    FILE_VERSION_FILTER
    LAYOUT_FILE
    CITE_BIB_FILES
    # ---------------------------------------------------------------------------
    # Configuration options related to warning and progress messages
    # ---------------------------------------------------------------------------
    QUIET
    WARNINGS
    WARN_IF_UNDOCUMENTED
    WARN_IF_DOC_ERROR
    WARN_NO_PARAMDOC
    WARN_AS_ERROR
    WARN_FORMAT
    WARN_LOGFILE
    # ---------------------------------------------------------------------------
    # Configuration options related to the input files
    # ---------------------------------------------------------------------------
    INPUT
    INPUT_ENCODING
    FILE_PATTERNS
    RECURSIVE
    EXCLUDE
    EXCLUDE_SYMLINKS
    EXCLUDE_PATTERNS
    EXCLUDE_SYMBOLS
    EXAMPLE_PATH
    EXAMPLE_PATTERNS
    EXAMPLE_RECURSIVE
    IMAGE_PATH
    INPUT_FILTER
    FILTER_PATTERNS
    FILTER_SOURCE_FILES
    FILTER_SOURCE_PATTERNS
    USE_MDFILE_AS_MAINPAGE
    # ---------------------------------------------------------------------------
    # Configuration options related to source browsing
    # ---------------------------------------------------------------------------
    SOURCE_BROWSER
    INLINE_SOURCES
    STRIP_CODE_COMMENTS
    REFERENCED_BY_RELATION
    REFERENCES_RELATION
    REFERENCES_LINK_SOURCE
    SOURCE_TOOLTIPS
    USE_HTAGS
    VERBATIM_HEADERS
    # ---------------------------------------------------------------------------
    # Configuration options related to the alphabetical class index
    # ---------------------------------------------------------------------------
    ALPHABETICAL_INDEX
    COLS_IN_ALPHA_INDEX
    IGNORE_PREFIX
    # ---------------------------------------------------------------------------
    # Configuration options related to the HTML output
    # ---------------------------------------------------------------------------
    GENERATE_HTML
    HTML_OUTPUT
    HTML_FILE_EXTENSION
    HTML_HEADER
    HTML_FOOTER
    HTML_STYLESHEET
    HTML_EXTRA_STYLESHEET
    HTML_EXTRA_FILES
    HTML_COLORSTYLE_HUE
    HTML_COLORSTYLE_SAT
    HTML_COLORSTYLE_GAMMA
    HTML_TIMESTAMP
    HTML_DYNAMIC_MENUS
    HTML_DYNAMIC_SECTIONS
    HTML_INDEX_NUM_ENTRIES
    GENERATE_DOCSET
    DOCSET_FEEDNAME
    DOCSET_BUNDLE_ID
    DOCSET_PUBLISHER_ID
    DOCSET_PUBLISHER_NAME
    GENERATE_HTMLHELP
    CHM_FILE
    HHC_LOCATION
    GENERATE_CHI
    CHM_INDEX_ENCODING
    BINARY_TOC
    TOC_EXPAND
    GENERATE_QHP
    QCH_FILE
    QHP_NAMESPACE
    QHP_VIRTUAL_FOLDER
    QHP_CUST_FILTER_NAME
    QHP_CUST_FILTER_ATTRS
    QHP_SECT_FILTER_ATTRS
    QHG_LOCATION
    GENERATE_ECLIPSEHELP
    ECLIPSE_DOC_ID
    DISABLE_INDEX
    GENERATE_TREEVIEW
    ENUM_VALUES_PER_LINE
    TREEVIEW_WIDTH
    EXT_LINKS_IN_WINDOW
    HTML_FORMULA_FORMAT
    FORMULA_FONTSIZE
    FORMULA_TRANSPARENT
    FORMULA_MACROFILE
    USE_MATHJAX
    MATHJAX_FORMAT
    MATHJAX_RELPATH
    MATHJAX_EXTENSIONS
    MATHJAX_CODEFILE
    SEARCHENGINE
    SERVER_BASED_SEARCH
    EXTERNAL_SEARCH
    SEARCHENGINE_URL
    SEARCHDATA_FILE
    EXTERNAL_SEARCH_ID
    EXTRA_SEARCH_MAPPINGS
    # ---------------------------------------------------------------------------
    # Configuration options related to the LaTeX output
    # ---------------------------------------------------------------------------
    GENERATE_LATEX
    LATEX_OUTPUT
    LATEX_CMD_NAME
    MAKEINDEX_CMD_NAME
    LATEX_MAKEINDEX_CMD
    COMPACT_LATEX
    PAPER_TYPE
    EXTRA_PACKAGES
    LATEX_HEADER
    LATEX_FOOTER
    LATEX_EXTRA_STYLESHEET
    LATEX_EXTRA_FILES
    PDF_HYPERLINKS
    USE_PDFLATEX
    LATEX_BATCHMODE
    LATEX_HIDE_INDICES
    LATEX_SOURCE_CODE
    LATEX_BIB_STYLE
    LATEX_TIMESTAMP
    LATEX_EMOJI_DIRECTORY
    # ---------------------------------------------------------------------------
    # Configuration options related to the RTF output
    # ---------------------------------------------------------------------------
    GENERATE_RTF
    RTF_OUTPUT
    COMPACT_RTF
    RTF_HYPERLINKS
    RTF_STYLESHEET_FILE
    RTF_EXTENSIONS_FILE
    RTF_SOURCE_CODE
    # ---------------------------------------------------------------------------
    # Configuration options related to the man page output
    # ---------------------------------------------------------------------------
    GENERATE_MAN
    MAN_OUTPUT
    MAN_EXTENSION
    MAN_SUBDIR
    MAN_LINKS
    # ---------------------------------------------------------------------------
    # Configuration options related to the XML output
    # ---------------------------------------------------------------------------
    GENERATE_XML
    XML_OUTPUT
    XML_PROGRAMLISTING
    XML_NS_MEMB_FILE_SCOPE
    # ---------------------------------------------------------------------------
    # Configuration options related to the DOCBOOK output
    # ---------------------------------------------------------------------------
    GENERATE_DOCBOOK
    DOCBOOK_OUTPUT
    DOCBOOK_PROGRAMLISTING
    # ---------------------------------------------------------------------------
    # Configuration options for the AutoGen Definitions output
    # ---------------------------------------------------------------------------
    GENERATE_AUTOGEN_DEF
    # ---------------------------------------------------------------------------
    # Configuration options related to the Perl module output
    # ---------------------------------------------------------------------------
    GENERATE_PERLMOD
    PERLMOD_LATEX
    PERLMOD_PRETTY
    PERLMOD_MAKEVAR_PREFIX
    # ---------------------------------------------------------------------------
    # Configuration options related to the preprocessor
    # ---------------------------------------------------------------------------
    ENABLE_PREPROCESSING
    MACRO_EXPANSION
    EXPAND_ONLY_PREDEF
    SEARCH_INCLUDES
    INCLUDE_PATH
    INCLUDE_FILE_PATTERNS
    PREDEFINED
    EXPAND_AS_DEFINED
    SKIP_FUNCTION_MACROS
    # ---------------------------------------------------------------------------
    # Configuration options related to external references
    # ---------------------------------------------------------------------------
    TAGFILES
    GENERATE_TAGFILE
    ALLEXTERNALS
    EXTERNAL_GROUPS
    EXTERNAL_PAGES
    # ---------------------------------------------------------------------------
    # Configuration options related to the dot tool
    # ---------------------------------------------------------------------------
    CLASS_DIAGRAMS
    DIA_PATH
    HIDE_UNDOC_RELATIONS
    HAVE_DOT
    DOT_NUM_THREADS
    DOT_FONTNAME
    DOT_FONTSIZE
    DOT_FONTPATH
    CLASS_GRAPH
    COLLABORATION_GRAPH
    GROUP_GRAPHS
    UML_LOOK
    UML_LIMIT_NUM_FIELDS
    TEMPLATE_RELATIONS
    INCLUDE_GRAPH
    INCLUDED_BY_GRAPH
    CALL_GRAPH
    CALLER_GRAPH
    GRAPHICAL_HIERARCHY
    DIRECTORY_GRAPH
    DOT_IMAGE_FORMAT
    INTERACTIVE_SVG
    DOT_PATH
    DOTFILE_DIRS
    MSCFILE_DIRS
    DIAFILE_DIRS
    PLANTUML_JAR_PATH
    PLANTUML_CFG_FILE
    PLANTUML_INCLUDE_PATH
    DOT_GRAPH_MAX_NODES
    MAX_DOT_GRAPH_DEPTH
    DOT_TRANSPARENT
    DOT_MULTI_TARGETS
    GENERATE_LEGEND
    DOT_CLEANUP)
    if(DEFINED DOXYGEN_${option})
      file(APPEND ${configfile} "${option} = ${DOXYGEN_${option}}\n")
    endif()
  endforeach()
endmacro(_SETUP_DOXYGEN_CONFIG_FILE)

macro(_set_if_undefined variable)
  if(NOT DEFINED ${variable})
    set(${variable} ${ARGN})
  endif()
endmacro()

# _SETUP_DOXYGEN_DEFAULT_OPTIONS
# ----------------------------
#
# Set default options for doxygen configuration when the user didn't specify
# those options already.
macro(_SETUP_DOXYGEN_DEFAULT_OPTIONS)
  # ---------------------------------------------------------------------------
  # Project related configuration options
  # ---------------------------------------------------------------------------
  _set_if_undefined(DOXYGEN_PROJECT_NAME "${PROJECT_NAME}")
  _set_if_undefined(DOXYGEN_PROJECT_NUMBER "${PROJECT_VERSION}")
  _set_if_undefined(DOXYGEN_PROJECT_BRIEF "\"${PROJECT_DESCRIPTION}\"")
  _set_if_undefined(DOXYGEN_STRIP_FROM_PATH "${PROJECT_SOURCE_DIR}")
  _set_if_undefined(DOXYGEN_STRIP_FROM_INC_PATH
                    "${PROJECT_SOURCE_DIR}/src ${PROJECT_SOURCE_DIR}/include")
  _set_if_undefined(DOXYGEN_EXTRACT_ALL "YES")
  # ---------------------------------------------------------------------------
  # Configuration options related to warning and progress messages
  # ---------------------------------------------------------------------------
  _set_if_undefined(DOXYGEN_QUIET YES)
  _set_if_undefined(DOXYGEN_WARN_LOGFILE doxygen.log)
  # ---------------------------------------------------------------------------
  # Configuration options related to the input files
  # ---------------------------------------------------------------------------
  _set_if_undefined(DOXYGEN_IMAGE_PATH "${PROJECT_SOURCE_DIR}/doc")
  _set_if_undefined(DOXYGEN_FILE_PATTERNS
                    "*.cc *.cpp *.h *.hh *.hpp *.hxx *.idl")
  _set_if_undefined(DOXYGEN_RECURSIVE YES)
  # ---------------------------------------------------------------------------
  # Configuration options related to source browsing
  # ---------------------------------------------------------------------------

  # ---------------------------------------------------------------------------
  # Configuration options related to the alphabetical class index
  # ---------------------------------------------------------------------------

  # ---------------------------------------------------------------------------
  # Configuration options related to the HTML output
  # ---------------------------------------------------------------------------
  _set_if_undefined(DOXYGEN_HTML_OUTPUT doxygen-html)
  _set_if_undefined(DOXYGEN_GENERATE_TREEVIEW YES)
  # ---------------------------------------------------------------------------
  # Configuration options related to the LaTeX output
  # ---------------------------------------------------------------------------
  _set_if_undefined(DOXYGEN_GENERATE_LATEX NO)
  _set_if_undefined(DOXYGEN_LATEX_OUTPUT doxygen-latex)
  _set_if_undefined(DOXYGEN_EXTRA_PACKAGES "amssymb,amsmath")
  # ---------------------------------------------------------------------------
  # Configuration options related to the RTF output
  # ---------------------------------------------------------------------------

  # ---------------------------------------------------------------------------
  # Configuration options related to the man page output
  # ---------------------------------------------------------------------------

  # ---------------------------------------------------------------------------
  # Configuration options related to the XML output
  # ---------------------------------------------------------------------------

  # ---------------------------------------------------------------------------
  # Configuration options related to the DOCBOOK output
  # ---------------------------------------------------------------------------

  # ---------------------------------------------------------------------------
  # Configuration options for the AutoGen Definitions output
  # ---------------------------------------------------------------------------

  # ---------------------------------------------------------------------------
  # Configuration options related to the Perl module output
  # ---------------------------------------------------------------------------

  # ---------------------------------------------------------------------------
  # Configuration options related to the preprocessor
  # ---------------------------------------------------------------------------

  # ---------------------------------------------------------------------------
  # Configuration options related to external references
  # ---------------------------------------------------------------------------
  _set_if_undefined(DOXYGEN_GENERATE_TAGFILE "${PROJECT_NAME}.doxytag")
  # ---------------------------------------------------------------------------
  # Configuration options related to the dot tool
  # ---------------------------------------------------------------------------

endmacro(_SETUP_DOXYGEN_DEFAULT_OPTIONS)

# _SETUP_PROJECT_DOCUMENTATION
# ----------------------------
#
# Look for Doxygen, add a custom rule to generate the documentation and install
# the documentation properly.
#
# Available user options (to be set before calling SETUP_PROJECT):
# DOXYGEN_DOT_IMAGE_FORMAT: format for dot images. Defaults to "svg".
# DOXYGEN_USE_MATHJAX: use MathJax to render LaTeX equations. Defaults to "NO".
macro(_SETUP_PROJECT_DOCUMENTATION)

  # Search for Doxygen.
  find_package(Doxygen)

  if(NOT DOXYGEN_FOUND)
    message(
      WARNING "Failed to find Doxygen, documentation will not be generated.")
  else(NOT DOXYGEN_FOUND)
    get_directory_property(has_parent_scope PARENT_DIRECTORY)
    set(JRL_CMAKEMODULE_DOXYFILE_PATH "${PROJECT_BINARY_DIR}/doc/Doxyfile")
    if(has_parent_scope)
      set(DOXYGEN_FOUND
          ${DOXYGEN_FOUND}
          PARENT_SCOPE)
      set(JRL_CMAKEMODULE_DOXYFILE_PATH
          ${JRL_CMAKEMODULE_DOXYFILE_PATH}
          PARENT_SCOPE)
    endif(has_parent_scope)
    unset(has_parent_scope)

    _setup_doxygen_default_options()
    # Generate variable to be substitued in Doxyfile.in for dot use.
    if(DOXYGEN_DOT_FOUND)
      set(DOXYGEN_HAVE_DOT YES)
    endif(DOXYGEN_DOT_FOUND)

    # Teach CMake how to generate the documentation.
    if(MSVC)
      # FIXME: it is impossible to trigger documentation installation at
      # install, so put the target in ALL instead.
      add_custom_target(
        doc ALL
        COMMAND ${DOXYGEN_EXECUTABLE} ${JRL_CMAKEMODULE_DOXYFILE_PATH}
        WORKING_DIRECTORY doc
        COMMENT "Generating Doxygen documentation")
    else(MSVC)
      add_custom_target(
        doc
        COMMAND ${DOXYGEN_EXECUTABLE} ${JRL_CMAKEMODULE_DOXYFILE_PATH}
        WORKING_DIRECTORY doc
        COMMENT "Generating Doxygen documentation")

      if(INSTALL_DOCUMENTATION)
        install(CODE "EXECUTE_PROCESS(COMMAND ${CMAKE_MAKE_PROGRAM} doc)")
      endif(INSTALL_DOCUMENTATION)
    endif(MSVC)

    if(DOXYGEN_USE_TEMPLATE_CSS)
      add_custom_target(
        generate-template-css
        COMMAND
          ${DOXYGEN_EXECUTABLE} -w html ${PROJECT_BINARY_DIR}/doc/header.html
          ${PROJECT_BINARY_DIR}/doc/footer.html
          ${PROJECT_BINARY_DIR}/doc/doxygen.css
        BYPRODUCTS ${PROJECT_BINARY_DIR}/doc/header.html
                   ${PROJECT_BINARY_DIR}/doc/footer.html
                   ${PROJECT_BINARY_DIR}/doc/doxygen.css)
      add_dependencies(doc generate-template-css)
      _set_if_undefined(DOXYGEN_HTML_HEADER
                        "${PROJECT_BINARY_DIR}/doc/header.html")
      _set_if_undefined(DOXYGEN_HTML_FOOTER
                        "${PROJECT_BINARY_DIR}/doc/footer.html")
      _set_if_undefined(DOXYGEN_HTML_STYLESHEET
                        "${PROJECT_BINARY_DIR}/doc/doxygen.css")
    else(DOXYGEN_USE_TEMPLATE_CSS)
      _set_if_undefined(DOXYGEN_HTML_FOOTER
                        "${PROJECT_JRL_CMAKE_MODULE_DIR}/doxygen/footer.html")
      _set_if_undefined(DOXYGEN_HTML_STYLESHEET
                        "${PROJECT_JRL_CMAKE_MODULE_DIR}/doxygen/doxygen.css")
    endif(DOXYGEN_USE_TEMPLATE_CSS)

    add_custom_command(
      OUTPUT ${PROJECT_BINARY_DIR}/doc/${PROJECT_NAME}.doxytag
             ${PROJECT_BINARY_DIR}/doc/doxygen-html
      COMMAND ${DOXYGEN_EXECUTABLE} ${JRL_CMAKEMODULE_DOXYFILE_PATH}
      WORKING_DIRECTORY doc
      COMMENT "Generating Doxygen documentation")

    # Clean generated files.
    set_property(
      DIRECTORY
      APPEND
      PROPERTY ADDITIONAL_MAKE_CLEAN_FILES
               ${PROJECT_BINARY_DIR}/doc/${PROJECT_NAME}.doxytag
               ${PROJECT_BINARY_DIR}/doc/doxygen.log
               ${PROJECT_BINARY_DIR}/doc/doxygen-html)

    # Install MathJax minimal version.
    if("${DOXYGEN_USE_MATHJAX}" STREQUAL "YES")
      file(COPY ${PROJECT_JRL_CMAKE_MODULE_DIR}/doxygen/MathJax
           DESTINATION ${PROJECT_BINARY_DIR}/doc/doxygen-html)
    endif()

    # Install generated files.
    if(INSTALL_DOCUMENTATION)
      if(EXISTS ${PROJECT_BINARY_DIR}/doc/${PROJECT_NAME}.doxytag)
        install(FILES ${PROJECT_BINARY_DIR}/doc/${PROJECT_NAME}.doxytag
                DESTINATION ${CMAKE_INSTALL_DOCDIR}/doxygen-html)
      endif()
      install(DIRECTORY ${PROJECT_BINARY_DIR}/doc/doxygen-html
              DESTINATION ${CMAKE_INSTALL_DOCDIR})

      if(EXISTS ${PROJECT_SOURCE_DIR}/doc/pictures)
        install(DIRECTORY ${PROJECT_SOURCE_DIR}/doc/pictures
                DESTINATION ${CMAKE_INSTALL_DOCDIR}/doxygen-html)
      endif(EXISTS ${PROJECT_SOURCE_DIR}/doc/pictures)
    endif(INSTALL_DOCUMENTATION)

    list(
      APPEND
      LOGGING_WATCHED_VARIABLES
      DOXYGEN_SKIP_DOT
      DOXYGEN_EXECUTABLE
      DOXYGEN_FOUND
      DOXYGEN_DOT_EXECUTABLE
      DOXYGEN_DOT_FOUND
      DOXYGEN_DOT_PATH
      DOXYGEN_DOT_IMAGE_FORMAT
      DOXYGEN_USE_MATHJAX
      DOXYGEN_USE_TEMPLATE_CSS)
  endif(NOT DOXYGEN_FOUND)
endmacro(_SETUP_PROJECT_DOCUMENTATION)

# _DOXYTAG_ENTRIES_FROM_CMAKE_DEPENDENCIES
# ----------------------------------------
#
# Generate TAGFILES entries from this project dependencies and their
# dependencies (recursively)
#
macro(_DOXYTAG_ENTRIES_FROM_CMAKE_DEPENDENCIES DEPENDENCIES VAR_OUT)
  foreach(PREFIX ${DEPENDENCIES})
    if(DEFINED ${PREFIX}_DOXYGENDOCDIR
       AND EXISTS ${${PREFIX}_DOXYGENDOCDIR}/${PREFIX}.doxytag)
      set(${VAR_OUT}
          "${${VAR_OUT}} \"${${PREFIX}_DOXYGENDOCDIR}/${PREFIX}.doxytag = ${${PREFIX}_DOXYGENDOCDIR}\""
      )
    endif()
    if(DEFINED ${PREFIX}_DEPENDENCIES)
      _doxytag_entries_from_cmake_dependencies("${${PREFIX}_DEPENDENCIES}"
                                               ${VAR_OUT})
    endif()
  endforeach()
endmacro()

# _SETUP_PROJECT_DOCUMENTATION_FINALIZE
# -------------------------------------
#
# Post-processing for the documentation generation macro.
#
# Doxyfile.extra and Doxyfile files are generated at the end to allow the
# replacement of user-defined variables.
#
macro(_SETUP_PROJECT_DOCUMENTATION_FINALIZE)
  if(DOXYGEN_FOUND)
    if(NOT "${DOXYGEN_USE_MATHJAX}" STREQUAL "YES")
      # Make sure latex, dvips and gs are available
      find_program(LATEX latex DOC "LaTeX compiler")
      find_program(DVIPS dvips DOC "DVI to PostScript converter")
      find_program(GS gs DOC "GhostScript interpreter")

      if(NOT
         (LATEX
          AND GS
          AND DVIPS))
        message(
          STATUS "Failed to find latex/dvips/gs, will use MathJax backend.")
        set(DOXYGEN_USE_MATHJAX "YES")
      endif()
    endif()

    if("${DOXYGEN_USE_MATHJAX}" STREQUAL "YES")
      message(STATUS "Doxygen rendering: using MathJax backend")
      set(DOXYGEN_HEADER_NAME "header-mathjax.html")
    else()
      message(STATUS "Doxygen rendering: using LaTeX backend")
      set(DOXYGEN_HEADER_NAME "header.html")
    endif()
    _set_if_undefined(
      DOXYGEN_HTML_HEADER
      "${PROJECT_JRL_CMAKE_MODULE_DIR}/doxygen/${DOXYGEN_HEADER_NAME}")

    if(INSTALL_DOCUMENTATION)
      # Find doxytag files To ignore this list of tag files, set variable
      # DOXYGEN_TAGFILES
      set(PKG_REQUIRES ${_PKG_CONFIG_REQUIRES})
      list(APPEND PKG_REQUIRES ${_PKG_CONFIG_COMPILE_TIME_REQUIRES})
      foreach(PKG_CONFIG_STRING ${PKG_REQUIRES})
        _parse_pkg_config_string(${PKG_CONFIG_STRING} LIBRARY_NAME PREFIX
                                 PKG_CONFIG_STRING_NOSPACE)
        # If DOXYGENDOCDIR is specified, add a doc path.
        if(DEFINED ${PREFIX}_DOXYGENDOCDIR
           AND EXISTS ${${PREFIX}_DOXYGENDOCDIR}/${LIBRARY_NAME}.doxytag)
          file(RELATIVE_PATH DEP_DOCDIR ${_PKG_CONFIG_DOXYGENDOCDIR}
               ${${PREFIX}_DOXYGENDOCDIR})

          set(DOXYGEN_TAGFILES_FROM_DEPENDENCIES
              "${DOXYGEN_TAGFILES_FROM_DEPENDENCIES} \"${${PREFIX}_DOXYGENDOCDIR}/${LIBRARY_NAME}.doxytag\"=\"${DEP_DOCDIR}\""
          )
        endif()
      endforeach()
      _doxytag_entries_from_cmake_dependencies(
        "${_PACKAGE_CONFIG_DEPENDENCIES_PROJECTS}"
        DOXYGEN_TAGFILES_FROM_DEPENDENCIES)
    endif()
    _set_if_undefined(DOXYGEN_TAGFILES "${DOXYGEN_TAGFILES_FROM_DEPENDENCIES}")

    if(EXISTS ${PROJECT_SOURCE_DIR}/include)
      set(DOXYGEN_INCLUDE_PATH
          "${DOXYGEN_INCLUDE_PATH} \"${PROJECT_SOURCE_DIR}/include\"")
      set(DOXYGEN_INPUT "${DOXYGEN_INPUT} \"${PROJECT_SOURCE_DIR}/include\"")
    endif()
    if(EXISTS ${PROJECT_SOURCE_DIR}/src)
      set(DOXYGEN_INPUT "${DOXYGEN_INPUT} \"${PROJECT_SOURCE_DIR}/src\"")
    endif()
    if(EXISTS ${PROJECT_SOURCE_DIR}/tests)
      set(DOXYGEN_EXAMPLE_PATH
          "${DOXYGEN_EXAMPLE_PATH} \"${PROJECT_SOURCE_DIR}/tests\"")
    endif()
    set(DOXYGEN_INCLUDE_PATH
        "${DOXYGEN_INCLUDE_PATH} \"${PROJECT_BINARY_DIR}/include\"")

    # Generate Doxyfile and Doxyfile.extra.
    if(EXISTS ${PROJECT_SOURCE_DIR}/doc/Doxyfile.extra.in)
      configure_file(${PROJECT_SOURCE_DIR}/doc/Doxyfile.extra.in
                     ${PROJECT_BINARY_DIR}/doc/Doxyfile.extra @ONLY)
      # Generate Doxyfile.
      _setup_doxygen_config_file(${JRL_CMAKEMODULE_DOXYFILE_PATH})
      file(STRINGS ${PROJECT_BINARY_DIR}/doc/Doxyfile.extra doxyfile_extra)
      foreach(x ${doxyfile_extra})
        file(APPEND ${JRL_CMAKEMODULE_DOXYFILE_PATH} ${x} "\n")
      endforeach(x in doxyfile_extra)
    else()
      # This is kept for bacward compatibility. It was the only thing left in
      # doxygen/Doxyfile.extra.in
      set(DOXYGEN_IMAGE_PATH "${PROJECT_SOURCE_DIR}/doc/pictures")
      # Generate Doxyfile.
      _setup_doxygen_config_file(${JRL_CMAKEMODULE_DOXYFILE_PATH})
    endif()
  endif(DOXYGEN_FOUND)
endmacro(_SETUP_PROJECT_DOCUMENTATION_FINALIZE)
