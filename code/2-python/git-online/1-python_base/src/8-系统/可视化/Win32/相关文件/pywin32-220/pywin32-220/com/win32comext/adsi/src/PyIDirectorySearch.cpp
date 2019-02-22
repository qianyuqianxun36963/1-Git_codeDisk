/*
 * FILE : O:\src\pywin32\com\win32comext\adsi\src\PyIDirectorySearch.cpp
 * 
 * This file was automatically generated by :
 * Simplified Wrapper and Interface Generator (SWIG)
 * Version 1.1 (Patch 5)
 * 
 * Portions Copyright (c) 1995-1998
 * The University of Utah and The Regents of the University of California.
 * Permission is granted to distribute this file in any manner provided
 * this notice remains intact.
 * 
 * Do not make changes to this file--changes will be lost!
 *
 */


#define SWIGCODE
/* Implementation : PYTHON */

#define SWIGPYTHON
#include <string.h>
#include <stdlib.h>
/***********************************************************************
 * $Header$
 * swig_lib/python/python.cfg
 *
 * This file contains coded needed to add variable linking to the
 * Python interpreter.   C variables are added as a new kind of Python
 * datatype.
 *
 * Also contains supporting code for building python under Windows
 * and things like that.
 *
 * $Log$
 * Revision 1.1  2000/03/14 23:34:06  mhammond
 * Needed to modify a standard Swig file to avoid the 'extern "C"' around Python.h (which gets upset when it tries to include whcar.h as part of the new Unicode patches)
 *
 ************************************************************************/

#include "Python.h"

/* Definitions for Windows/Unix exporting */
#if defined(__WIN32__)
#   if defined(_MSC_VER)
#	define SWIGEXPORT(a,b) __declspec(dllexport) a b
#   else
#	if defined(__BORLANDC__)
#	    define SWIGEXPORT(a,b) a _export b
#	else
#	    define SWIGEXPORT(a,b) a b
#	endif
#   endif
#else
#   define SWIGEXPORT(a,b) a b
#endif

#ifdef SWIG_GLOBAL
#ifdef __cplusplus
#define SWIGSTATIC extern "C"
#else
#define SWIGSTATIC
#endif
#endif

#ifndef SWIGSTATIC
#define SWIGSTATIC static
#endif

#ifdef NEED_SWIG_VARLINK

typedef struct {
  char  *name;
  PyObject *(*get_attr)(void);
  int (*set_attr)(PyObject *);
} swig_globalvar;

typedef struct swig_varlinkobject {
  PyObject_HEAD
  swig_globalvar **vars;
  int      nvars;
  int      maxvars;
} swig_varlinkobject;

/* ----------------------------------------------------------------------
   swig_varlink_repr()

   Function for python repr method
   ---------------------------------------------------------------------- */

static PyObject *
swig_varlink_repr(swig_varlinkobject *v)
{
  v = v;
  return PyString_FromString("<Global variables>");
}

/* ---------------------------------------------------------------------
   swig_varlink_print()

   Print out all of the global variable names
   --------------------------------------------------------------------- */

static int
swig_varlink_print(swig_varlinkobject *v, FILE *fp, int flags)
{

  int i = 0;
  flags = flags;
  fprintf(fp,"Global variables { ");
  while (v->vars[i]) {
    fprintf(fp,"%s", v->vars[i]->name);
    i++;
    if (v->vars[i]) fprintf(fp,", ");
  }
  fprintf(fp," }\n");
  return 0;
}

/* --------------------------------------------------------------------
   swig_varlink_getattr
 
   This function gets the value of a variable and returns it as a
   PyObject.   In our case, we'll be looking at the datatype and
   converting into a number or string
   -------------------------------------------------------------------- */

static PyObject *
swig_varlink_getattr(swig_varlinkobject *v, char *n)
{
  int i = 0;
  char temp[128];

  while (v->vars[i]) {
    if (strcmp(v->vars[i]->name,n) == 0) {
      return (*v->vars[i]->get_attr)();
    }
    i++;
  }
  sprintf(temp,"C global variable %s not found.", n);
  PyErr_SetString(PyExc_NameError,temp);
  return NULL;
}

