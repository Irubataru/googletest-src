ifeq ($(CXX),g++)
 CXX11FLAG = -std=c++0x
else
 CXX11FLAG = -std=c++11
endif

SRCS_VPATH := src

TARGETS := libgmock.a
SRCS := gmock-all.cc

CXXFLAGS := -g -pthread $(CXX11FLAG) -I$(d)
INCLUDES_$(d) := $(d) $(d)/include $(d)/../googletest/include

libgmock.a_DEPS = gmock-all.o