/* -------------------------------------------------------------------
   swig_varlink_setattr()

   This function sets the value of a variable.
   ------------------------------------------------------------------- */

static int
swig_varlink_setattr(swig_varlinkobject *v, char *n, PyObject *p)
{
  char temp[128];
  int i = 0;
  while (v->vars[i]) {
    if (strcmp(v->vars[i]->name,n) == 0) {
      return (*v->vars[i]->set_attr)(p);
    }
    i++;
  }
  sprintf(temp,"C global variable %s not found.", n);
  PyErr_SetString(PyExc_NameError,temp);
  return 1;
}

statichere PyTypeObject varlinktype = {
/*  PyObject_HEAD_INIT(&PyType_Type)  Note : This doesn't work on some machines */
  PyObject_HEAD_INIT(0)              
  0,
  "varlink",                          /* Type name    */
  sizeof(swig_varlinkobject),         /* Basic size   */
  0,                                  /* Itemsize     */
  0,                                  /* Deallocator  */ 
  (printfunc) swig_varlink_print,     /* Print        */
  (getattrfunc) swig_varlink_getattr, /* get attr     */
  (setattrfunc) swig_varlink_setattr, /* Set attr     */
  0,                                  /* tp_compare   */
  (reprfunc) swig_varlink_repr,       /* tp_repr      */    
  0,                                  /* tp_as_number */
  0,                                  /* tp_as_mapping*/
  0,                                  /* tp_hash      */
};

/* Create a variable linking object for use later */

SWIGSTATIC PyObject *
SWIG_newvarlink(void)
{
  swig_varlinkobject *result = 0;
  result = PyMem_NEW(swig_varlinkobject,1);
  varlinktype.ob_type = &PyType_Type;    /* Patch varlinktype into a PyType */
  result->ob_type = &varlinktype;
  /*  _Py_NewReference(result);  Does not seem to be necessary */
  result->nvars = 0;
  result->maxvars = 64;
  result->vars = (swig_globalvar **) malloc(64*sizeof(swig_globalvar *));
  result->vars[0] = 0;
  Py_XINCREF((PyObject *) result);
  return ((PyObject*) result);
}

SWIGSTATIC void
SWIG_addvarlink(PyObject *p, char *name,
	   PyObject *(*get_attr)(void), int (*set_attr)(PyObject *p))
{
  swig_varlinkobject *v;
  v= (swig_varlinkobject *) p;
	
  if (v->nvars >= v->maxvars -1) {
    v->maxvars = 2*v->maxvars;
    v->vars = (swig_globalvar **) realloc(v->vars,v->maxvars*sizeof(swig_globalvar *));
    if (v->vars == NULL) {
      fprintf(stderr,"SWIG : Fatal error in initializing Python module.\n");
      exit(1);
    }
  }
  v->vars[v->nvars] = (swig_globalvar *) malloc(sizeof(swig_globalvar));
  v->vars[v->nvars]->name = (char *) malloc(strlen(name)+1);
  strcpy(v->vars[v->nvars]->name,name);
  v->vars[v->nvars]->get_attr = get_attr;
  v->vars[v->nvars]->set_attr = set_attr;
  v->nvars++;
  v->vars[v->nvars] = 0;
}

#else
#define SWIG_newvarlink() Py_None
#endif /* SWIG_NEED_VARLINK */
#ifdef NEED_SWIG_PTR
/*****************************************************************************
 * $Header$
 *
 * swigptr.swg
 *
 * This file contains supporting code for the SWIG run-time type checking
 * mechanism.  The following functions are available :
 *
 * SWIG_RegisterMapping(char *origtype, char *newtype, void *(*cast)(void *));
 *
 *      Registers a new type-mapping with the type-checker.  origtype is the
 *      original datatype and newtype is an equivalent type.  cast is optional
 *      pointer to a function to cast pointer values between types (this
 *      is typically used to cast pointers from derived classes to base classes in C++)
 *      
 * SWIG_MakePtr(char *buffer, void *ptr, char *typestring);
 *     
 *      Makes a pointer string from a pointer and typestring.  The result is returned
 *      in buffer which is assumed to hold enough space for the result.
 *
 * char * SWIG_GetPtr(char *buffer, void **ptr, char *type)
 *
 *      Gets a pointer value from a string.  If there is a type-mismatch, returns
 *      a character string to the received type.  On success, returns NULL.
 *
 *
 * You can remap these functions by making a file called "swigptr.swg" in
 * your the same directory as the interface file you are wrapping.
 *
 * These functions are normally declared static, but this file can be
 * can be used in a multi-module environment by redefining the symbol
 * SWIGSTATIC.
 *****************************************************************************/

#include <stdlib.h>

#ifdef SWIG_GLOBAL
#ifdef __cplusplus
#define SWIGSTATIC extern "C"
#else
#define SWIGSTATIC
#endif
#endif

#ifndef SWIGSTATIC
#define SWIGSTATIC static
#endif


/* SWIG pointer structure */

typedef struct SwigPtrType {
  char               *name;               /* Datatype name                  */
  int                 len;                /* Length (used for optimization) */
  void               *(*cast)(void *);    /* Pointer casting function       */
  struct SwigPtrType *next;               /* Linked list pointer            */
} SwigPtrType;

/* Pointer cache structure */

typedef struct {
  int                 stat;               /* Status (valid) bit             */
  SwigPtrType        *tp;                 /* Pointer to type structure      */
  char                name[256];          /* Given datatype name            */
  char                mapped[256];        /* Equivalent name                */
} SwigCacheType;

/* Some variables  */

static int SwigPtrMax  = 64;           /* Max entries that can be currently held */
                                       /* This value may be adjusted dynamically */
static int SwigPtrN    = 0;            /* Current number of entries              */
static int SwigPtrSort = 0;            /* Status flag indicating sort            */
static int SwigStart[256];             /* Starting positions of types            */

/* Pointer table */
static SwigPtrType *SwigPtrTable = 0;  /* Table containing pointer equivalences  */

/* Cached values */

#define SWIG_CACHESIZE  8
#define SWIG_CACHEMASK  0x7
static SwigCacheType SwigCache[SWIG_CACHESIZE];  
static int SwigCacheIndex = 0;
static int SwigLastCache = 0;

/* Sort comparison function */
static int swigsort(const void *data1, const void *data2) {
	SwigPtrType *d1 = (SwigPtrType *) data1;
	SwigPtrType *d2 = (SwigPtrType *) data2;
	return strcmp(d1->name,d2->name);
}

/* Binary Search function */
static int swigcmp(const void *key, const void *data) {
  char *k = (char *) key;
  SwigPtrType *d = (SwigPtrType *) data;
  return strncmp(k,d->name,d->len);
}

/* Register a new datatype with the type-checker */

SWIGSTATIC 
void SWIG_RegisterMapping(char *origtype, char *newtype, void *(*cast)(void *)) {

  int i;
  SwigPtrType *t = 0,*t1;

  /* Allocate the pointer table if necessary */

  if (!SwigPtrTable) {     
    SwigPtrTable = (SwigPtrType *) malloc(SwigPtrMax*sizeof(SwigPtrType));
    SwigPtrN = 0;
  }
  /* Grow the table */
  if (SwigPtrN >= SwigPtrMax) {
    SwigPtrMax = 2*SwigPtrMax;
    SwigPtrTable = (SwigPtrType *) realloc((char *) SwigPtrTable,SwigPtrMax*sizeof(SwigPtrType));
  }
  for (i = 0; i < SwigPtrN; i++)
    if (strcmp(SwigPtrTable[i].name,origtype) == 0) {
      t = &SwigPtrTable[i];
      break;
    }
  if (!t) {
    t = &SwigPtrTable[SwigPtrN];
    t->name = origtype;
    t->len = strlen(t->name);
    t->cast = 0;
    t->next = 0;
    SwigPtrN++;
  }

  /* Check for existing entry */

  while (t->next) {
    if ((strcmp(t->name,newtype) == 0)) {
      if (cast) t->cast = cast;
      return;
    }
    t = t->next;
  }
  
  /* Now place entry (in sorted order) */

  t1 = (SwigPtrType *) malloc(sizeof(SwigPtrType));
  t1->name = newtype;
  t1->len = strlen(t1->name);
  t1->cast = cast;
  t1->next = 0;            
  t->next = t1;           
  SwigPtrSort = 0;
}

/* Make a pointer value string */

SWIGSTATIC 
void SWIG_MakePtr(char *_c, const void *_ptr, char *type) {
  static char _hex[16] =
  {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
   'a', 'b', 'c', 'd', 'e', 'f'};
  unsigned long _p, _s;
  char _result[20], *_r;    /* Note : a 64-bit hex number = 16 digits */
  _r = _result;
  _p = (unsigned long) _ptr;
  if (_p > 0) {
    while (_p > 0) {
      _s = _p & 0xf;
      *(_r++) = _hex[_s];
      _p = _p >> 4;
    }
    *_r = '_';
    while (_r >= _result)
      *(_c++) = *(_r--);
  } else {
    strcpy (_c, "NULL");
  }
  if (_ptr)
    strcpy (_c, type);
}

/* Define for backwards compatibility */

#define _swig_make_hex   SWIG_MakePtr 

/* Function for getting a pointer value */

SWIGSTATIC 
char *SWIG_GetPtr(char *_c, void **ptr, char *_t)
{
  unsigned long _p;
  char temp_type[256];
  char *name;
  int  i, len;
  SwigPtrType *sp,*tp;
  SwigCacheType *cache;
  int  start, end;
  _p = 0;

  /* Pointer values must start with leading underscore */
  if (*_c == '_') {
      _c++;
      /* Extract hex value from pointer */
      while (*_c) {
	  if ((*_c >= '0') && (*_c <= '9'))
	    _p = (_p << 4) + (*_c - '0');
	  else if ((*_c >= 'a') && (*_c <= 'f'))
	    _p = (_p << 4) + ((*_c - 'a') + 10);
	  else
	    break;
	  _c++;
      }

      if (_t) {
	if (strcmp(_t,_c)) { 
	  if (!SwigPtrSort) {
	    qsort((void *) SwigPtrTable, SwigPtrN, sizeof(SwigPtrType), swigsort); 
	    for (i = 0; i < 256; i++) {
	      SwigStart[i] = SwigPtrN;
	    }
	    for (i = SwigPtrN-1; i >= 0; i--) {
	      SwigStart[(int) (SwigPtrTable[i].name[1])] = i;
	    }
	    for (i = 255; i >= 1; i--) {
	      if (SwigStart[i-1] > SwigStart[i])
		SwigStart[i-1] = SwigStart[i];
	    }
	    SwigPtrSort = 1;
	    for (i = 0; i < SWIG_CACHESIZE; i++)  
	      SwigCache[i].stat = 0;
	  }
	  
	  /* First check cache for matches.  Uses last cache value as starting point */
	  cache = &SwigCache[SwigLastCache];
	  for (i = 0; i < SWIG_CACHESIZE; i++) {
	    if (cache->stat) {
	      if (strcmp(_t,cache->name) == 0) {
		if (strcmp(_c,cache->mapped) == 0) {
		  cache->stat++;
		  *ptr = (void *) _p;
		  if (cache->tp->cast) *ptr = (*(cache->tp->cast))(*ptr);
		  return (char *) 0;
		}
	      }
	    }
	    SwigLastCache = (SwigLastCache+1) & SWIG_CACHEMASK;
	    if (!SwigLastCache) cache = SwigCache;
	    else cache++;
	  }
	  /* We have a type mismatch.  Will have to look through our type
	     mapping table to figure out whether or not we can accept this datatype */

	  start = SwigStart[(int) _t[1]];
	  end = SwigStart[(int) _t[1]+1];
	  sp = &SwigPtrTable[start];
	  while (start < end) {
	    if (swigcmp(_t,sp) == 0) break;
	    sp++;
	    start++;
	  }
	  if (start >= end) sp = 0;
	  /* Try to find a match for this */
	  if (sp) {
	    while (swigcmp(_t,sp) == 0) {
	      name = sp->name;
	      len = sp->len;
	      tp = sp->next;
	      /* Try to find entry for our given datatype */
	      while(tp) {
		if (tp->len >= 255) {
		  return _c;
		}
		strncpy(temp_type,tp->name,255);
		strncat(temp_type,_t+len,255-tp->len);
		if (strcmp(_c,temp_type) == 0) {
		  
		  strcpy(SwigCache[SwigCacheIndex].mapped,_c);
		  strcpy(SwigCache[SwigCacheIndex].name,_t);
		  SwigCache[SwigCacheIndex].stat = 1;
		  SwigCache[SwigCacheIndex].tp = tp;
		  SwigCacheIndex = SwigCacheIndex & SWIG_CACHEMASK;
		  
		  /* Get pointer value */
		  *ptr = (void *) _p;
		  if (tp->cast) *ptr = (*(tp->cast))(*ptr);
		  return (char *) 0;
		}
		tp = tp->next;
	      }
	      sp++;
	      /* Hmmm. Didn't find it this time */
	    }
	  }
	  /* Didn't find any sort of match for this data.  
	     Get the pointer value and return the received type */
	  *ptr = (void *) _p;
	  return _c;
	} else {
	  /* Found a match on the first try.  Return pointer value */
	  *ptr = (void *) _p;
	  return (char *) 0;
	}
      } else {
	/* No type specified.  Good luck */
	*ptr = (void *) _p;
	return (char *) 0;
      }
  } else {
    if (strcmp (_c, "NULL") == 0) {
	*ptr = (void *) 0;
	return (char *) 0;
    }
    *ptr = (void *) 0;	
    return _c;
  }
}

/* Compatibility mode */

#define _swig_get_hex  SWIG_GetPtr

#else
#define SWIG_RegisterMapping(a,b,c)
#endif // NEED_SWIG_PTR

static PyObject* t_output_helper(PyObject* target, PyObject* o) {
    PyObject*   o2;
    PyObject*   o3;

    if (!target) {                   
        target = o;
    } else if (target == Py_None) {  
        Py_DECREF(Py_None);
        target = o;
    } else {                            
        if (!PyTuple_Check(target)) {   
            o2 = target;
            target = PyTuple_New(1);
            PyTuple_SetItem(target, 0, o2);
        }
        o3 = PyTuple_New(1);            
        PyTuple_SetItem(o3, 0, o);      

        o2 = target;
        target = PySequence_Concat(o2, o3); 
        Py_DECREF(o2);                      
        Py_DECREF(o3);
    }
    return target;
}

#include "PyWinTypes.h"
#ifdef NEED_PYWINOBJECTS_H
#include "PyWinObjects.h"
#endif
#include "tchar.h"
typedef BOOL  BOOLAPI;
typedef DWORD  DWORDAPI;

#define PyHANDLE HANDLE // Use a #define so we can undef it later if we need the true defn.
//typedef HANDLE PyHKEY;

#include "PythonCOM.h"

#define SWIG_PYTHONCOM
typedef long  HRESULT_KEEP;
typedef long  HRESULT_KEEP_INFO;

#define MAKE_OUTPUT_INTERFACE(source, target, iid) \
{ \
    PyObject *o; \
    o = PyCom_PyObjectFromIUnknown(*source, iid, FALSE /* bAddRef */); \
    if (target==NULL) \
      target = o; \
	else if (target == Py_None) { /* has been incref'd already!*/ \
		Py_DECREF(Py_None); \
		target = o; \
    } else { \
      if (!PyList_Check(target)) { \
        PyObject *o2 = target; \
        target = PyList_New(0); \
        PyList_Append(target,o2); \
        Py_XDECREF(o2); \
      } \
      PyList_Append(target,o); \
      Py_XDECREF(o); \
    } \
}

#include "pyadsiutil.h"

extern PyObject *OleSetADSIError(HRESULT hr, IUnknown *pUnk, REFIID iid);

#include "AdsErr.h"
#include "PyIDirectorySearch.h"

#define SWIG_THIS_IID IID_IDirectorySearch

PyIDirectorySearch::PyIDirectorySearch(IUnknown *pDisp) :
	PyIUnknown(pDisp)
{
	ob_type = &type;
}

PyIDirectorySearch::~PyIDirectorySearch()
{
}

IDirectorySearch *PyIDirectorySearch::GetI(PyObject *self)
{
	return (IDirectorySearch *)PyIUnknown::GetI(self);
}



// @pyswig int, [int, ...]|SetSearchPreference|
// @rdesc The result is the hresult of the call, and a list of integer status
// codes for each of the preferences set.
PyObject *PyIDirectorySearch::SetSearchPreference(PyObject *self, PyObject *args)
{
	HRESULT _result;
	PyObject *obPrefs;
	IDirectorySearch *_swig_self;
	if ((_swig_self=GetI(self))==NULL) return NULL;
	// @pyparm ADS_SEARCHPREF_INFO|prefs||
	if (!PyArg_ParseTuple(args, "O", &obPrefs))
		return NULL;
    ADS_SEARCHPREF_INFO *p;
    DWORD numPrefs, i;
    if (!PyADSIObject_AsADS_SEARCHPREF_INFOs(obPrefs, &p, &numPrefs))
        return NULL;
    PyObject *retStatus = PyList_New(numPrefs);
    if (!retStatus) {
        PyADSIObject_FreeADS_SEARCHPREF_INFOs(p, numPrefs);
        return NULL;
    }
	Py_BEGIN_ALLOW_THREADS
	_result = (HRESULT )_swig_self->SetSearchPreference(p, numPrefs);
	Py_END_ALLOW_THREADS
	PyObject *ret = NULL;
    for (i=0;i<numPrefs;i++)
        PyList_SET_ITEM(retStatus, i, PyInt_FromLong(p[i].dwStatus));
    PyADSIObject_FreeADS_SEARCHPREF_INFOs(p, numPrefs);
    return Py_BuildValue("iN", _result, retStatus);
}



// @pyswig int|ExecuteSearch|Executes a search and passes the results to the caller.
// Some providers, such as LDAP, will defer the actual execution until the caller invokes the
// <om PyIDirectorySearch.GetFirstRow> method or the <om PyIDirectorySearch.GetNextRow> method.
// @rdesc The result is an integer search handle.  <om PyIDirectorySearch.CloseSearchHandle>
// should be called to close the handle.
PyObject *PyIDirectorySearch::ExecuteSearch(PyObject *self, PyObject *args)
{
	PyObject *obNames, *obFilter;
	IDirectorySearch *_swig_self;
	if ((_swig_self=GetI(self))==NULL) return NULL;
	// @pyparm <o PyUnicode>|filter||
	// @pyparm [<o PyUnicode>, ...]|attrNames||
	if (!PyArg_ParseTuple(args, "OO", &obFilter, &obNames))
		return NULL;
    WCHAR *szFilter = NULL;
    if (!PyWinObject_AsWCHAR(obFilter, &szFilter, FALSE))
        return NULL;

	WCHAR **names = NULL;
	DWORD cnames = -1;
	if (obNames != Py_None)
		if (!PyADSI_MakeNames(obNames, &names, &cnames)) {
            PyWinObject_FreeWCHAR(szFilter);
			return NULL;
        }

	HRESULT _result;
    ADS_SEARCH_HANDLE handle;

	Py_BEGIN_ALLOW_THREADS
	_result = (HRESULT )_swig_self->ExecuteSearch(szFilter, names, cnames, &handle);
	Py_END_ALLOW_THREADS
	PyObject *ret = NULL;
	if (FAILED(_result))
		PyCom_BuildPyException(_result, _swig_self, IID_IDirectoryObject);
	else {
        ret = PyInt_FromLong((long)handle);
	} 
	PyADSI_FreeNames(names, cnames);
    PyWinObject_FreeWCHAR(szFilter);
	return ret;
}


// @pyswig (name, type, values)|GetColumn|
PyObject *PyIDirectorySearch::GetColumn(PyObject *self, PyObject *args)
{
	PyObject *obName;
    long handle;
	IDirectorySearch *_swig_self;
	if ((_swig_self=GetI(self))==NULL) return NULL;
	// @pyparm int|handle||Handle to a search
	// @pyparm <o PyUnicode>|name||The column name to fetch
	if (!PyArg_ParseTuple(args, "lO:GetColumn", &handle, &obName))
		return NULL;
    WCHAR *szName= NULL;
    if (!PyWinObject_AsWCHAR(obName, &szName, FALSE))
        return NULL;

    ADS_SEARCH_COLUMN col;
    memset(&col, 0, sizeof(col));
	HRESULT _result;
    PyObject *ret = NULL;

	Py_BEGIN_ALLOW_THREADS
	_result = (HRESULT )_swig_self->GetColumn((ADS_SEARCH_HANDLE)handle, szName, &col);
	Py_END_ALLOW_THREADS
	if (FAILED(_result))
		PyCom_BuildPyException(_result, _swig_self, IID_IDirectoryObject);
	else {
        PyObject *values = PyList_New(col.dwNumValues);
        if (values) {
            DWORD i;
            for (i=0;i<col.dwNumValues;i++) {
                PyList_SET_ITEM(values, i, PyADSIObject_FromADSVALUE(col.pADsValues[i]));
            }
            ret = Py_BuildValue("NiN", PyWinObject_FromWCHAR(col.pszAttrName), col.dwADsType, values);
        }
		_swig_self->FreeColumn(&col);
	}
    PyWinObject_FreeWCHAR(szName);
	return ret;
}

// @pyswig |GetNextColumnName|
// @rdesc Returns None when the underlying ADSI function return S_ADS_NOMORE_COLUMNS.
PyObject *PyIDirectorySearch::GetNextColumnName(PyObject *self, PyObject *args)
{
    long handle;
	IDirectorySearch *_swig_self;
	if ((_swig_self=GetI(self))==NULL) return NULL;
	if (!PyArg_ParseTuple(args, "l:GetNextColumnName", &handle))
		return NULL;
	HRESULT _result;
    PyObject *ret = NULL;
	WCHAR *szName = NULL;
	Py_BEGIN_ALLOW_THREADS
	_result = (HRESULT )_swig_self->GetNextColumnName((ADS_SEARCH_HANDLE)handle, &szName);
	Py_END_ALLOW_THREADS
	if (FAILED(_result))
		PyCom_BuildPyException(_result, _swig_self, IID_IDirectoryObject);
	else if (_result == S_ADS_NOMORE_COLUMNS) {
		ret = Py_None;
		Py_INCREF(ret);
	} else {
		ret = PyWinObject_FromWCHAR(szName);
		FreeADsMem(szName);
	}
	return ret;
}
PyObject *PyIDirectorySearch::GetNextRow(PyObject *self, PyObject *args) {
    PyObject * _resultobj;
    HRESULT_KEEP_INFO  _result;
    ADS_SEARCH_HANDLE  _arg0;

	IDirectorySearch *_swig_self;
	if ((_swig_self=GetI(self))==NULL) return NULL;
    if(!PyArg_ParseTuple(args,"l:GetNextRow",&_arg0)) 
        return NULL;
{
      Py_BEGIN_ALLOW_THREADS
          _result = (HRESULT_KEEP_INFO )_swig_self->GetNextRow(_arg0);

      Py_END_ALLOW_THREADS
      if (FAILED(_result))  {
           
           return OleSetADSIError(_result, _swig_self,  SWIG_THIS_IID);
      }
}{
	_resultobj = PyInt_FromLong(_result);
}
    return _resultobj;
}

PyObject *PyIDirectorySearch::GetFirstRow(PyObject *self, PyObject *args) {
    PyObject * _resultobj;
    HRESULT_KEEP_INFO  _result;
    ADS_SEARCH_HANDLE  _arg0;

	IDirectorySearch *_swig_self;
	if ((_swig_self=GetI(self))==NULL) return NULL;
    if(!PyArg_ParseTuple(args,"l:GetFirstRow",&_arg0)) 
        return NULL;
{
      Py_BEGIN_ALLOW_THREADS
          _result = (HRESULT_KEEP_INFO )_swig_self->GetFirstRow(_arg0);

      Py_END_ALLOW_THREADS
      if (FAILED(_result))  {
           
           return OleSetADSIError(_result, _swig_self,  SWIG_THIS_IID);
      }
}{
	_resultobj = PyInt_FromLong(_result);
}
    return _resultobj;
}

PyObject *PyIDirectorySearch::GetPreviousRow(PyObject *self, PyObject *args) {
    PyObject * _resultobj;
    HRESULT_KEEP_INFO  _result;
    ADS_SEARCH_HANDLE  _arg0;

	IDirectorySearch *_swig_self;
	if ((_swig_self=GetI(self))==NULL) return NULL;
    if(!PyArg_ParseTuple(args,"l:GetPreviousRow",&_arg0)) 
        return NULL;
{
      Py_BEGIN_ALLOW_THREADS
          _result = (HRESULT_KEEP_INFO )_swig_self->GetPreviousRow(_arg0);

      Py_END_ALLOW_THREADS
      if (FAILED(_result))  {
           
           return OleSetADSIError(_result, _swig_self,  SWIG_THIS_IID);
      }
}{
	_resultobj = PyInt_FromLong(_result);
}
    return _resultobj;
}

PyObject *PyIDirectorySearch::CloseSearchHandle(PyObject *self, PyObject *args) {
    PyObject * _resultobj;
    HRESULT  _result;
    ADS_SEARCH_HANDLE  _arg0;

	IDirectorySearch *_swig_self;
	if ((_swig_self=GetI(self))==NULL) return NULL;
    if(!PyArg_ParseTuple(args,"l:CloseSearchHandle",&_arg0)) 
        return NULL;
{
	Py_BEGIN_ALLOW_THREADS
	    _result = (HRESULT )_swig_self->CloseSearchHandle(_arg0);

	Py_END_ALLOW_THREADS
	if (FAILED(_result))  {
		

#ifndef SWIG_THIS_IID
#error This interface must have SWIG_THIS_IID defined!
#endif
		return OleSetADSIError(_result, _swig_self,  SWIG_THIS_IID);
	}
}{
	_resultobj = Py_None;
	Py_INCREF(Py_None);
}
    return _resultobj;
}

PyObject *PyIDirectorySearch::AbandonSearch(PyObject *self, PyObject *args) {
    PyObject * _resultobj;
    HRESULT  _result;
    ADS_SEARCH_HANDLE  _arg0;

	IDirectorySearch *_swig_self;
	if ((_swig_self=GetI(self))==NULL) return NULL;
    if(!PyArg_ParseTuple(args,"l:AbandonSearch",&_arg0)) 
        return NULL;
{
	Py_BEGIN_ALLOW_THREADS
	    _result = (HRESULT )_swig_self->AbandonSearch(_arg0);

	Py_END_ALLOW_THREADS
	if (FAILED(_result))  {
		

#ifndef SWIG_THIS_IID
#error This interface must have SWIG_THIS_IID defined!
#endif
		return OleSetADSIError(_result, _swig_self,  SWIG_THIS_IID);
	}
}{
	_resultobj = Py_None;
	Py_INCREF(Py_None);
}
    return _resultobj;
}

static PyMethodDef IDirectorySearchMethods[] = {
	 { "GetNextColumnName", PyIDirectorySearch::GetNextColumnName, 1 },
	 { "GetColumn", PyIDirectorySearch::GetColumn, 1 },
	 { "AbandonSearch", PyIDirectorySearch::AbandonSearch, 1 },
	 { "CloseSearchHandle", PyIDirectorySearch::CloseSearchHandle, 1 },
	 { "GetPreviousRow", PyIDirectorySearch::GetPreviousRow, 1 },
	 { "GetFirstRow", PyIDirectorySearch::GetFirstRow, 1 },
	 { "GetNextRow", PyIDirectorySearch::GetNextRow, 1 },
	 { "ExecuteSearch", PyIDirectorySearch::ExecuteSearch, 1 },
	 { "SetSearchPreference", PyIDirectorySearch::SetSearchPreference, 1 },
	 { NULL, NULL }
};
PyComTypeObject PyIDirectorySearch::type("PyIDirectorySearch",	&PyIUnknown::type,
	sizeof(PyIDirectorySearch),
	IDirectorySearchMethods,
	GET_PYCOM_CTOR(PyIDirectorySearch));
#ifndef SWIG_PYTHONCOM
/* This code only valid if non COM SWIG builds */
#ifndef PYCOM_EXPORT
	 PyDict_SetItemString(d,"UNICODE", PyInt_FromLong(
#ifdef UNICODE
	1
#else
	0
#endif
	));
#endif
  PyWinGlobals_Ensure();
  PyDict_SetItemString(d, "error", PyWinExc_ApiError);
#endif SWIG_PYTHONCOM
