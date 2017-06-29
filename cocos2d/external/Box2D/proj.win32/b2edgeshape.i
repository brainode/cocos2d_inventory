# 1 "f:\\projects\\cocos\\inventory\\cocos2d\\external\\box2d\\collision\\shapes\\b2edgeshape.cpp"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 337 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "f:\\projects\\cocos\\inventory\\cocos2d\\external\\box2d\\collision\\shapes\\b2edgeshape.cpp" 2
# 19 "f:\\projects\\cocos\\inventory\\cocos2d\\external\\box2d\\collision\\shapes\\b2edgeshape.cpp"
# 1 "../..\\Box2D/Collision/Shapes/b2EdgeShape.h" 1
# 22 "../..\\Box2D/Collision/Shapes/b2EdgeShape.h"
# 1 "../..\\Box2D/Collision/Shapes/b2Shape.h" 1
# 22 "../..\\Box2D/Collision/Shapes/b2Shape.h"
# 1 "../..\\Box2D/Common/b2BlockAllocator.h" 1
# 22 "../..\\Box2D/Common/b2BlockAllocator.h"
# 1 "../..\\Box2D/Common/b2Settings.h" 1
# 22 "../..\\Box2D/Common/b2Settings.h"
# 1 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stddef.h" 1
# 11 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stddef.h"
# 1 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt.h" 1
# 10 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt.h"
# 1 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vcruntime.h" 1 3
# 45 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vcruntime.h" 3
# 1 "C:\\Program Files (x86)\\Windows Kits\\8.1\\Include\\shared\\sal.h" 1 3
# 2381 "C:\\Program Files (x86)\\Windows Kits\\8.1\\Include\\shared\\sal.h" 3
extern "C" {
# 2987 "C:\\Program Files (x86)\\Windows Kits\\8.1\\Include\\shared\\sal.h" 3
}



# 1 "C:\\Program Files (x86)\\Windows Kits\\8.1\\Include\\shared\\ConcurrencySal.h" 1 3
# 22 "C:\\Program Files (x86)\\Windows Kits\\8.1\\Include\\shared\\ConcurrencySal.h" 3
extern "C" {
# 354 "C:\\Program Files (x86)\\Windows Kits\\8.1\\Include\\shared\\ConcurrencySal.h" 3
}
# 2990 "C:\\Program Files (x86)\\Windows Kits\\8.1\\Include\\shared\\sal.h" 2 3
# 45 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vcruntime.h" 2 3

# 1 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vadefs.h" 1 3
# 15 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vadefs.h" 3
#pragma pack(push, 8)


extern "C" {
# 30 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vadefs.h" 3
        typedef unsigned int uintptr_t;
# 39 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vadefs.h" 3
        typedef char* va_list;
# 118 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vadefs.h" 3
}



    extern "C++"
    {
        template <typename _Ty>
        struct __vcrt_va_list_is_reference
        {
            enum : bool { __the_value = false };
        };

        template <typename _Ty>
        struct __vcrt_va_list_is_reference<_Ty&>
        {
            enum : bool { __the_value = true };
        };

        template <typename _Ty>
        struct __vcrt_va_list_is_reference<_Ty&&>
        {
            enum : bool { __the_value = true };
        };

        template <typename _Ty>
        void __vcrt_va_start_verify_argument_type() throw()
        {
            static_assert(!__vcrt_va_list_is_reference<_Ty>::__the_value, "va_start argument must not have reference type and must not be parenthesized");
        }
    }
# 157 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vadefs.h" 3
#pragma pack(pop)
# 46 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vcruntime.h" 2 3
# 81 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vcruntime.h" 3
#pragma pack(push, 8)
# 81 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vcruntime.h" 3
 extern "C" {
# 198 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vcruntime.h" 3
    typedef unsigned int size_t;
    typedef int ptrdiff_t;
    typedef int intptr_t;



    typedef bool __vcrt_bool;
# 247 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vcruntime.h" 3
    extern "C++"
    {
        template <typename _CountofType, size_t _SizeOfArray>
        char (*__countof_helper( _CountofType (&_Array)[_SizeOfArray]))[_SizeOfArray];


    }
# 298 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vcruntime.h" 3
    void __cdecl __security_init_cookie(void);


        void __fastcall __security_check_cookie( uintptr_t _StackCookie);
        __declspec(noreturn) void __cdecl __report_gsfailure(void);






extern uintptr_t __security_cookie;







}
# 317 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vcruntime.h" 3
#pragma pack(pop)
# 10 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt.h" 2


#pragma pack(push, 8)
# 12 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt.h"
 extern "C" {
# 119 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt.h"
extern "C++"
{
    template<bool _Enable, typename _Ty>
    struct _CrtEnableIf;

    template<typename _Ty>
    struct _CrtEnableIf<true, _Ty>
    {
        typedef _Ty _Type;
    };
}



    typedef bool __crt_bool;
# 217 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt.h"
    __declspec(dllimport) void __cdecl _invalid_parameter(
                   wchar_t const*,
                   wchar_t const*,
                   wchar_t const*,
                   unsigned int,
                   uintptr_t
        );


__declspec(dllimport) void __cdecl _invalid_parameter_noinfo(void);
__declspec(dllimport) __declspec(noreturn) void __cdecl _invalid_parameter_noinfo_noreturn(void);

__declspec(noreturn)
__declspec(dllimport) void __cdecl _invoke_watson(
               wchar_t const*,
               wchar_t const*,
               wchar_t const*,
               unsigned int,
               uintptr_t);
# 448 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt.h"
typedef int errno_t;
typedef unsigned short wint_t;
typedef unsigned short wctype_t;
typedef long __time32_t;
typedef __int64 __time64_t;

typedef struct __crt_locale_data_public
{
      unsigned short const* _locale_pctype;
                        int _locale_mb_cur_max;
               unsigned int _locale_lc_codepage;
} __crt_locale_data_public;

typedef struct __crt_locale_pointers
{
    struct __crt_locale_data* locinfo;
    struct __crt_multibyte_data* mbcinfo;
} __crt_locale_pointers;

typedef __crt_locale_pointers* _locale_t;

typedef struct _Mbstatet
{
    unsigned long _Wchar;
    unsigned short _Byte, _State;
} _Mbstatet;

typedef _Mbstatet mbstate_t;
# 489 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt.h"
        typedef __time64_t time_t;
# 499 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt.h"
    typedef size_t rsize_t;
# 1901 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt.h"
}
# 1901 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt.h"
#pragma pack(pop)
# 11 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stddef.h" 2


#pragma pack(push, 8)
# 13 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stddef.h"
 extern "C" {




    namespace std
    {
        typedef decltype(__nullptr) nullptr_t;
    }

    using ::std::nullptr_t;





__declspec(dllimport) int* __cdecl _errno(void);


__declspec(dllimport) errno_t __cdecl _set_errno( int _Value);
__declspec(dllimport) errno_t __cdecl _get_errno( int* _Value);
# 46 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stddef.h"
__declspec(dllimport) extern unsigned long __cdecl __threadid(void);

__declspec(dllimport) extern uintptr_t __cdecl __threadhandle(void);



}
# 52 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stddef.h"
#pragma pack(pop)
# 23 "../..\\Box2D/Common/b2Settings.h" 2
# 1 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\assert.h" 1
# 14 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\assert.h"
#pragma pack(push, 8)
# 14 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\assert.h"
 extern "C" {
# 26 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\assert.h"
    __declspec(dllimport) void __cdecl _wassert(
               wchar_t const* _Message,
               wchar_t const* _File,
               unsigned _Line
        );
# 41 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\assert.h"
}
# 41 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\assert.h"
#pragma pack(pop)
# 24 "../..\\Box2D/Common/b2Settings.h" 2
# 1 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\float.h" 1
# 14 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\float.h"
#pragma pack(push, 8)
# 14 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\float.h"
 extern "C" {
# 226 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\float.h"
__declspec(dllimport) unsigned int __cdecl _clearfp(void);

#pragma warning(push)
#pragma warning(disable: 4141)

 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_controlfp_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
__declspec(dllimport) unsigned int __cdecl _controlfp(
         unsigned int _NewValue,
         unsigned int _Mask
    );

#pragma warning(pop)


__declspec(dllimport) void __cdecl _set_controlfp(
         unsigned int _NewValue,
         unsigned int _Mask
    );


__declspec(dllimport) errno_t __cdecl _controlfp_s(
              unsigned int* _CurrentState,
              unsigned int _NewValue,
              unsigned int _Mask
    );


__declspec(dllimport) unsigned int __cdecl _statusfp(void);


__declspec(dllimport) void __cdecl _fpreset(void);




    __declspec(dllimport) void __cdecl _statusfp2(
                  unsigned int* _X86Status,
                  unsigned int* _SSE2Status
        );







__declspec(dllimport) unsigned int __cdecl _control87(
         unsigned int _NewValue,
         unsigned int _Mask
    );



    __declspec(dllimport) int __cdecl __control87_2(
                  unsigned int _NewValue,
                  unsigned int _Mask,
                  unsigned int* _X86ControlWord,
                  unsigned int* _Sse2ControlWord
        );




__declspec(dllimport) int* __cdecl __fpecode(void);




__declspec(dllimport) int __cdecl __fpe_flt_rounds(void);
# 307 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\float.h"
               __declspec(dllimport) double __cdecl _copysign( double _Number, double _Sign);
               __declspec(dllimport) double __cdecl _chgsign( double _X);
               __declspec(dllimport) double __cdecl _scalb( double _X, long _Y);
               __declspec(dllimport) double __cdecl _logb( double _X);
               __declspec(dllimport) double __cdecl _nextafter( double _X, double _Y);
               __declspec(dllimport) int __cdecl _finite( double _X);
               __declspec(dllimport) int __cdecl _isnan( double _X);
               __declspec(dllimport) int __cdecl _fpclass( double _X);
# 334 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\float.h"
    __declspec(dllimport) void __cdecl fpreset(void);
# 401 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\float.h"
}
# 401 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\float.h"
#pragma pack(pop)
# 25 "../..\\Box2D/Common/b2Settings.h" 2




typedef signed char int8;
typedef signed short int16;
typedef signed int int32;
typedef unsigned char uint8;
typedef unsigned short uint16;
typedef unsigned int uint32;
typedef float float32;
typedef double float64;
# 131 "../..\\Box2D/Common/b2Settings.h"
void* b2Alloc(int32 size);


void b2Free(void* mem);


void b2Log(const char* string, ...);



struct b2Version
{
 int32 major;
 int32 minor;
 int32 revision;
};


extern b2Version b2_version;
# 23 "../..\\Box2D/Common/b2BlockAllocator.h" 2

const int32 b2_chunkSize = 16 * 1024;
const int32 b2_maxBlockSize = 640;
const int32 b2_blockSizes = 14;
const int32 b2_chunkArrayIncrement = 128;

struct b2Block;
struct b2Chunk;




class b2BlockAllocator
{
public:
 b2BlockAllocator();
 ~b2BlockAllocator();


 void* Allocate(int32 size);


 void Free(void* p, int32 size);

 void Clear();

private:

 b2Chunk* m_chunks;
 int32 m_chunkCount;
 int32 m_chunkSpace;

 b2Block* m_freeLists[b2_blockSizes];

 static int32 s_blockSizes[b2_blockSizes];
 static uint8 s_blockSizeLookup[b2_maxBlockSize + 1];
 static bool s_blockSizeLookupInitialized;
};
# 23 "../..\\Box2D/Collision/Shapes/b2Shape.h" 2
# 1 "../..\\Box2D/Common/b2Math.h" 1
# 23 "../..\\Box2D/Common/b2Math.h"
# 1 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\math.h" 1
# 13 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\math.h"
#pragma pack(push, 8)
# 13 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\math.h"
 extern "C" {



#pragma warning(push)
#pragma warning(disable: 4738)
#pragma warning(disable: 4820)






 struct _exception
    {
        int type;
        char* name;
        double arg1;
        double arg2;
        double retval;
    };






        struct _complex
        {
            double x, y;
        };
# 52 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\math.h"
typedef float float_t;
typedef double double_t;
# 68 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\math.h"
        extern double const _HUGE;
# 159 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\math.h"
void __cdecl _fperrraise( int _Except);

               __declspec(dllimport) short __cdecl _dclass( double _X);
               __declspec(dllimport) short __cdecl _ldclass( long double _X);
               __declspec(dllimport) short __cdecl _fdclass( float _X);

               __declspec(dllimport) int __cdecl _dsign( double _X);
               __declspec(dllimport) int __cdecl _ldsign( long double _X);
               __declspec(dllimport) int __cdecl _fdsign( float _X);

               __declspec(dllimport) int __cdecl _dpcomp( double _X, double _Y);
               __declspec(dllimport) int __cdecl _ldpcomp( long double _X, long double _Y);
               __declspec(dllimport) int __cdecl _fdpcomp( float _X, float _Y);

               __declspec(dllimport) short __cdecl _dtest( double* _Px);
               __declspec(dllimport) short __cdecl _ldtest( long double* _Px);
               __declspec(dllimport) short __cdecl _fdtest( float* _Px);

__declspec(dllimport) short __cdecl _d_int( double* _Px, short _Xexp);
__declspec(dllimport) short __cdecl _ld_int( long double* _Px, short _Xexp);
__declspec(dllimport) short __cdecl _fd_int( float* _Px, short _Xexp);

__declspec(dllimport) short __cdecl _dscale( double* _Px, long _Lexp);
__declspec(dllimport) short __cdecl _ldscale( long double* _Px, long _Lexp);
__declspec(dllimport) short __cdecl _fdscale( float* _Px, long _Lexp);

__declspec(dllimport) short __cdecl _dunscale( short* _Pex, double* _Px);
__declspec(dllimport) short __cdecl _ldunscale( short* _Pex, long double* _Px);
__declspec(dllimport) short __cdecl _fdunscale( short* _Pex, float* _Px);

               __declspec(dllimport) short __cdecl _dexp( double* _Px, double _Y, long _Eoff);
               __declspec(dllimport) short __cdecl _ldexp( long double* _Px, long double _Y, long _Eoff);
               __declspec(dllimport) short __cdecl _fdexp( float* _Px, float _Y, long _Eoff);

               __declspec(dllimport) short __cdecl _dnorm( unsigned short* _Ps);
               __declspec(dllimport) short __cdecl _fdnorm( unsigned short* _Ps);

               __declspec(dllimport) double __cdecl _dpoly( double _X, double const* _Tab, int _N);
               __declspec(dllimport) long double __cdecl _ldpoly( long double _X, long double const* _Tab, int _N);
               __declspec(dllimport) float __cdecl _fdpoly( float _X, float const* _Tab, int _N);

               __declspec(dllimport) double __cdecl _dlog( double _X, int _Baseflag);
               __declspec(dllimport) long double __cdecl _ldlog( long double _X, int _Baseflag);
               __declspec(dllimport) float __cdecl _fdlog( float _X, int _Baseflag);

               __declspec(dllimport) double __cdecl _dsin( double _X, unsigned int _Qoff);
               __declspec(dllimport) long double __cdecl _ldsin( long double _X, unsigned int _Qoff);
               __declspec(dllimport) float __cdecl _fdsin( float _X, unsigned int _Qoff);


typedef union
{
    unsigned short _Sh[4];
    double _Val;
} _double_val;


typedef union
{
    unsigned short _Sh[2];
    float _Val;
} _float_val;


typedef union
{
    unsigned short _Sh[4];
    long double _Val;
} _ldouble_val;

typedef union
{
    unsigned short _Word[4];
    float _Float;
    double _Double;
    long double _Long_double;
} _float_const;

extern const _float_const _Denorm_C, _Inf_C, _Nan_C, _Snan_C, _Hugeval_C;
extern const _float_const _FDenorm_C, _FInf_C, _FNan_C, _FSnan_C;
extern const _float_const _LDenorm_C, _LInf_C, _LNan_C, _LSnan_C;

extern const _float_const _Eps_C, _Rteps_C;
extern const _float_const _FEps_C, _FRteps_C;
extern const _float_const _LEps_C, _LRteps_C;

extern const double _Zero_C, _Xbig_C;
extern const float _FZero_C, _FXbig_C;
extern const long double _LZero_C, _LXbig_C;
# 276 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\math.h"
extern "C++"
{
                   inline int fpclassify( float _X) throw()
    {
        return _fdtest(&_X);
    }

                   inline int fpclassify( double _X) throw()
    {
        return _dtest(&_X);
    }

                   inline int fpclassify( long double _X) throw()
    {
        return _ldtest(&_X);
    }

                   inline bool signbit( float _X) throw()
    {
        return _fdsign(_X) != 0;
    }

                   inline bool signbit( double _X) throw()
    {
        return _dsign(_X) != 0;
    }

                   inline bool signbit( long double _X) throw()
    {
        return _ldsign(_X) != 0;
    }

                   inline int _fpcomp( float _X, float _Y) throw()
    {
        return _fdpcomp(_X, _Y);
    }

                   inline int _fpcomp( double _X, double _Y) throw()
    {
        return _dpcomp(_X, _Y);
    }

                   inline int _fpcomp( long double _X, long double _Y) throw()
    {
        return _ldpcomp(_X, _Y);
    }

    template <class _Trc, class _Tre> struct _Combined_type
    {
        typedef float _Type;
    };

    template <> struct _Combined_type<float, double>
    {
        typedef double _Type;
    };

    template <> struct _Combined_type<float, long double>
    {
        typedef long double _Type;
    };

    template <class _Ty, class _T2> struct _Real_widened
    {
        typedef long double _Type;
    };

    template <> struct _Real_widened<float, float>
    {
        typedef float _Type;
    };

    template <> struct _Real_widened<float, double>
    {
        typedef double _Type;
    };

    template <> struct _Real_widened<double, float>
    {
        typedef double _Type;
    };

    template <> struct _Real_widened<double, double>
    {
        typedef double _Type;
    };

    template <class _Ty> struct _Real_type
    {
        typedef double _Type;
    };

    template <> struct _Real_type<float>
    {
        typedef float _Type;
    };

    template <> struct _Real_type<long double>
    {
        typedef long double _Type;
    };

    template <class _T1, class _T2>
                   inline int _fpcomp( _T1 _X, _T2 _Y) throw()
    {
        typedef typename _Combined_type<float,
            typename _Real_widened<
            typename _Real_type<_T1>::_Type,
            typename _Real_type<_T2>::_Type>::_Type>::_Type _Tw;
        return _fpcomp((_Tw)_X, (_Tw)_Y);
    }

    template <class _Ty>
                   inline bool isfinite( _Ty _X) throw()
    {
        return fpclassify(_X) <= 0;
    }

    template <class _Ty>
                   inline bool isinf( _Ty _X) throw()
    {
        return fpclassify(_X) == 1;
    }

    template <class _Ty>
                   inline bool isnan( _Ty _X) throw()
    {
        return fpclassify(_X) == 2;
    }

    template <class _Ty>
                   inline bool isnormal( _Ty _X) throw()
    {
        return fpclassify(_X) == (-1);
    }

    template <class _Ty1, class _Ty2>
                   inline bool isgreater( _Ty1 _X, _Ty2 _Y) throw()
    {
        return (_fpcomp(_X, _Y) & 4) != 0;
    }

    template <class _Ty1, class _Ty2>
                   inline bool isgreaterequal( _Ty1 _X, _Ty2 _Y) throw()
    {
        return (_fpcomp(_X, _Y) & (2 | 4)) != 0;
    }

    template <class _Ty1, class _Ty2>
                   inline bool isless( _Ty1 _X, _Ty2 _Y) throw()
    {
        return (_fpcomp(_X, _Y) & 1) != 0;
    }

    template <class _Ty1, class _Ty2>
                   inline bool islessequal( _Ty1 _X, _Ty2 _Y) throw()
    {
        return (_fpcomp(_X, _Y) & (1 | 2)) != 0;
    }

    template <class _Ty1, class _Ty2>
                   inline bool islessgreater( _Ty1 _X, _Ty2 _Y) throw()
    {
        return (_fpcomp(_X, _Y) & (1 | 4)) != 0;
    }

    template <class _Ty1, class _Ty2>
                   inline bool isunordered( _Ty1 _X, _Ty2 _Y) throw()
    {
        return _fpcomp(_X, _Y) == 0;
    }
}






               int __cdecl abs( int _X);
               long __cdecl labs( long _X);
               long long __cdecl llabs( long long _X);

               double __cdecl acos( double _X);
               double __cdecl asin( double _X);
               double __cdecl atan( double _X);
               double __cdecl atan2( double _Y, double _X);

               double __cdecl cos( double _X);
               double __cdecl cosh( double _X);
               double __cdecl exp( double _X);
                                  double __cdecl fabs( double _X);
               double __cdecl fmod( double _X, double _Y);
               double __cdecl log( double _X);
               double __cdecl log10( double _X);
               double __cdecl pow( double _X, double _Y);
               double __cdecl sin( double _X);
               double __cdecl sinh( double _X);
                                  double __cdecl sqrt( double _X);
               double __cdecl tan( double _X);
               double __cdecl tanh( double _X);

               __declspec(dllimport) double __cdecl acosh( double _X);
               __declspec(dllimport) double __cdecl asinh( double _X);
               __declspec(dllimport) double __cdecl atanh( double _X);
               __declspec(dllimport) double __cdecl atof( char const* _String);
               __declspec(dllimport) double __cdecl _atof_l( char const* _String, _locale_t _Locale);
               __declspec(dllimport) double __cdecl _cabs( struct _complex _Complex_value);
               __declspec(dllimport) double __cdecl cbrt( double _X);
               __declspec(dllimport) double __cdecl ceil( double _X);
               __declspec(dllimport) double __cdecl _chgsign( double _X);
               __declspec(dllimport) double __cdecl copysign( double _Number, double _Sign);
               __declspec(dllimport) double __cdecl _copysign( double _Number, double _Sign);
               __declspec(dllimport) double __cdecl erf( double _X);
               __declspec(dllimport) double __cdecl erfc( double _X);
               __declspec(dllimport) double __cdecl exp2( double _X);
               __declspec(dllimport) double __cdecl expm1( double _X);
               __declspec(dllimport) double __cdecl fdim( double _X, double _Y);
               __declspec(dllimport) double __cdecl floor( double _X);
               __declspec(dllimport) double __cdecl fma( double _X, double _Y, double _Z);
               __declspec(dllimport) double __cdecl fmax( double _X, double _Y);
               __declspec(dllimport) double __cdecl fmin( double _X, double _Y);
               __declspec(dllimport) double __cdecl frexp( double _X, int* _Y);
               __declspec(dllimport) double __cdecl hypot( double _X, double _Y);
               __declspec(dllimport) double __cdecl _hypot( double _X, double _Y);
               __declspec(dllimport) int __cdecl ilogb( double _X);
               __declspec(dllimport) double __cdecl ldexp( double _X, int _Y);
               __declspec(dllimport) double __cdecl lgamma( double _X);
               __declspec(dllimport) long long __cdecl llrint( double _X);
               __declspec(dllimport) long long __cdecl llround( double _X);
               __declspec(dllimport) double __cdecl log1p( double _X);
               __declspec(dllimport) double __cdecl log2( double _X);
               __declspec(dllimport) double __cdecl logb( double _X);
               __declspec(dllimport) long __cdecl lrint( double _X);
               __declspec(dllimport) long __cdecl lround( double _X);

int __cdecl _matherr( struct _exception* _Except);

               __declspec(dllimport) double __cdecl modf( double _X, double* _Y);
               __declspec(dllimport) double __cdecl nan( char const*);
               __declspec(dllimport) double __cdecl nearbyint( double _X);
               __declspec(dllimport) double __cdecl nextafter( double _X, double _Y);
               __declspec(dllimport) double __cdecl nexttoward( double _X, long double _Y);
               __declspec(dllimport) double __cdecl remainder( double _X, double _Y);
               __declspec(dllimport) double __cdecl remquo( double _X, double _Y, int* _Z);
               __declspec(dllimport) double __cdecl rint( double _X);
               __declspec(dllimport) double __cdecl round( double _X);
               __declspec(dllimport) double __cdecl scalbln( double _X, long _Y);
               __declspec(dllimport) double __cdecl scalbn( double _X, int _Y);
               __declspec(dllimport) double __cdecl tgamma( double _X);
               __declspec(dllimport) double __cdecl trunc( double _X);
               __declspec(dllimport) double __cdecl _j0( double _X );
               __declspec(dllimport) double __cdecl _j1( double _X );
               __declspec(dllimport) double __cdecl _jn(int _X, double _Y);
               __declspec(dllimport) double __cdecl _y0( double _X);
               __declspec(dllimport) double __cdecl _y1( double _X);
               __declspec(dllimport) double __cdecl _yn( int _X, double _Y);

               __declspec(dllimport) float __cdecl acoshf( float _X);
               __declspec(dllimport) float __cdecl asinhf( float _X);
               __declspec(dllimport) float __cdecl atanhf( float _X);
               __declspec(dllimport) float __cdecl cbrtf( float _X);
               __declspec(dllimport) float __cdecl _chgsignf( float _X);
               __declspec(dllimport) float __cdecl copysignf( float _Number, float _Sign);
               __declspec(dllimport) float __cdecl _copysignf( float _Number, float _Sign);
               __declspec(dllimport) float __cdecl erff( float _X);
               __declspec(dllimport) float __cdecl erfcf( float _X);
               __declspec(dllimport) float __cdecl expm1f( float _X);
               __declspec(dllimport) float __cdecl exp2f( float _X);
               __declspec(dllimport) float __cdecl fdimf( float _X, float _Y);
               __declspec(dllimport) float __cdecl fmaf( float _X, float _Y, float _Z);
               __declspec(dllimport) float __cdecl fmaxf( float _X, float _Y);
               __declspec(dllimport) float __cdecl fminf( float _X, float _Y);
               __declspec(dllimport) float __cdecl _hypotf( float _X, float _Y);
               __declspec(dllimport) int __cdecl ilogbf( float _X);
               __declspec(dllimport) float __cdecl lgammaf( float _X);
               __declspec(dllimport) long long __cdecl llrintf( float _X);
               __declspec(dllimport) long long __cdecl llroundf( float _X);
               __declspec(dllimport) float __cdecl log1pf( float _X);
               __declspec(dllimport) float __cdecl log2f( float _X);
               __declspec(dllimport) float __cdecl logbf( float _X);
               __declspec(dllimport) long __cdecl lrintf( float _X);
               __declspec(dllimport) long __cdecl lroundf( float _X);
               __declspec(dllimport) float __cdecl nanf( char const*);
               __declspec(dllimport) float __cdecl nearbyintf( float _X);
               __declspec(dllimport) float __cdecl nextafterf( float _X, float _Y);
               __declspec(dllimport) float __cdecl nexttowardf( float _X, long double _Y);
               __declspec(dllimport) float __cdecl remainderf( float _X, float _Y);
               __declspec(dllimport) float __cdecl remquof( float _X, float _Y, int* _Z);
               __declspec(dllimport) float __cdecl rintf( float _X);
               __declspec(dllimport) float __cdecl roundf( float _X);
               __declspec(dllimport) float __cdecl scalblnf( float _X, long _Y);
               __declspec(dllimport) float __cdecl scalbnf( float _X, int _Y);
               __declspec(dllimport) float __cdecl tgammaf( float _X);
               __declspec(dllimport) float __cdecl truncf( float _X);



                   __declspec(dllimport) int __cdecl _set_SSE2_enable( int _Flag);
# 608 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\math.h"
                   __inline float __cdecl acosf( float _X)
    {
        return (float)acos(_X);
    }

                   __inline float __cdecl asinf( float _X)
    {
        return (float)asin(_X);
    }

                   __inline float __cdecl atan2f( float _Y, float _X)
    {
        return (float)atan2(_Y, _X);
    }

                   __inline float __cdecl atanf( float _X)
    {
        return (float)atan(_X);
    }

                   __inline float __cdecl ceilf( float _X)
    {
        return (float)ceil(_X);
    }

                   __inline float __cdecl cosf( float _X)
    {
        return (float)cos(_X);
    }

                   __inline float __cdecl coshf( float _X)
    {
        return (float)cosh(_X);
    }

                   __inline float __cdecl expf( float _X)
    {
        return (float)exp(_X);
    }
# 656 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\math.h"
                   __inline float __cdecl fabsf( float _X)
    {
        return (float)fabs(_X);
    }
# 670 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\math.h"
                   __inline float __cdecl floorf( float _X)
    {
        return (float)floor(_X);
    }

                   __inline float __cdecl fmodf( float _X, float _Y)
    {
        return (float)fmod(_X, _Y);
    }



               __inline float __cdecl frexpf( float _X, int *_Y)
{
    return (float)frexp(_X, _Y);
}

               __inline float __cdecl hypotf( float _X, float _Y)
{
    return _hypotf(_X, _Y);
}

               __inline float __cdecl ldexpf( float _X, int _Y)
{
    return (float)ldexp(_X, _Y);
}
# 711 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\math.h"
                   __inline float __cdecl log10f( float _X)
    {
        return (float)log10(_X);
    }

                   __inline float __cdecl logf( float _X)
    {
        return (float)log(_X);
    }

                   __inline float __cdecl modff( float _X, float* _Y)
    {
        double _F, _I;
        _F = modf(_X, &_I);
        *_Y = (float)_I;
        return (float)_F;
    }

                   __inline float __cdecl powf( float _X, float _Y)
    {
        return (float)pow(_X, _Y);
    }

                   __inline float __cdecl sinf( float _X)
    {
        return (float)sin(_X);
    }

                   __inline float __cdecl sinhf( float _X)
    {
        return (float)sinh(_X);
    }

                   __inline float __cdecl sqrtf( float _X)
    {
        return (float)sqrt(_X);
    }

                   __inline float __cdecl tanf( float _X)
    {
        return (float)tan(_X);
    }

                   __inline float __cdecl tanhf( float _X)
    {
        return (float)tanh(_X);
    }



               __declspec(dllimport) long double __cdecl acoshl( long double _X);

               __inline long double __cdecl acosl( long double _X)
{
    return acos((double)_X);
}

               __declspec(dllimport) long double __cdecl asinhl( long double _X);

               __inline long double __cdecl asinl( long double _X)
{
    return asin((double)_X);
}

               __inline long double __cdecl atan2l( long double _Y, long double _X)
{
    return atan2((double)_Y, (double)_X);
}

               __declspec(dllimport) long double __cdecl atanhl( long double _X);

               __inline long double __cdecl atanl( long double _X)
{
    return atan((double)_X);
}

               __declspec(dllimport) long double __cdecl cbrtl( long double _X);

               __inline long double __cdecl ceill( long double _X)
{
    return ceil((double)_X);
}

               __inline long double __cdecl _chgsignl( long double _X)
{
    return _chgsign((double)_X);
}

               __declspec(dllimport) long double __cdecl copysignl( long double _Number, long double _Sign);

               __inline long double __cdecl _copysignl( long double _Number, long double _Sign)
{
    return _copysign((double)_Number, (double)_Sign);
}

               __inline long double __cdecl coshl( long double _X)
{
    return cosh((double)_X);
}

               __inline long double __cdecl cosl( long double _X)
{
    return cos((double)_X);
}

               __declspec(dllimport) long double __cdecl erfl( long double _X);
               __declspec(dllimport) long double __cdecl erfcl( long double _X);

               __inline long double __cdecl expl( long double _X)
{
    return exp((double)_X);
}

               __declspec(dllimport) long double __cdecl exp2l( long double _X);
               __declspec(dllimport) long double __cdecl expm1l( long double _X);

               __inline long double __cdecl fabsl( long double _X)
{
    return fabs((double)_X);
}

               __declspec(dllimport) long double __cdecl fdiml( long double _X, long double _Y);

               __inline long double __cdecl floorl( long double _X)
{
    return floor((double)_X);
}

               __declspec(dllimport) long double __cdecl fmal( long double _X, long double _Y, long double _Z);
               __declspec(dllimport) long double __cdecl fmaxl( long double _X, long double _Y);
               __declspec(dllimport) long double __cdecl fminl( long double _X, long double _Y);

               __inline long double __cdecl fmodl( long double _X, long double _Y)
{
    return fmod((double)_X, (double)_Y);
}

               __inline long double __cdecl frexpl( long double _X, int *_Y)
{
    return frexp((double)_X, _Y);
}

               __declspec(dllimport) int __cdecl ilogbl( long double _X);

               __inline long double __cdecl _hypotl( long double _X, long double _Y)
{
    return _hypot((double)_X, (double)_Y);
}

               __inline long double __cdecl hypotl( long double _X, long double _Y)
{
    return _hypot((double)_X, (double)_Y);
}

               __inline long double __cdecl ldexpl( long double _X, int _Y)
{
    return ldexp((double)_X, _Y);
}

               __declspec(dllimport) long double __cdecl lgammal( long double _X);
               __declspec(dllimport) long long __cdecl llrintl( long double _X);
               __declspec(dllimport) long long __cdecl llroundl( long double _X);

               __inline long double __cdecl logl( long double _X)
{
    return log((double)_X);
}

               __inline long double __cdecl log10l( long double _X)
{
    return log10((double)_X);
}

               __declspec(dllimport) long double __cdecl log1pl( long double _X);
               __declspec(dllimport) long double __cdecl log2l( long double _X);
               __declspec(dllimport) long double __cdecl logbl( long double _X);
               __declspec(dllimport) long __cdecl lrintl( long double _X);
               __declspec(dllimport) long __cdecl lroundl( long double _X);

               __inline long double __cdecl modfl( long double _X, long double* _Y)
{
    double _F, _I;
    _F = modf((double)_X, &_I);
    *_Y = _I;
    return _F;
}

               __declspec(dllimport) long double __cdecl nanl( char const*);
               __declspec(dllimport) long double __cdecl nearbyintl( long double _X);
               __declspec(dllimport) long double __cdecl nextafterl( long double _X, long double _Y);
               __declspec(dllimport) long double __cdecl nexttowardl( long double _X, long double _Y);

               __inline long double __cdecl powl( long double _X, long double _Y)
{
    return pow((double)_X, (double)_Y);
}

               __declspec(dllimport) long double __cdecl remainderl( long double _X, long double _Y);
               __declspec(dllimport) long double __cdecl remquol( long double _X, long double _Y, int* _Z);
               __declspec(dllimport) long double __cdecl rintl( long double _X);
               __declspec(dllimport) long double __cdecl roundl( long double _X);
               __declspec(dllimport) long double __cdecl scalblnl( long double _X, long _Y);
               __declspec(dllimport) long double __cdecl scalbnl( long double _X, int _Y);

               __inline long double __cdecl sinhl( long double _X)
{
    return sinh((double)_X);
}

               __inline long double __cdecl sinl( long double _X)
{
    return sin((double)_X);
}

               __inline long double __cdecl sqrtl( long double _X)
{
    return sqrt((double)_X);
}

               __inline long double __cdecl tanhl( long double _X)
{
    return tanh((double)_X);
}

               __inline long double __cdecl tanl( long double _X)
{
    return tan((double)_X);
}

               __declspec(dllimport) long double __cdecl tgammal( long double _X);
               __declspec(dllimport) long double __cdecl truncl( long double _X);
# 963 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\math.h"
            extern double HUGE;




        __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_j0" ". See online help for details.")) __declspec(dllimport) double __cdecl j0( double _X);
        __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_j1" ". See online help for details.")) __declspec(dllimport) double __cdecl j1( double _X);
        __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_jn" ". See online help for details.")) __declspec(dllimport) double __cdecl jn( int _X, double _Y);
        __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_y0" ". See online help for details.")) __declspec(dllimport) double __cdecl y0( double _X);
        __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_y1" ". See online help for details.")) __declspec(dllimport) double __cdecl y1( double _X);
        __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_yn" ". See online help for details.")) __declspec(dllimport) double __cdecl yn( int _X, double _Y);





#pragma warning(pop)



}
# 983 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\math.h"
#pragma pack(pop)
# 24 "../..\\Box2D/Common/b2Math.h" 2


inline bool b2IsValid(float32 x)
{
 int32 ix = *reinterpret_cast<int32*>(&x);
 return (ix & 0x7f800000) != 0x7f800000;
}


inline float32 b2InvSqrt(float32 x)
{
 union
 {
  float32 x;
  int32 i;
 } convert;

 convert.x = x;
 float32 xhalf = 0.5f * x;
 convert.i = 0x5f3759df - (convert.i >> 1);
 x = convert.x;
 x = x * (1.5f - xhalf * x * x);
 return x;
}





struct b2Vec2
{

 b2Vec2() {}


 b2Vec2(float32 x, float32 y) : x(x), y(y) {}


 void SetZero() { x = 0.0f; y = 0.0f; }


 void Set(float32 x_, float32 y_) { x = x_; y = y_; }


 b2Vec2 operator -() const { b2Vec2 v; v.Set(-x, -y); return v; }


 float32 operator () (int32 i) const
 {
  return (&x)[i];
 }


 float32& operator () (int32 i)
 {
  return (&x)[i];
 }


 void operator += (const b2Vec2& v)
 {
  x += v.x; y += v.y;
 }


 void operator -= (const b2Vec2& v)
 {
  x -= v.x; y -= v.y;
 }


 void operator *= (float32 a)
 {
  x *= a; y *= a;
 }


 float32 Length() const
 {
  return sqrtf(x * x + y * y);
 }



 float32 LengthSquared() const
 {
  return x * x + y * y;
 }


 float32 Normalize()
 {
  float32 length = Length();
  if (length < 1.192092896e-07F)
  {
   return 0.0f;
  }
  float32 invLength = 1.0f / length;
  x *= invLength;
  y *= invLength;

  return length;
 }


 bool IsValid() const
 {
  return b2IsValid(x) && b2IsValid(y);
 }


 b2Vec2 Skew() const
 {
  return b2Vec2(-y, x);
 }

 float32 x, y;
};


struct b2Vec3
{

 b2Vec3() {}


 b2Vec3(float32 x, float32 y, float32 z) : x(x), y(y), z(z) {}


 void SetZero() { x = 0.0f; y = 0.0f; z = 0.0f; }


 void Set(float32 x_, float32 y_, float32 z_) { x = x_; y = y_; z = z_; }


 b2Vec3 operator -() const { b2Vec3 v; v.Set(-x, -y, -z); return v; }


 void operator += (const b2Vec3& v)
 {
  x += v.x; y += v.y; z += v.z;
 }


 void operator -= (const b2Vec3& v)
 {
  x -= v.x; y -= v.y; z -= v.z;
 }


 void operator *= (float32 s)
 {
  x *= s; y *= s; z *= s;
 }

 float32 x, y, z;
};


struct b2Mat22
{

 b2Mat22() {}


 b2Mat22(const b2Vec2& c1, const b2Vec2& c2)
 {
  ex = c1;
  ey = c2;
 }


 b2Mat22(float32 a11, float32 a12, float32 a21, float32 a22)
 {
  ex.x = a11; ex.y = a21;
  ey.x = a12; ey.y = a22;
 }


 void Set(const b2Vec2& c1, const b2Vec2& c2)
 {
  ex = c1;
  ey = c2;
 }


 void SetIdentity()
 {
  ex.x = 1.0f; ey.x = 0.0f;
  ex.y = 0.0f; ey.y = 1.0f;
 }


 void SetZero()
 {
  ex.x = 0.0f; ey.x = 0.0f;
  ex.y = 0.0f; ey.y = 0.0f;
 }

 b2Mat22 GetInverse() const
 {
  float32 a = ex.x, b = ey.x, c = ex.y, d = ey.y;
  b2Mat22 B;
  float32 det = a * d - b * c;
  if (det != 0.0f)
  {
   det = 1.0f / det;
  }
  B.ex.x = det * d; B.ey.x = -det * b;
  B.ex.y = -det * c; B.ey.y = det * a;
  return B;
 }



 b2Vec2 Solve(const b2Vec2& b) const
 {
  float32 a11 = ex.x, a12 = ey.x, a21 = ex.y, a22 = ey.y;
  float32 det = a11 * a22 - a12 * a21;
  if (det != 0.0f)
  {
   det = 1.0f / det;
  }
  b2Vec2 x;
  x.x = det * (a22 * b.x - a12 * b.y);
  x.y = det * (a11 * b.y - a21 * b.x);
  return x;
 }

 b2Vec2 ex, ey;
};


struct b2Mat33
{

 b2Mat33() {}


 b2Mat33(const b2Vec3& c1, const b2Vec3& c2, const b2Vec3& c3)
 {
  ex = c1;
  ey = c2;
  ez = c3;
 }


 void SetZero()
 {
  ex.SetZero();
  ey.SetZero();
  ez.SetZero();
 }



 b2Vec3 Solve33(const b2Vec3& b) const;




 b2Vec2 Solve22(const b2Vec2& b) const;



 void GetInverse22(b2Mat33* M) const;



 void GetSymInverse33(b2Mat33* M) const;

 b2Vec3 ex, ey, ez;
};


struct b2Rot
{
 b2Rot() {}


 explicit b2Rot(float32 angle)
 {

  s = sinf(angle);
  c = cosf(angle);
 }


 void Set(float32 angle)
 {

  s = sinf(angle);
  c = cosf(angle);
 }


 void SetIdentity()
 {
  s = 0.0f;
  c = 1.0f;
 }


 float32 GetAngle() const
 {
  return atan2f(s, c);
 }


 b2Vec2 GetXAxis() const
 {
  return b2Vec2(c, s);
 }


 b2Vec2 GetYAxis() const
 {
  return b2Vec2(-s, c);
 }


 float32 s, c;
};



struct b2Transform
{

 b2Transform() {}


 b2Transform(const b2Vec2& position, const b2Rot& rotation) : p(position), q(rotation) {}


 void SetIdentity()
 {
  p.SetZero();
  q.SetIdentity();
 }


 void Set(const b2Vec2& position, float32 angle)
 {
  p = position;
  q.Set(angle);
 }

 b2Vec2 p;
 b2Rot q;
};





struct b2Sweep
{


 void GetTransform(b2Transform* xfb, float32 beta) const;



 void Advance(float32 alpha);


 void Normalize();

 b2Vec2 localCenter;
 b2Vec2 c0, c;
 float32 a0, a;



 float32 alpha0;
};


extern const b2Vec2 b2Vec2_zero;


inline float32 b2Dot(const b2Vec2& a, const b2Vec2& b)
{
 return a.x * b.x + a.y * b.y;
}


inline float32 b2Cross(const b2Vec2& a, const b2Vec2& b)
{
 return a.x * b.y - a.y * b.x;
}



inline b2Vec2 b2Cross(const b2Vec2& a, float32 s)
{
 return b2Vec2(s * a.y, -s * a.x);
}



inline b2Vec2 b2Cross(float32 s, const b2Vec2& a)
{
 return b2Vec2(-s * a.y, s * a.x);
}



inline b2Vec2 b2Mul(const b2Mat22& A, const b2Vec2& v)
{
 return b2Vec2(A.ex.x * v.x + A.ey.x * v.y, A.ex.y * v.x + A.ey.y * v.y);
}



inline b2Vec2 b2MulT(const b2Mat22& A, const b2Vec2& v)
{
 return b2Vec2(b2Dot(v, A.ex), b2Dot(v, A.ey));
}


inline b2Vec2 operator + (const b2Vec2& a, const b2Vec2& b)
{
 return b2Vec2(a.x + b.x, a.y + b.y);
}


inline b2Vec2 operator - (const b2Vec2& a, const b2Vec2& b)
{
 return b2Vec2(a.x - b.x, a.y - b.y);
}

inline b2Vec2 operator * (float32 s, const b2Vec2& a)
{
 return b2Vec2(s * a.x, s * a.y);
}

inline bool operator == (const b2Vec2& a, const b2Vec2& b)
{
 return a.x == b.x && a.y == b.y;
}

inline float32 b2Distance(const b2Vec2& a, const b2Vec2& b)
{
 b2Vec2 c = a - b;
 return c.Length();
}

inline float32 b2DistanceSquared(const b2Vec2& a, const b2Vec2& b)
{
 b2Vec2 c = a - b;
 return b2Dot(c, c);
}

inline b2Vec3 operator * (float32 s, const b2Vec3& a)
{
 return b2Vec3(s * a.x, s * a.y, s * a.z);
}


inline b2Vec3 operator + (const b2Vec3& a, const b2Vec3& b)
{
 return b2Vec3(a.x + b.x, a.y + b.y, a.z + b.z);
}


inline b2Vec3 operator - (const b2Vec3& a, const b2Vec3& b)
{
 return b2Vec3(a.x - b.x, a.y - b.y, a.z - b.z);
}


inline float32 b2Dot(const b2Vec3& a, const b2Vec3& b)
{
 return a.x * b.x + a.y * b.y + a.z * b.z;
}


inline b2Vec3 b2Cross(const b2Vec3& a, const b2Vec3& b)
{
 return b2Vec3(a.y * b.z - a.z * b.y, a.z * b.x - a.x * b.z, a.x * b.y - a.y * b.x);
}

inline b2Mat22 operator + (const b2Mat22& A, const b2Mat22& B)
{
 return b2Mat22(A.ex + B.ex, A.ey + B.ey);
}


inline b2Mat22 b2Mul(const b2Mat22& A, const b2Mat22& B)
{
 return b2Mat22(b2Mul(A, B.ex), b2Mul(A, B.ey));
}


inline b2Mat22 b2MulT(const b2Mat22& A, const b2Mat22& B)
{
 b2Vec2 c1(b2Dot(A.ex, B.ex), b2Dot(A.ey, B.ex));
 b2Vec2 c2(b2Dot(A.ex, B.ey), b2Dot(A.ey, B.ey));
 return b2Mat22(c1, c2);
}


inline b2Vec3 b2Mul(const b2Mat33& A, const b2Vec3& v)
{
 return v.x * A.ex + v.y * A.ey + v.z * A.ez;
}


inline b2Vec2 b2Mul22(const b2Mat33& A, const b2Vec2& v)
{
 return b2Vec2(A.ex.x * v.x + A.ey.x * v.y, A.ex.y * v.x + A.ey.y * v.y);
}


inline b2Rot b2Mul(const b2Rot& q, const b2Rot& r)
{




 b2Rot qr;
 qr.s = q.s * r.c + q.c * r.s;
 qr.c = q.c * r.c - q.s * r.s;
 return qr;
}


inline b2Rot b2MulT(const b2Rot& q, const b2Rot& r)
{




 b2Rot qr;
 qr.s = q.c * r.s - q.s * r.c;
 qr.c = q.c * r.c + q.s * r.s;
 return qr;
}


inline b2Vec2 b2Mul(const b2Rot& q, const b2Vec2& v)
{
 return b2Vec2(q.c * v.x - q.s * v.y, q.s * v.x + q.c * v.y);
}


inline b2Vec2 b2MulT(const b2Rot& q, const b2Vec2& v)
{
 return b2Vec2(q.c * v.x + q.s * v.y, -q.s * v.x + q.c * v.y);
}

inline b2Vec2 b2Mul(const b2Transform& T, const b2Vec2& v)
{
 float32 x = (T.q.c * v.x - T.q.s * v.y) + T.p.x;
 float32 y = (T.q.s * v.x + T.q.c * v.y) + T.p.y;

 return b2Vec2(x, y);
}

inline b2Vec2 b2MulT(const b2Transform& T, const b2Vec2& v)
{
 float32 px = v.x - T.p.x;
 float32 py = v.y - T.p.y;
 float32 x = (T.q.c * px + T.q.s * py);
 float32 y = (-T.q.s * px + T.q.c * py);

 return b2Vec2(x, y);
}



inline b2Transform b2Mul(const b2Transform& A, const b2Transform& B)
{
 b2Transform C;
 C.q = b2Mul(A.q, B.q);
 C.p = b2Mul(A.q, B.p) + A.p;
 return C;
}



inline b2Transform b2MulT(const b2Transform& A, const b2Transform& B)
{
 b2Transform C;
 C.q = b2MulT(A.q, B.q);
 C.p = b2MulT(A.q, B.p - A.p);
 return C;
}

template <typename T>
inline T b2Abs(T a)
{
 return a > T(0) ? a : -a;
}

inline b2Vec2 b2Abs(const b2Vec2& a)
{
 return b2Vec2(b2Abs(a.x), b2Abs(a.y));
}

inline b2Mat22 b2Abs(const b2Mat22& A)
{
 return b2Mat22(b2Abs(A.ex), b2Abs(A.ey));
}

template <typename T>
inline T b2Min(T a, T b)
{
 return a < b ? a : b;
}

inline b2Vec2 b2Min(const b2Vec2& a, const b2Vec2& b)
{
 return b2Vec2(b2Min(a.x, b.x), b2Min(a.y, b.y));
}

template <typename T>
inline T b2Max(T a, T b)
{
 return a > b ? a : b;
}

inline b2Vec2 b2Max(const b2Vec2& a, const b2Vec2& b)
{
 return b2Vec2(b2Max(a.x, b.x), b2Max(a.y, b.y));
}

template <typename T>
inline T b2Clamp(T a, T low, T high)
{
 return b2Max(low, b2Min(a, high));
}

inline b2Vec2 b2Clamp(const b2Vec2& a, const b2Vec2& low, const b2Vec2& high)
{
 return b2Max(low, b2Min(a, high));
}

template<typename T> inline void b2Swap(T& a, T& b)
{
 T tmp = a;
 a = b;
 b = tmp;
}






inline uint32 b2NextPowerOfTwo(uint32 x)
{
 x |= (x >> 1);
 x |= (x >> 2);
 x |= (x >> 4);
 x |= (x >> 8);
 x |= (x >> 16);
 return x + 1;
}

inline bool b2IsPowerOfTwo(uint32 x)
{
 bool result = x > 0 && (x & (x - 1)) == 0;
 return result;
}

inline void b2Sweep::GetTransform(b2Transform* xf, float32 beta) const
{
 xf->p = (1.0f - beta) * c0 + beta * c;
 float32 angle = (1.0f - beta) * a0 + beta * a;
 xf->q.Set(angle);


 xf->p -= b2Mul(xf->q, localCenter);
}

inline void b2Sweep::Advance(float32 alpha)
{
 (void)( (!!(alpha0 < 1.0f)) || (_wassert(L"alpha0 < 1.0f", L"../..\\Box2D/Common/b2Math.h", (unsigned)(704)), 0) );
 float32 beta = (alpha - alpha0) / (1.0f - alpha0);
 c0 += beta * (c - c0);
 a0 += beta * (a - a0);
 alpha0 = alpha;
}


inline void b2Sweep::Normalize()
{
 float32 twoPi = 2.0f * 3.14159265359f;
 float32 d = twoPi * floorf(a0 / twoPi);
 a0 -= d;
 a -= d;
}
# 24 "../..\\Box2D/Collision/Shapes/b2Shape.h" 2
# 1 "../..\\Box2D/Collision/b2Collision.h" 1
# 23 "../..\\Box2D/Collision/b2Collision.h"
# 1 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\limits.h" 1 3
# 11 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\limits.h" 3
# 1 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vcruntime.h" 1 3
# 11 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\limits.h" 2 3


#pragma pack(push, 8)
# 13 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\limits.h" 3
 extern "C" {
# 88 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\limits.h" 3
}
# 88 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\limits.h" 3
#pragma pack(pop)
# 24 "../..\\Box2D/Collision/b2Collision.h" 2





class b2Shape;
class b2CircleShape;
class b2EdgeShape;
class b2PolygonShape;

const uint8 b2_nullFeature = 0xff;



struct b2ContactFeature
{
 enum Type
 {
  e_vertex = 0,
  e_face = 1
 };

 uint8 indexA;
 uint8 indexB;
 uint8 typeA;
 uint8 typeB;
};


union b2ContactID
{
 b2ContactFeature cf;
 uint32 key;
};
# 69 "../..\\Box2D/Collision/b2Collision.h"
struct b2ManifoldPoint
{
 b2Vec2 localPoint;
 float32 normalImpulse;
 float32 tangentImpulse;
 b2ContactID id;
};
# 93 "../..\\Box2D/Collision/b2Collision.h"
struct b2Manifold
{
 enum Type
 {
  e_circles,
  e_faceA,
  e_faceB
 };

 b2ManifoldPoint points[2];
 b2Vec2 localNormal;
 b2Vec2 localPoint;
 Type type;
 int32 pointCount;
};


struct b2WorldManifold
{




 void Initialize(const b2Manifold* manifold,
     const b2Transform& xfA, float32 radiusA,
     const b2Transform& xfB, float32 radiusB);

 b2Vec2 normal;
 b2Vec2 points[2];
 float32 separations[2];
};


enum b2PointState
{
 b2_nullState,
 b2_addState,
 b2_persistState,
 b2_removeState
};



void b2GetPointStates(b2PointState state1[2], b2PointState state2[2],
       const b2Manifold* manifold1, const b2Manifold* manifold2);


struct b2ClipVertex
{
 b2Vec2 v;
 b2ContactID id;
};


struct b2RayCastInput
{
 b2Vec2 p1, p2;
 float32 maxFraction;
};



struct b2RayCastOutput
{
 b2Vec2 normal;
 float32 fraction;
};


struct b2AABB
{

 bool IsValid() const;


 b2Vec2 GetCenter() const
 {
  return 0.5f * (lowerBound + upperBound);
 }


 b2Vec2 GetExtents() const
 {
  return 0.5f * (upperBound - lowerBound);
 }


 float32 GetPerimeter() const
 {
  float32 wx = upperBound.x - lowerBound.x;
  float32 wy = upperBound.y - lowerBound.y;
  return 2.0f * (wx + wy);
 }


 void Combine(const b2AABB& aabb)
 {
  lowerBound = b2Min(lowerBound, aabb.lowerBound);
  upperBound = b2Max(upperBound, aabb.upperBound);
 }


 void Combine(const b2AABB& aabb1, const b2AABB& aabb2)
 {
  lowerBound = b2Min(aabb1.lowerBound, aabb2.lowerBound);
  upperBound = b2Max(aabb1.upperBound, aabb2.upperBound);
 }


 bool Contains(const b2AABB& aabb) const
 {
  bool result = true;
  result = result && lowerBound.x <= aabb.lowerBound.x;
  result = result && lowerBound.y <= aabb.lowerBound.y;
  result = result && aabb.upperBound.x <= upperBound.x;
  result = result && aabb.upperBound.y <= upperBound.y;
  return result;
 }

 bool RayCast(b2RayCastOutput* output, const b2RayCastInput& input) const;

 b2Vec2 lowerBound;
 b2Vec2 upperBound;
};


void b2CollideCircles(b2Manifold* manifold,
       const b2CircleShape* circleA, const b2Transform& xfA,
       const b2CircleShape* circleB, const b2Transform& xfB);


void b2CollidePolygonAndCircle(b2Manifold* manifold,
          const b2PolygonShape* polygonA, const b2Transform& xfA,
          const b2CircleShape* circleB, const b2Transform& xfB);


void b2CollidePolygons(b2Manifold* manifold,
        const b2PolygonShape* polygonA, const b2Transform& xfA,
        const b2PolygonShape* polygonB, const b2Transform& xfB);


void b2CollideEdgeAndCircle(b2Manifold* manifold,
          const b2EdgeShape* polygonA, const b2Transform& xfA,
          const b2CircleShape* circleB, const b2Transform& xfB);


void b2CollideEdgeAndPolygon(b2Manifold* manifold,
          const b2EdgeShape* edgeA, const b2Transform& xfA,
          const b2PolygonShape* circleB, const b2Transform& xfB);


int32 b2ClipSegmentToLine(b2ClipVertex vOut[2], const b2ClipVertex vIn[2],
       const b2Vec2& normal, float32 offset, int32 vertexIndexA);


bool b2TestOverlap( const b2Shape* shapeA, int32 indexA,
     const b2Shape* shapeB, int32 indexB,
     const b2Transform& xfA, const b2Transform& xfB);



inline bool b2AABB::IsValid() const
{
 b2Vec2 d = upperBound - lowerBound;
 bool valid = d.x >= 0.0f && d.y >= 0.0f;
 valid = valid && lowerBound.IsValid() && upperBound.IsValid();
 return valid;
}

inline bool b2TestOverlap(const b2AABB& a, const b2AABB& b)
{
 b2Vec2 d1, d2;
 d1 = b.lowerBound - a.upperBound;
 d2 = a.lowerBound - b.upperBound;

 if (d1.x > 0.0f || d1.y > 0.0f)
  return false;

 if (d2.x > 0.0f || d2.y > 0.0f)
  return false;

 return true;
}
# 25 "../..\\Box2D/Collision/Shapes/b2Shape.h" 2


struct b2MassData
{

 float32 mass;


 b2Vec2 center;


 float32 I;
};




class b2Shape
{
public:

 enum Type
 {
  e_circle = 0,
  e_edge = 1,
  e_polygon = 2,
  e_chain = 3,
  e_typeCount = 4
 };

 virtual ~b2Shape() {}


 virtual b2Shape* Clone(b2BlockAllocator* allocator) const = 0;



 Type GetType() const;


 virtual int32 GetChildCount() const = 0;




 virtual bool TestPoint(const b2Transform& xf, const b2Vec2& p) const = 0;






 virtual bool RayCast(b2RayCastOutput* output, const b2RayCastInput& input,
      const b2Transform& transform, int32 childIndex) const = 0;





 virtual void ComputeAABB(b2AABB* aabb, const b2Transform& xf, int32 childIndex) const = 0;





 virtual void ComputeMass(b2MassData* massData, float32 density) const = 0;

 Type m_type;
 float32 m_radius;
};

inline b2Shape::Type b2Shape::GetType() const
{
 return m_type;
}
# 23 "../..\\Box2D/Collision/Shapes/b2EdgeShape.h" 2




class b2EdgeShape : public b2Shape
{
public:
 b2EdgeShape();


 void Set(const b2Vec2& v1, const b2Vec2& v2);


 b2Shape* Clone(b2BlockAllocator* allocator) const;


 int32 GetChildCount() const;


 bool TestPoint(const b2Transform& transform, const b2Vec2& p) const;


 bool RayCast(b2RayCastOutput* output, const b2RayCastInput& input,
    const b2Transform& transform, int32 childIndex) const;


 void ComputeAABB(b2AABB* aabb, const b2Transform& transform, int32 childIndex) const;


 void ComputeMass(b2MassData* massData, float32 density) const;


 b2Vec2 m_vertex1, m_vertex2;


 b2Vec2 m_vertex0, m_vertex3;
 bool m_hasVertex0, m_hasVertex3;
};

inline b2EdgeShape::b2EdgeShape()
{
 m_type = e_edge;
 m_radius = (2.0f * 0.005f);
 m_vertex0.x = 0.0f;
 m_vertex0.y = 0.0f;
 m_vertex3.x = 0.0f;
 m_vertex3.y = 0.0f;
 m_hasVertex0 = false;
 m_hasVertex3 = false;
}
# 20 "f:\\projects\\cocos\\inventory\\cocos2d\\external\\box2d\\collision\\shapes\\b2edgeshape.cpp" 2
# 1 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\new" 1 3





# 1 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\exception" 1 3






# 1 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\type_traits" 1 3





# 1 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\xstddef" 1 3





# 1 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\cstddef" 1 3




# 1 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\yvals.h" 1 3






# 1 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\xkeycheck.h" 1 3
# 7 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\yvals.h" 2 3

# 1 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\crtdefs.h" 1 3








# 1 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vcruntime.h" 1 3
# 9 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\crtdefs.h" 2 3
# 8 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\yvals.h" 2 3


#pragma pack(push,8)
# 253 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\yvals.h" 3
#pragma detect_mismatch("_MSC_VER", "1900")



#pragma detect_mismatch("_ITERATOR_DEBUG_LEVEL", "2")
# 268 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\yvals.h" 3
#pragma detect_mismatch("RuntimeLibrary", "MDd_DynamicDebug")
# 412 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\yvals.h" 3
# 1 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\use_ansi.h" 1 3
# 57 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\use_ansi.h" 3
#pragma comment(lib, "msvcprt" "d" "")
# 412 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\yvals.h" 2 3
# 592 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\yvals.h" 3
typedef long long _Longlong;
typedef unsigned long long _ULonglong;
# 611 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\yvals.h" 3
namespace std {
enum _Uninitialized
 {
 _Noinit
 };



#pragma warning(push)
#pragma warning(disable: 4412)
class __declspec(dllimport) _Lockit
 {
public:
# 644 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\yvals.h" 3
 __thiscall _Lockit();
 explicit __thiscall _Lockit(int);
 __thiscall ~_Lockit() noexcept;


 static void __cdecl _Lockit_ctor(int);
 static void __cdecl _Lockit_dtor(int);

private:
 static void __cdecl _Lockit_ctor(_Lockit *);
 static void __cdecl _Lockit_ctor(_Lockit *, int);
 static void __cdecl _Lockit_dtor(_Lockit *);

public:
                    _Lockit(const _Lockit&) = delete;
 _Lockit& operator=(const _Lockit&) = delete;

private:
 int _Locktype;
# 677 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\yvals.h" 3
 };
# 764 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\yvals.h" 3
class __declspec(dllimport) _Init_locks
 {
public:
# 780 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\yvals.h" 3
 __thiscall _Init_locks();
 __thiscall ~_Init_locks() noexcept;


private:
 static void __cdecl _Init_locks_ctor(_Init_locks *);
 static void __cdecl _Init_locks_dtor(_Init_locks *);
# 797 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\yvals.h" 3
 };

#pragma warning(pop)
}
# 809 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\yvals.h" 3
__declspec(dllimport) void __cdecl _Atexit(void (__cdecl *)(void));

typedef unsigned long _Uint32t;





#pragma pack(pop)
# 5 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\cstddef" 2 3
# 17 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\cstddef" 3
namespace std {
using :: ptrdiff_t; using :: size_t;
}



namespace std {
typedef double max_align_t;
}

using ::std:: max_align_t;
# 6 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\xstddef" 2 3

# 1 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\cstdlib" 1 3
# 13 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\cstdlib" 3
# 1 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stdlib.h" 1 3
# 12 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stdlib.h" 3
# 1 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_malloc.h" 1 3
# 13 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_malloc.h" 3
#pragma pack(push, 8)
# 13 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_malloc.h" 3
 extern "C" {
# 54 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_malloc.h" 3
__declspec(dllimport) __declspec(allocator) __declspec(restrict)
void* __cdecl _calloc_base(
         size_t _Count,
         size_t _Size
    );


__declspec(dllimport) __declspec(allocator) __declspec(restrict)
void* __cdecl calloc(
                            size_t _Count,
                            size_t _Size
    );


__declspec(dllimport) int __cdecl _callnewh(
         size_t _Size
    );


__declspec(dllimport) __declspec(allocator)
void* __cdecl _expand(
                            void* _Block,
                            size_t _Size
    );

__declspec(dllimport)
void __cdecl _free_base(
                                   void* _Block
    );

__declspec(dllimport)
void __cdecl free(
                                   void* _Block
    );


__declspec(dllimport) __declspec(allocator) __declspec(restrict)
void* __cdecl _malloc_base(
         size_t _Size
    );


__declspec(dllimport) __declspec(allocator) __declspec(restrict)
void* __cdecl malloc(
                            size_t _Size
    );


__declspec(dllimport)
size_t __cdecl _msize(
                  void* _Block
    );


__declspec(dllimport) __declspec(allocator) __declspec(restrict)
void* __cdecl _realloc_base(
                                    void* _Block,
                                    size_t _Size
    );


__declspec(dllimport) __declspec(allocator) __declspec(restrict)
void* __cdecl realloc(
                                   void* _Block,
                                   size_t _Size
    );


__declspec(dllimport) __declspec(allocator) __declspec(restrict)
void* __cdecl _recalloc(
                                   void* _Block,
                                   size_t _Count,
                                   size_t _Size
    );

__declspec(dllimport)
void __cdecl _aligned_free(
                                   void* _Block
    );


__declspec(dllimport) __declspec(allocator) __declspec(restrict)
void* __cdecl _aligned_malloc(
                            size_t _Size,
                            size_t _Alignment
    );


__declspec(dllimport) __declspec(allocator) __declspec(restrict)
void* __cdecl _aligned_offset_malloc(
                            size_t _Size,
                            size_t _Alignment,
                            size_t _Offset
    );


__declspec(dllimport)
size_t __cdecl _aligned_msize(
                  void* _Block,
                  size_t _Alignment,
                  size_t _Offset
    );


__declspec(dllimport) __declspec(allocator) __declspec(restrict)
void* __cdecl _aligned_offset_realloc(
                                   void* _Block,
                                   size_t _Size,
                                   size_t _Alignment,
                                   size_t _Offset
    );


__declspec(dllimport) __declspec(allocator) __declspec(restrict)
void* __cdecl _aligned_offset_recalloc(
                                   void* _Block,
                                   size_t _Count,
                                   size_t _Size,
                                   size_t _Alignment,
                                   size_t _Offset
    );


__declspec(dllimport) __declspec(allocator) __declspec(restrict)
void* __cdecl _aligned_realloc(
                                   void* _Block,
                                   size_t _Size,
                                   size_t _Alignment
    );


__declspec(dllimport) __declspec(allocator) __declspec(restrict)
void* __cdecl _aligned_recalloc(
                                   void* _Block,
                                   size_t _Count,
                                   size_t _Size,
                                   size_t _Alignment
    );
# 214 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_malloc.h" 3
}
# 214 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_malloc.h" 3
#pragma pack(pop)
# 12 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stdlib.h" 2 3

# 1 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_search.h" 1 3
# 16 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_search.h" 3
#pragma pack(push, 8)
# 16 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_search.h" 3
 extern "C" {






    __declspec(dllimport) void* __cdecl bsearch_s(
                                                           void const* _Key,
                                                           void const* _Base,
                                                           rsize_t _NumOfElements,
                                                           rsize_t _SizeOfElements,
             int (__cdecl* _PtFuncCompare)(void*, void const*, void const*),
                                                           void* _Context
        );

    __declspec(dllimport) void __cdecl qsort_s(
                                                                void* _Base,
                                                                rsize_t _NumOfElements,
                                                                rsize_t _SizeOfElements,
             int (__cdecl* _PtFuncCompare)(void*, void const*, void const*),
                                                                void* _Context
        );






__declspec(dllimport) void* __cdecl bsearch(
                                                       void const* _Key,
                                                       void const* _Base,
                                                       size_t _NumOfElements,
                                                       size_t _SizeOfElements,
         int (__cdecl* _PtFuncCompare)(void const*, void const*)
    );

__declspec(dllimport) void __cdecl qsort(
                                                            void* _Base,
                                                            size_t _NumOfElements,
                                                            size_t _SizeOfElements,
         int (__cdecl* _PtFuncCompare)(void const*, void const*)
    );


__declspec(dllimport) void* __cdecl _lfind_s(
                                                          void const* _Key,
                                                          void const* _Base,
                                                          unsigned int* _NumOfElements,
                                                          size_t _SizeOfElements,
         int (__cdecl* _PtFuncCompare)(void*, void const*, void const*),
                                                          void* _Context
    );


__declspec(dllimport) void* __cdecl _lfind(
                                                          void const* _Key,
                                                          void const* _Base,
                                                          unsigned int* _NumOfElements,
                                                          unsigned int _SizeOfElements,
         int (__cdecl* _PtFuncCompare)(void const*, void const*)
    );


__declspec(dllimport) void* __cdecl _lsearch_s(
                                                                void const* _Key,
                                                                void* _Base,
                                                                unsigned int* _NumOfElements,
                                                                size_t _SizeOfElements,
         int (__cdecl* _PtFuncCompare)(void*, void const*, void const*),
                                                                void* _Context
    );


__declspec(dllimport) void* __cdecl _lsearch(
                                                                void const* _Key,
                                                                void* _Base,
                                                                unsigned int* _NumOfElements,
                                                                unsigned int _SizeOfElements,
         int (__cdecl* _PtFuncCompare)(void const*, void const*)
    );
# 184 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_search.h" 3
                   __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_lfind" ". See online help for details."))
    __declspec(dllimport) void* __cdecl lfind(
                                                              void const* _Key,
                                                              void const* _Base,
                                                              unsigned int* _NumOfElements,
                                                              unsigned int _SizeOfElements,
             int (__cdecl* _PtFuncCompare)(void const*, void const*)
        );

                   __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_lsearch" ". See online help for details."))
    __declspec(dllimport) void* __cdecl lsearch(
                                                                   void const* _Key,
                                                                   void* _Base,
                                                                   unsigned int* _NumOfElements,
                                                                   unsigned int _SizeOfElements,
             int (__cdecl* _PtFuncCompare)(void const*, void const*)
        );





}
# 206 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_search.h" 3
#pragma pack(pop)
# 13 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stdlib.h" 2 3

# 1 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_wstdlib.h" 1 3
# 13 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_wstdlib.h" 3
#pragma pack(push, 8)
# 13 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_wstdlib.h" 3
 extern "C" {
# 48 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_wstdlib.h" 3
__declspec(dllimport) errno_t __cdecl _itow_s(
                                 int _Value,
                                 wchar_t* _Buffer,
                                 size_t _BufferCount,
                                 int _Radix
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _itow_s(int _Value, wchar_t (&_Buffer)[_Size], int _Radix) throw() { return _itow_s(_Value, _Buffer, _Size, _Radix); } }






__declspec(deprecated("This function or variable may be unsafe. Consider using " "_itow_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __declspec(dllimport) wchar_t* __cdecl _itow(int _Value, wchar_t *_Buffer, int _Radix);
# 71 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_wstdlib.h" 3
__declspec(dllimport) errno_t __cdecl _ltow_s(
                                 long _Value,
                                 wchar_t* _Buffer,
                                 size_t _BufferCount,
                                 int _Radix
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _ltow_s(long _Value, wchar_t (&_Buffer)[_Size], int _Radix) throw() { return _ltow_s(_Value, _Buffer, _Size, _Radix); } }






__declspec(deprecated("This function or variable may be unsafe. Consider using " "_ltow_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __declspec(dllimport) wchar_t* __cdecl _ltow(long _Value, wchar_t *_Buffer, int _Radix);







__declspec(dllimport) errno_t __cdecl _ultow_s(
                                 unsigned long _Value,
                                 wchar_t* _Buffer,
                                 size_t _BufferCount,
                                 int _Radix
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _ultow_s(unsigned long _Value, wchar_t (&_Buffer)[_Size], int _Radix) throw() { return _ultow_s(_Value, _Buffer, _Size, _Radix); } }






__declspec(deprecated("This function or variable may be unsafe. Consider using " "_ultow_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __declspec(dllimport) wchar_t* __cdecl _ultow(unsigned long _Value, wchar_t *_Buffer, int _Radix);







__declspec(dllimport) double __cdecl wcstod(
                             wchar_t const* _String,
                             wchar_t** _EndPtr
    );


__declspec(dllimport) double __cdecl _wcstod_l(
                             wchar_t const* _String,
                             wchar_t** _EndPtr,
                             _locale_t _Locale
    );


__declspec(dllimport) long __cdecl wcstol(
                             wchar_t const* _String,
                             wchar_t** _EndPtr,
                             int _Radix
    );


__declspec(dllimport) long __cdecl _wcstol_l(
                             wchar_t const* _String,
                             wchar_t** _EndPtr,
                             int _Radix,
                             _locale_t _Locale
    );


__declspec(dllimport) long long __cdecl wcstoll(
                             wchar_t const* _String,
                             wchar_t** _EndPtr,
                             int _Radix
    );


__declspec(dllimport) long long __cdecl _wcstoll_l(
                             wchar_t const* _String,
                             wchar_t** _EndPtr,
                             int _Radix,
                             _locale_t _Locale
    );


__declspec(dllimport) unsigned long __cdecl wcstoul(
                             wchar_t const* _String,
                             wchar_t** _EndPtr,
                             int _Radix
    );


__declspec(dllimport) unsigned long __cdecl _wcstoul_l(
                             wchar_t const* _String,
                             wchar_t** _EndPtr,
                             int _Radix,
                             _locale_t _Locale
    );


__declspec(dllimport) unsigned long long __cdecl wcstoull(
                             wchar_t const* _String,
                             wchar_t** _EndPtr,
                             int _Radix
    );


__declspec(dllimport) unsigned long long __cdecl _wcstoull_l(
                             wchar_t const* _String,
                             wchar_t** _EndPtr,
                             int _Radix,
                             _locale_t _Locale
    );


__declspec(dllimport) long double __cdecl wcstold(
                             wchar_t const* _String,
                             wchar_t** _EndPtr
    );


__declspec(dllimport) long double __cdecl _wcstold_l(
                             wchar_t const* _String,
                             wchar_t** _EndPtr,
                             _locale_t _Locale
    );


__declspec(dllimport) float __cdecl wcstof(
                             wchar_t const* _String,
                             wchar_t** _EndPtr
    );


__declspec(dllimport) float __cdecl _wcstof_l(
                             wchar_t const* _String,
                             wchar_t** _EndPtr,
                             _locale_t _Locale
    );


__declspec(dllimport) double __cdecl _wtof(
           wchar_t const* _String
    );


__declspec(dllimport) double __cdecl _wtof_l(
             wchar_t const* _String,
             _locale_t _Locale
    );


__declspec(dllimport) int __cdecl _wtoi(
           wchar_t const* _String
    );


__declspec(dllimport) int __cdecl _wtoi_l(
             wchar_t const* _String,
             _locale_t _Locale
    );


__declspec(dllimport) long __cdecl _wtol(
           wchar_t const* _String
    );


__declspec(dllimport) long __cdecl _wtol_l(
             wchar_t const* _String,
             _locale_t _Locale
    );


__declspec(dllimport) long long __cdecl _wtoll(
           wchar_t const* _String
    );


__declspec(dllimport) long long __cdecl _wtoll_l(
             wchar_t const* _String,
             _locale_t _Locale
    );


__declspec(dllimport) errno_t __cdecl _i64tow_s(
                                 __int64 _Value,
                                 wchar_t* _Buffer,
                                 size_t _BufferCount,
                                 int _Radix
    );

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_i64tow_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
__declspec(dllimport) wchar_t* __cdecl _i64tow(
                           __int64 _Value,
                           wchar_t* _Buffer,
                           int _Radix
    );


__declspec(dllimport) errno_t __cdecl _ui64tow_s(
                                 unsigned __int64 _Value,
                                 wchar_t* _Buffer,
                                 size_t _BufferCount,
                                 int _Radix
    );

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_ui64tow_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
__declspec(dllimport) wchar_t* __cdecl _ui64tow(
                           unsigned __int64 _Value,
                           wchar_t* _Buffer,
                           int _Radix
    );


__declspec(dllimport) __int64 __cdecl _wtoi64(
           wchar_t const* _String
    );


__declspec(dllimport) __int64 __cdecl _wtoi64_l(
             wchar_t const* _String,
             _locale_t _Locale
    );


__declspec(dllimport) __int64 __cdecl _wcstoi64(
                             wchar_t const* _String,
                             wchar_t** _EndPtr,
                             int _Radix
    );


__declspec(dllimport) __int64 __cdecl _wcstoi64_l(
                             wchar_t const* _String,
                             wchar_t** _EndPtr,
                             int _Radix,
                             _locale_t _Locale
    );


__declspec(dllimport) unsigned __int64 __cdecl _wcstoui64(
                             wchar_t const* _String,
                             wchar_t** _EndPtr,
                             int _Radix
    );


__declspec(dllimport) unsigned __int64 __cdecl _wcstoui64_l(
                             wchar_t const* _String,
                             wchar_t** _EndPtr,
                             int _Radix,
                             _locale_t _Locale
    );






__declspec(dllimport) __declspec(allocator) wchar_t* __cdecl _wfullpath(
                                     wchar_t* _Buffer,
                                     wchar_t const* _Path,
                                     size_t _BufferCount
    );




__declspec(dllimport) errno_t __cdecl _wmakepath_s(
                                 wchar_t* _Buffer,
                                 size_t _BufferCount,
                                 wchar_t const* _Drive,
                                 wchar_t const* _Dir,
                                 wchar_t const* _Filename,
                                 wchar_t const* _Ext
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _wmakepath_s(wchar_t (&_Buffer)[_Size], wchar_t const* _Drive, wchar_t const* _Dir, wchar_t const* _Filename, wchar_t const* _Ext) throw() { return _wmakepath_s(_Buffer, _Size, _Drive, _Dir, _Filename, _Ext); } }
# 360 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_wstdlib.h" 3
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wmakepath_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __declspec(dllimport) void __cdecl _wmakepath( wchar_t *_Buffer, wchar_t const* _Drive, wchar_t const* _Dir, wchar_t const* _Filename, wchar_t const* _Ext);
# 369 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_wstdlib.h" 3
__declspec(dllimport) void __cdecl _wperror(
               wchar_t const* _ErrMsg
    );

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wsplitpath_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
__declspec(dllimport) void __cdecl _wsplitpath(
                             wchar_t const* _FullPath,
                             wchar_t* _Drive,
                             wchar_t* _Dir,
                             wchar_t* _Filename,
                             wchar_t* _Ext
    );

__declspec(dllimport) errno_t __cdecl _wsplitpath_s(
                                       wchar_t const* _FullPath,
                                       wchar_t* _Drive,
                                       size_t _DriveCount,
                                       wchar_t* _Dir,
                                       size_t _DirCount,
                                       wchar_t* _Filename,
                                       size_t _FilenameCount,
                                       wchar_t* _Ext,
                                       size_t _ExtCount
    );

extern "C++" { template <size_t _DriveSize, size_t _DirSize, size_t _NameSize, size_t _ExtSize> inline errno_t __cdecl _wsplitpath_s( wchar_t const* _Path, wchar_t (&_Drive)[_DriveSize], wchar_t (&_Dir)[_DirSize], wchar_t (&_Name)[_NameSize], wchar_t (&_Ext)[_ExtSize] ) throw() { return _wsplitpath_s(_Path, _Drive, _DriveSize, _Dir, _DirSize, _Name, _NameSize, _Ext, _ExtSize); } }
# 407 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_wstdlib.h" 3
    __declspec(dllimport) errno_t __cdecl _wdupenv_s(
                                                                                    wchar_t** _Buffer,
                                                                                    size_t* _BufferCount,
                                                                                    wchar_t const* _VarName
        );



                   __declspec(deprecated("This function or variable may be unsafe. Consider using " "_wdupenv_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    __declspec(dllimport) wchar_t* __cdecl _wgetenv(
               wchar_t const* _VarName
        );



    __declspec(dllimport) errno_t __cdecl _wgetenv_s(
                                         size_t* _RequiredCount,
                                         wchar_t* _Buffer,
                                         size_t _BufferCount,
                                         wchar_t const* _VarName
        );

    extern "C++" { template <size_t _Size> inline errno_t __cdecl _wgetenv_s(size_t* _RequiredCount, wchar_t (&_Buffer)[_Size], wchar_t const* _VarName) throw() { return _wgetenv_s(_RequiredCount, _Buffer, _Size, _VarName); } }
# 438 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_wstdlib.h" 3
    __declspec(dllimport) int __cdecl _wputenv(
               wchar_t const* _EnvString
        );


    __declspec(dllimport) errno_t __cdecl _wputenv_s(
               wchar_t const* _Name,
               wchar_t const* _Value
        );

    __declspec(dllimport) errno_t __cdecl _wsearchenv_s(
                                     wchar_t const* _Filename,
                                     wchar_t const* _VarName,
                                     wchar_t* _Buffer,
                                     size_t _BufferCount
        );

    extern "C++" { template <size_t _Size> inline errno_t __cdecl _wsearchenv_s(wchar_t const* _Filename, wchar_t const* _VarName, wchar_t (&_ResultPath)[_Size]) throw() { return _wsearchenv_s(_Filename, _VarName, _ResultPath, _Size); } }






    __declspec(deprecated("This function or variable may be unsafe. Consider using " "_wsearchenv_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __declspec(dllimport) void __cdecl _wsearchenv(wchar_t const* _Filename, wchar_t const* _VarName, wchar_t *_ResultPath);






    __declspec(dllimport) int __cdecl _wsystem(
                   wchar_t const* _Command
        );





}
# 477 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_wstdlib.h" 3
#pragma pack(pop)
# 14 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stdlib.h" 2 3



#pragma pack(push, 8)
# 17 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stdlib.h" 3
 extern "C" {
# 33 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stdlib.h" 3
__declspec(dllimport) void __cdecl _swab(
                                                                     char* _Buf1,
                                                                     char* _Buf2,
                                                                     int _SizeInBytes
    );
# 50 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stdlib.h" 3
__declspec(dllimport) __declspec(noreturn) void __cdecl exit( int _Code);
__declspec(dllimport) __declspec(noreturn) void __cdecl _exit( int _Code);
__declspec(dllimport) __declspec(noreturn) void __cdecl _Exit( int _Code);
__declspec(dllimport) __declspec(noreturn) void __cdecl quick_exit( int _Code);
__declspec(dllimport) __declspec(noreturn) void __cdecl abort(void);





__declspec(dllimport) unsigned int __cdecl _set_abort_behavior(
         unsigned int _Flags,
         unsigned int _Mask
    );




    typedef int (__cdecl* _onexit_t)(void);
# 139 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stdlib.h" 3
    int __cdecl atexit(void (__cdecl*)(void));
    _onexit_t __cdecl _onexit( _onexit_t _Func);


int __cdecl at_quick_exit(void (__cdecl*)(void));
# 154 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stdlib.h" 3
    typedef void (__cdecl* _purecall_handler)(void);


    typedef void (__cdecl* _invalid_parameter_handler)(
        wchar_t const*,
        wchar_t const*,
        wchar_t const*,
        unsigned int,
        uintptr_t
        );


    __declspec(dllimport) _purecall_handler __cdecl _set_purecall_handler(
                 _purecall_handler _Handler
        );

    __declspec(dllimport) _purecall_handler __cdecl _get_purecall_handler(void);


    __declspec(dllimport) _invalid_parameter_handler __cdecl _set_invalid_parameter_handler(
                 _invalid_parameter_handler _Handler
        );

    __declspec(dllimport) _invalid_parameter_handler __cdecl _get_invalid_parameter_handler(void);

    __declspec(dllimport) _invalid_parameter_handler __cdecl _set_thread_local_invalid_parameter_handler(
                 _invalid_parameter_handler _Handler
        );

    __declspec(dllimport) _invalid_parameter_handler __cdecl _get_thread_local_invalid_parameter_handler(void);
# 207 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stdlib.h" 3
                   __declspec(dllimport) int __cdecl _set_error_mode( int _Mode);



__declspec(dllimport) int* __cdecl _errno(void);


__declspec(dllimport) errno_t __cdecl _set_errno( int _Value);
__declspec(dllimport) errno_t __cdecl _get_errno( int* _Value);

__declspec(dllimport) unsigned long* __cdecl __doserrno(void);


__declspec(dllimport) errno_t __cdecl _set_doserrno( unsigned long _Value);
__declspec(dllimport) errno_t __cdecl _get_doserrno( unsigned long * _Value);


__declspec(dllimport) __declspec(deprecated("This function or variable may be unsafe. Consider using " "strerror" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) char** __cdecl __sys_errlist(void);


__declspec(dllimport) __declspec(deprecated("This function or variable may be unsafe. Consider using " "strerror" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) int * __cdecl __sys_nerr(void);


__declspec(dllimport) void __cdecl perror( char const* _ErrMsg);




__declspec(deprecated("This function or variable may be unsafe. Consider using " "_get_pgmptr" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __declspec(dllimport) char** __cdecl __p__pgmptr (void);
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_get_wpgmptr" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __declspec(dllimport) wchar_t** __cdecl __p__wpgmptr(void);
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_get_fmode" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __declspec(dllimport) int* __cdecl __p__fmode (void);
# 250 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stdlib.h" 3
__declspec(dllimport) errno_t __cdecl _get_pgmptr ( char** _Value);


__declspec(dllimport) errno_t __cdecl _get_wpgmptr( wchar_t** _Value);

__declspec(dllimport) errno_t __cdecl _set_fmode ( int _Mode );

__declspec(dllimport) errno_t __cdecl _get_fmode ( int* _PMode);
# 266 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stdlib.h" 3
typedef struct _div_t
{
    int quot;
    int rem;
} div_t;

typedef struct _ldiv_t
{
    long quot;
    long rem;
} ldiv_t;

typedef struct _lldiv_t
{
    long long quot;
    long long rem;
} lldiv_t;

               int __cdecl abs ( int _Number);
               long __cdecl labs ( long _Number);
               long long __cdecl llabs ( long long _Number);
               __int64 __cdecl _abs64( __int64 _Number);

               unsigned short __cdecl _byteswap_ushort( unsigned short _Number);
               unsigned long __cdecl _byteswap_ulong ( unsigned long _Number);
               unsigned __int64 __cdecl _byteswap_uint64( unsigned __int64 _Number);

               __declspec(dllimport) div_t __cdecl div ( int _Numerator, int _Denominator);
               __declspec(dllimport) ldiv_t __cdecl ldiv ( long _Numerator, long _Denominator);
               __declspec(dllimport) lldiv_t __cdecl lldiv( long long _Numerator, long long _Denominator);



#pragma warning(push)
#pragma warning(disable: 6540)

unsigned int __cdecl _rotl(
         unsigned int _Value,
         int _Shift
    );


unsigned long __cdecl _lrotl(
         unsigned long _Value,
         int _Shift
    );

unsigned __int64 __cdecl _rotl64(
         unsigned __int64 _Value,
         int _Shift
    );

unsigned int __cdecl _rotr(
         unsigned int _Value,
         int _Shift
    );


unsigned long __cdecl _lrotr(
         unsigned long _Value,
         int _Shift
    );

unsigned __int64 __cdecl _rotr64(
         unsigned __int64 _Value,
         int _Shift
    );

#pragma warning(pop)






__declspec(dllimport) void __cdecl srand( unsigned int _Seed);

               __declspec(dllimport) int __cdecl rand(void);
# 352 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stdlib.h" 3
extern "C++"
{
    inline long abs(long const _X) throw()
    {
        return labs(_X);
    }

    inline long long abs(long long const _X) throw()
    {
        return llabs(_X);
    }

    inline ldiv_t div(long const _A1, long const _A2) throw()
    {
        return ldiv(_A1, _A2);
    }

    inline lldiv_t div(long long const _A1, long long const _A2) throw()
    {
        return lldiv(_A1, _A2);
    }
}
# 385 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stdlib.h" 3
#pragma pack(push, 4)
 typedef struct
    {
        unsigned char ld[10];
    } _LDOUBLE;
#pragma pack(pop)
# 406 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stdlib.h" 3
typedef struct
{
    double x;
} _CRT_DOUBLE;

typedef struct
{
    float f;
} _CRT_FLOAT;





typedef struct
{
    long double x;
} _LONGDOUBLE;



#pragma pack(push, 4)
typedef struct
{
    unsigned char ld12[12];
} _LDBL12;
#pragma pack(pop)








 __declspec(dllimport) double __cdecl atof ( char const* _String);
                                  __declspec(dllimport) int __cdecl atoi ( char const* _String);
                                  __declspec(dllimport) long __cdecl atol ( char const* _String);
                                  __declspec(dllimport) long long __cdecl atoll ( char const* _String);
                                  __declspec(dllimport) __int64 __cdecl _atoi64( char const* _String);

               __declspec(dllimport) double __cdecl _atof_l ( char const* _String, _locale_t _Locale);
               __declspec(dllimport) int __cdecl _atoi_l ( char const* _String, _locale_t _Locale);
               __declspec(dllimport) long __cdecl _atol_l ( char const* _String, _locale_t _Locale);
               __declspec(dllimport) long long __cdecl _atoll_l ( char const* _String, _locale_t _Locale);
               __declspec(dllimport) __int64 __cdecl _atoi64_l( char const* _String, _locale_t _Locale);

               __declspec(dllimport) int __cdecl _atoflt ( _CRT_FLOAT* _Result, char const* _String);
               __declspec(dllimport) int __cdecl _atodbl ( _CRT_DOUBLE* _Result, char* _String);
               __declspec(dllimport) int __cdecl _atoldbl( _LDOUBLE* _Result, char* _String);


__declspec(dllimport) int __cdecl _atoflt_l(
             _CRT_FLOAT* _Result,
             char const* _String,
             _locale_t _Locale
    );


__declspec(dllimport) int __cdecl _atodbl_l(
             _CRT_DOUBLE* _Result,
             char* _String,
             _locale_t _Locale
    );



__declspec(dllimport) int __cdecl _atoldbl_l(
             _LDOUBLE* _Result,
             char* _String,
             _locale_t _Locale
    );


__declspec(dllimport) float __cdecl strtof(
                             char const* _String,
                             char** _EndPtr
    );


__declspec(dllimport) float __cdecl _strtof_l(
                             char const* _String,
                             char** _EndPtr,
                             _locale_t _Locale
    );


__declspec(dllimport) double __cdecl strtod(
                             char const* _String,
                             char** _EndPtr
    );


__declspec(dllimport) double __cdecl _strtod_l(
                             char const* _String,
                             char** _EndPtr,
                             _locale_t _Locale
    );


__declspec(dllimport) long double __cdecl strtold(
                             char const* _String,
                             char** _EndPtr
    );


__declspec(dllimport) long double __cdecl _strtold_l(
                             char const* _String,
                             char** _EndPtr,
                             _locale_t _Locale
    );


__declspec(dllimport) long __cdecl strtol(
                             char const* _String,
                             char** _EndPtr,
                             int _Radix
    );


__declspec(dllimport) long __cdecl _strtol_l(
                             char const* _String,
                             char** _EndPtr,
                             int _Radix,
                             _locale_t _Locale
    );


__declspec(dllimport) long long __cdecl strtoll(
                             char const* _String,
                             char** _EndPtr,
                             int _Radix
    );


__declspec(dllimport) long long __cdecl _strtoll_l(
                             char const* _String,
                             char** _EndPtr,
                             int _Radix,
                             _locale_t _Locale
    );


__declspec(dllimport) unsigned long __cdecl strtoul(
                             char const* _String,
                             char** _EndPtr,
                             int _Radix
    );


__declspec(dllimport) unsigned long __cdecl _strtoul_l(
                             char const* _String,
                             char** _EndPtr,
                             int _Radix,
                             _locale_t _Locale
    );


__declspec(dllimport) unsigned long long __cdecl strtoull(
                             char const* _String,
                             char** _EndPtr,
                             int _Radix
    );


__declspec(dllimport) unsigned long long __cdecl _strtoull_l(
                             char const* _String,
                             char** _EndPtr,
                             int _Radix,
                             _locale_t _Locale
    );


__declspec(dllimport) __int64 __cdecl _strtoi64(
                             char const* _String,
                             char** _EndPtr,
                             int _Radix
    );


__declspec(dllimport) __int64 __cdecl _strtoi64_l(
                             char const* _String,
                             char** _EndPtr,
                             int _Radix,
                             _locale_t _Locale
    );


__declspec(dllimport) unsigned __int64 __cdecl _strtoui64(
                             char const* _String,
                             char** _EndPtr,
                             int _Radix
    );


__declspec(dllimport) unsigned __int64 __cdecl _strtoui64_l(
                             char const* _String,
                             char** _EndPtr,
                             int _Radix,
                             _locale_t _Locale
    );
# 617 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stdlib.h" 3
__declspec(dllimport) errno_t __cdecl _itoa_s(
                                 int _Value,
                                 char* _Buffer,
                                 size_t _BufferCount,
                                 int _Radix
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _itoa_s(int _Value, char (&_Buffer)[_Size], int _Radix) throw() { return _itoa_s(_Value, _Buffer, _Size, _Radix); } }







__declspec(deprecated("This function or variable may be unsafe. Consider using " "_itoa_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __declspec(dllimport) char* __cdecl _itoa(int _Value, char *_Buffer, int _Radix);
# 641 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stdlib.h" 3
__declspec(dllimport) errno_t __cdecl _ltoa_s(
                                 long _Value,
                                 char* _Buffer,
                                 size_t _BufferCount,
                                 int _Radix
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _ltoa_s(long _Value, char (&_Buffer)[_Size], int _Radix) throw() { return _ltoa_s(_Value, _Buffer, _Size, _Radix); } }






__declspec(deprecated("This function or variable may be unsafe. Consider using " "_ltoa_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __declspec(dllimport) char* __cdecl _ltoa(long _Value, char *_Buffer, int _Radix);
# 664 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stdlib.h" 3
__declspec(dllimport) errno_t __cdecl _ultoa_s(
                                 unsigned long _Value,
                                 char* _Buffer,
                                 size_t _BufferCount,
                                 int _Radix
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _ultoa_s(unsigned long _Value, char (&_Buffer)[_Size], int _Radix) throw() { return _ultoa_s(_Value, _Buffer, _Size, _Radix); } }






__declspec(deprecated("This function or variable may be unsafe. Consider using " "_ultoa_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __declspec(dllimport) char* __cdecl _ultoa(unsigned long _Value, char *_Buffer, int _Radix);
# 687 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stdlib.h" 3
__declspec(dllimport) errno_t __cdecl _i64toa_s(
                                 __int64 _Value,
                                 char* _Buffer,
                                 size_t _BufferCount,
                                 int _Radix
    );


__declspec(deprecated("This function or variable may be unsafe. Consider using " "_i64toa_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
__declspec(dllimport) char* __cdecl _i64toa(
                           __int64 _Value,
                           char* _Buffer,
                           int _Radix
    );



__declspec(dllimport) errno_t __cdecl _ui64toa_s(
                                 unsigned __int64 _Value,
                                 char* _Buffer,
                                 size_t _BufferCount,
                                 int _Radix
    );

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_ui64toa_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
__declspec(dllimport) char* __cdecl _ui64toa(
                           unsigned __int64 _Value,
                           char* _Buffer,
                           int _Radix
    );
# 732 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stdlib.h" 3
__declspec(dllimport) errno_t __cdecl _ecvt_s(
                                 char* _Buffer,
          size_t _BufferCount,
          double _Value,
          int _DigitCount,
          int* _PtDec,
          int* _PtSign
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _ecvt_s(char (&_Buffer)[_Size], double _Value, int _DigitCount, int* _PtDec, int* _PtSign) throw() { return _ecvt_s(_Buffer, _Size, _Value, _DigitCount, _PtDec, _PtSign); } }
# 750 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stdlib.h" 3
               __declspec(deprecated("This function or variable may be unsafe. Consider using " "_ecvt_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
__declspec(dllimport) char* __cdecl _ecvt(
          double _Value,
          int _DigitCount,
          int* _PtDec,
          int* _PtSign
    );



__declspec(dllimport) errno_t __cdecl _fcvt_s(
                                 char* _Buffer,
                                 size_t _BufferCount,
                                 double _Value,
                                 int _FractionalDigitCount,
                                 int* _PtDec,
                                 int* _PtSign
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _fcvt_s(char (&_Buffer)[_Size], double _Value, int _FractionalDigitCount, int* _PtDec, int* _PtSign) throw() { return _fcvt_s(_Buffer, _Size, _Value, _FractionalDigitCount, _PtDec, _PtSign); } }
# 780 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stdlib.h" 3
               __declspec(deprecated("This function or variable may be unsafe. Consider using " "_fcvt_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
__declspec(dllimport) char* __cdecl _fcvt(
          double _Value,
          int _FractionalDigitCount,
          int* _PtDec,
          int* _PtSign
    );


__declspec(dllimport) errno_t __cdecl _gcvt_s(
                                 char* _Buffer,
                                 size_t _BufferCount,
                                 double _Value,
                                 int _DigitCount
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _gcvt_s(char (&_Buffer)[_Size], double _Value, int _DigitCount) throw() { return _gcvt_s(_Buffer, _Size, _Value, _DigitCount); } }







__declspec(deprecated("This function or variable may be unsafe. Consider using " "_gcvt_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
__declspec(dllimport) char* __cdecl _gcvt(
                           double _Value,
                           int _DigitCount,
                           char* _Buffer
    );
# 834 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stdlib.h" 3
    __declspec(dllimport) int __cdecl ___mb_cur_max_func(void);


    __declspec(dllimport) int __cdecl ___mb_cur_max_l_func(_locale_t);





__declspec(dllimport) int __cdecl mblen(
                                                char const* _Ch,
                                                size_t _MaxCount
    );


__declspec(dllimport) int __cdecl _mblen_l(
                                                char const* _Ch,
                                                size_t _MaxCount,
                                                _locale_t _Locale
    );



__declspec(dllimport) size_t __cdecl _mbstrlen(
           char const* _String
    );



__declspec(dllimport) size_t __cdecl _mbstrlen_l(
             char const* _String,
             _locale_t _Locale
    );



__declspec(dllimport) size_t __cdecl _mbstrnlen(
           char const* _String,
           size_t _MaxCount
    );



__declspec(dllimport) size_t __cdecl _mbstrnlen_l(
             char const* _String,
             size_t _MaxCount,
             _locale_t _Locale
    );


__declspec(dllimport) int __cdecl mbtowc(
                                         wchar_t* _DstCh,
                                         char const* _SrcCh,
                                         size_t _SrcSizeInBytes
    );


__declspec(dllimport) int __cdecl _mbtowc_l(
                                         wchar_t* _DstCh,
                                         char const* _SrcCh,
                                         size_t _SrcSizeInBytes,
                                         _locale_t _Locale
    );


__declspec(dllimport) errno_t __cdecl mbstowcs_s(
                                                              size_t* _PtNumOfCharConverted,
                                                              wchar_t* _DstBuf,
                                                              size_t _SizeInWords,
                                                              char const* _SrcBuf,
                                                              size_t _MaxCount
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl mbstowcs_s(size_t* _PtNumOfCharConverted, wchar_t (&_Dest)[_Size], char const* _Source, size_t _MaxCount) throw() { return mbstowcs_s(_PtNumOfCharConverted, _Dest, _Size, _Source, _MaxCount); } }







__declspec(deprecated("This function or variable may be unsafe. Consider using " "mbstowcs_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __declspec(dllimport) size_t __cdecl mbstowcs( wchar_t *_Dest, char const* _Source, size_t _MaxCount);







__declspec(dllimport) errno_t __cdecl _mbstowcs_s_l(
                                                              size_t* _PtNumOfCharConverted,
                                                              wchar_t* _DstBuf,
                                                              size_t _SizeInWords,
                                                              char const* _SrcBuf,
                                                              size_t _MaxCount,
                                                              _locale_t _Locale
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _mbstowcs_s_l(size_t* _PtNumOfCharConverted, wchar_t (&_Dest)[_Size], char const* _Source, size_t _MaxCount, _locale_t _Locale) throw() { return _mbstowcs_s_l(_PtNumOfCharConverted, _Dest, _Size, _Source, _MaxCount, _Locale); } }
# 941 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stdlib.h" 3
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_mbstowcs_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __declspec(dllimport) size_t __cdecl _mbstowcs_l( wchar_t *_Dest, char const* _Source, size_t _MaxCount, _locale_t _Locale);
# 953 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stdlib.h" 3
__declspec(deprecated("This function or variable may be unsafe. Consider using " "wctomb_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
__declspec(dllimport) int __cdecl wctomb(
                                   char* _MbCh,
                                   wchar_t _WCh
    );

__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wctomb_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
__declspec(dllimport) int __cdecl _wctomb_l(
                             char* _MbCh,
                             wchar_t _WCh,
                             _locale_t _Locale
    );




    __declspec(dllimport) errno_t __cdecl wctomb_s(
                                                                 int* _SizeConverted,
                                                                 char* _MbCh,
                                                                 rsize_t _SizeInBytes,
                                                                 wchar_t _WCh
        );




__declspec(dllimport) errno_t __cdecl _wctomb_s_l(
                                     int* _SizeConverted,
                                     char* _MbCh,
                                     size_t _SizeInBytes,
                                     wchar_t _WCh,
                                     _locale_t _Locale);


__declspec(dllimport) errno_t __cdecl wcstombs_s(
                                                                       size_t* _PtNumOfCharConverted,
                                                                       char* _Dst,
                                                                       size_t _DstSizeInBytes,
                                                                       wchar_t const* _Src,
                                                                       size_t _MaxCountInBytes
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl wcstombs_s(size_t* _PtNumOfCharConverted, char (&_Dest)[_Size], wchar_t const* _Source, size_t _MaxCount) throw() { return wcstombs_s(_PtNumOfCharConverted, _Dest, _Size, _Source, _MaxCount); } }







__declspec(deprecated("This function or variable may be unsafe. Consider using " "wcstombs_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __declspec(dllimport) size_t __cdecl wcstombs( char *_Dest, wchar_t const* _Source, size_t _MaxCount);







__declspec(dllimport) errno_t __cdecl _wcstombs_s_l(
                                                                       size_t* _PtNumOfCharConverted,
                                                                       char* _Dst,
                                                                       size_t _DstSizeInBytes,
                                                                       wchar_t const* _Src,
                                                                       size_t _MaxCountInBytes,
                                                                       _locale_t _Locale
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcstombs_s_l(size_t* _PtNumOfCharConverted, char (&_Dest)[_Size], wchar_t const* _Source, size_t _MaxCount, _locale_t _Locale) throw() { return _wcstombs_s_l(_PtNumOfCharConverted, _Dest, _Size, _Source, _MaxCount, _Locale); } }
# 1029 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stdlib.h" 3
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcstombs_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __declspec(dllimport) size_t __cdecl _wcstombs_l( char *_Dest, wchar_t const* _Source, size_t _MaxCount, _locale_t _Locale);
# 1059 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stdlib.h" 3
__declspec(dllimport) __declspec(allocator) char* __cdecl _fullpath(
                                     char* _Buffer,
                                     char const* _Path,
                                     size_t _BufferCount
    );




__declspec(dllimport) errno_t __cdecl _makepath_s(
                                 char* _Buffer,
                                 size_t _BufferCount,
                                 char const* _Drive,
                                 char const* _Dir,
                                 char const* _Filename,
                                 char const* _Ext
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _makepath_s(char (&_Buffer)[_Size], char const* _Drive, char const* _Dir, char const* _Filename, char const* _Ext) throw() { return _makepath_s(_Buffer, _Size, _Drive, _Dir, _Filename, _Ext); } }
# 1086 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stdlib.h" 3
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_makepath_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __declspec(dllimport) void __cdecl _makepath( char *_Buffer, char const* _Drive, char const* _Dir, char const* _Filename, char const* _Ext);
# 1095 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stdlib.h" 3
__declspec(deprecated("This function or variable may be unsafe. Consider using " "_splitpath_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
__declspec(dllimport) void __cdecl _splitpath(
                             char const* _FullPath,
                             char* _Drive,
                             char* _Dir,
                             char* _Filename,
                             char* _Ext
    );


__declspec(dllimport) errno_t __cdecl _splitpath_s(
                                       char const* _FullPath,
                                       char* _Drive,
                                       size_t _DriveCount,
                                       char* _Dir,
                                       size_t _DirCount,
                                       char* _Filename,
                                       size_t _FilenameCount,
                                       char* _Ext,
                                       size_t _ExtCount
    );

extern "C++" { template <size_t _DriveSize, size_t _DirSize, size_t _NameSize, size_t _ExtSize> inline errno_t __cdecl _splitpath_s( char const* _Dest, char (&_Drive)[_DriveSize], char (&_Dir)[_DirSize], char (&_Name)[_NameSize], char (&_Ext)[_ExtSize] ) throw() { return _splitpath_s(_Dest, _Drive, _DriveSize, _Dir, _DirSize, _Name, _NameSize, _Ext, _ExtSize); } }
# 1132 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stdlib.h" 3
    __declspec(dllimport) errno_t __cdecl getenv_s(
                                         size_t* _RequiredCount,
                                         char* _Buffer,
                                         rsize_t _BufferCount,
                                         char const* _VarName
        );






    __declspec(dllimport) int* __cdecl __p___argc (void);
    __declspec(dllimport) char*** __cdecl __p___argv (void);
    __declspec(dllimport) wchar_t*** __cdecl __p___wargv(void);
# 1158 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stdlib.h" 3
    __declspec(dllimport) char*** __cdecl __p__environ (void);
    __declspec(dllimport) wchar_t*** __cdecl __p__wenviron(void);
# 1182 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stdlib.h" 3
                   __declspec(deprecated("This function or variable may be unsafe. Consider using " "_dupenv_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    __declspec(dllimport) char* __cdecl getenv(
               char const* _VarName
        );

    extern "C++" { template <size_t _Size> inline errno_t __cdecl getenv_s(size_t* _RequiredCount, char (&_Buffer)[_Size], char const* _VarName) throw() { return getenv_s(_RequiredCount, _Buffer, _Size, _VarName); } }
# 1200 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stdlib.h" 3
    __declspec(dllimport) errno_t __cdecl _dupenv_s(
                                                                                    char** _Buffer,
                                                                                    size_t* _BufferCount,
                                                                                    char const* _VarName
        );





    __declspec(dllimport) int __cdecl system(
                   char const* _Command
        );



#pragma warning(push)
#pragma warning(disable: 6540)


 __declspec(dllimport) int __cdecl _putenv(
               char const* _EnvString
        );


    __declspec(dllimport) errno_t __cdecl _putenv_s(
               char const* _Name,
               char const* _Value
        );

#pragma warning(pop)

 __declspec(dllimport) errno_t __cdecl _searchenv_s(
                                     char const* _Filename,
                                     char const* _VarName,
                                     char* _Buffer,
                                     size_t _BufferCount
        );

    extern "C++" { template <size_t _Size> inline errno_t __cdecl _searchenv_s(char const* _Filename, char const* _VarName, char (&_Buffer)[_Size]) throw() { return _searchenv_s(_Filename, _VarName, _Buffer, _Size); } }






    __declspec(deprecated("This function or variable may be unsafe. Consider using " "_searchenv_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __declspec(dllimport) void __cdecl _searchenv(char const* _Filename, char const* _VarName, char *_Buffer);







    __declspec(deprecated("This function or variable has been superceded by newer library " "or operating system functionality. Consider using " "SetErrorMode" " " "instead. See online help for details."))
    __declspec(dllimport) void __cdecl _seterrormode(
             int _Mode
        );

    __declspec(deprecated("This function or variable has been superceded by newer library " "or operating system functionality. Consider using " "Beep" " " "instead. See online help for details."))
    __declspec(dllimport) void __cdecl _beep(
             unsigned _Frequency,
             unsigned _Duration
        );

    __declspec(deprecated("This function or variable has been superceded by newer library " "or operating system functionality. Consider using " "Sleep" " " "instead. See online help for details."))
    __declspec(dllimport) void __cdecl _sleep(
             unsigned long _Duration
        );
# 1289 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stdlib.h" 3
#pragma warning(push)
#pragma warning(disable: 4141)

 __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_ecvt" ". See online help for details.")) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_ecvt_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    __declspec(dllimport) char* __cdecl ecvt(
              double _Value,
              int _DigitCount,
              int* _PtDec,
              int* _PtSign
        );

                   __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_fcvt" ". See online help for details.")) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_fcvt_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    __declspec(dllimport) char* __cdecl fcvt(
              double _Value,
              int _FractionalDigitCount,
              int* _PtDec,
              int* _PtSign
        );

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_gcvt" ". See online help for details.")) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_fcvt_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    __declspec(dllimport) char* __cdecl gcvt(
                               double _Value,
                               int _DigitCount,
                               char* _DstBuf
        );

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_itoa" ". See online help for details.")) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_itoa_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    __declspec(dllimport) char* __cdecl itoa(
                               int _Value,
                               char* _Buffer,
                               int _Radix
        );

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_ltoa" ". See online help for details.")) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_ltoa_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    __declspec(dllimport) char* __cdecl ltoa(
                               long _Value,
                               char* _Buffer,
                               int _Radix
        );


    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_swab" ". See online help for details."))
    __declspec(dllimport) void __cdecl swab(
                                        char* _Buf1,
                                        char* _Buf2,
                                        int _SizeInBytes
        );

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_ultoa" ". See online help for details.")) __declspec(deprecated("This function or variable may be unsafe. Consider using " "_ultoa_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    __declspec(dllimport) char* __cdecl ultoa(
                               unsigned long _Value,
                               char* _Buffer,
                               int _Radix
        );





                       __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_putenv" ". See online help for details."))
        __declspec(dllimport) int __cdecl putenv(
                   char const* _EnvString
            );



#pragma warning(pop)

 _onexit_t __cdecl onexit( _onexit_t _Func);





}
# 1363 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\stdlib.h" 3
#pragma pack(pop)
# 13 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\cstdlib" 2 3




namespace std {
using :: size_t; using :: div_t; using :: ldiv_t;
using :: abort; using :: abs; using :: atexit;
using :: atof; using :: atoi; using :: atol;
using :: bsearch; using :: calloc; using :: div;
using :: exit; using :: free;
using :: labs; using :: ldiv; using :: malloc;
using :: mblen; using :: mbstowcs; using :: mbtowc;
using :: qsort; using :: rand; using :: realloc;
using :: srand; using :: strtod; using :: strtol;
using :: strtoul;
using :: wcstombs; using :: wctomb;

using :: lldiv_t;


using :: getenv;
using :: system;


using :: atoll; using :: llabs; using :: lldiv;
using :: strtof; using :: strtold;
using :: strtoll; using :: strtoull;

using :: _Exit; using :: at_quick_exit; using :: quick_exit;
}
# 7 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\xstddef" 2 3


# 1 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\initializer_list" 1 3







#pragma pack(push,8)
#pragma warning(push, 3)



namespace std {

template<class _Elem>
 class initializer_list
 {
public:
 typedef _Elem value_type;
 typedef const _Elem& reference;
 typedef const _Elem& const_reference;
 typedef size_t size_type;

 typedef const _Elem* iterator;
 typedef const _Elem* const_iterator;

 constexpr initializer_list() noexcept
  : _First(0), _Last(0)
  {
  }

 constexpr initializer_list(const _Elem *_First_arg,
  const _Elem *_Last_arg) noexcept
  : _First(_First_arg), _Last(_Last_arg)
  {
  }

 constexpr const _Elem *begin() const noexcept
  {
  return (_First);
  }

 constexpr const _Elem *end() const noexcept
  {
  return (_Last);
  }

 constexpr size_t size() const noexcept
  {
  return ((size_t)(_Last - _First));
  }

private:
 const _Elem *_First;
 const _Elem *_Last;
 };


template<class _Elem> inline
 constexpr const _Elem *begin(initializer_list<_Elem> _Ilist) noexcept
 {
 return (_Ilist.begin());
 }


template<class _Elem> inline
 constexpr const _Elem *end(initializer_list<_Elem> _Ilist) noexcept
 {
 return (_Ilist.end());
 }
}

#pragma warning(pop)
#pragma pack(pop)
# 9 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\xstddef" 2 3


# 1 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\xtr1common" 1 3







#pragma pack(push,8)
#pragma warning(push, 3)



namespace std {

struct _Nil
 {
 };


template<class _Ty,
 _Ty _Val>
 struct integral_constant
 {
 static constexpr _Ty value = _Val;

 typedef _Ty value_type;
 typedef integral_constant<_Ty, _Val> type;

 constexpr operator value_type() const noexcept
  {
  return (value);
  }

 constexpr value_type operator()() const noexcept
  {
  return (value);
  }
 };

typedef integral_constant<bool, true> true_type;
typedef integral_constant<bool, false> false_type;


template<bool _Val>
 using bool_constant = integral_constant<bool, _Val>;


template<bool _Val>
 struct _Cat_base
  : integral_constant<bool, _Val>
 {
 };


template<bool _Test,
 class _Ty = void>
 struct enable_if
 {
 };

template<class _Ty>
 struct enable_if<true, _Ty>
 {
 typedef _Ty type;
 };


template<bool _Test,
 class _Ty1,
 class _Ty2>
 struct conditional
 {
 typedef _Ty2 type;
 };

template<class _Ty1,
 class _Ty2>
 struct conditional<true, _Ty1, _Ty2>
 {
 typedef _Ty1 type;
 };


template<class _Ty1,
 class _Ty2>
 struct is_same
  : false_type
 {
 };

template<class _Ty1>
 struct is_same<_Ty1, _Ty1>
  : true_type
 {
 };


template<class _Ty,
 class _Uty>
 constexpr bool is_same_v = is_same<_Ty, _Uty>::value;



template<class _Ty>
 struct remove_const
 {
 typedef _Ty type;
 };

template<class _Ty>
 struct remove_const<const _Ty>
 {
 typedef _Ty type;
 };


template<class _Ty>
 struct remove_volatile
 {
 typedef _Ty type;
 };

template<class _Ty>
 struct remove_volatile<volatile _Ty>
 {
 typedef _Ty type;
 };


template<class _Ty>
 struct remove_cv
 {
 typedef typename remove_const<typename remove_volatile<_Ty>::type>::type
  type;
 };


template<class _Ty>
 struct _Is_integral
  : false_type
 {
 };

template<>
 struct _Is_integral<bool>
  : true_type
 {
 };

template<>
 struct _Is_integral<char>
  : true_type
 {
 };

template<>
 struct _Is_integral<unsigned char>
  : true_type
 {
 };

template<>
 struct _Is_integral<signed char>
  : true_type
 {
 };


template<>
 struct _Is_integral<wchar_t>
  : true_type
 {
 };


template<>
 struct _Is_integral<unsigned short>
  : true_type
 {
 };

template<>
 struct _Is_integral<signed short>
  : true_type
 {
 };

template<>
 struct _Is_integral<unsigned int>
  : true_type
 {
 };

template<>
 struct _Is_integral<signed int>
  : true_type
 {
 };

template<>
 struct _Is_integral<unsigned long>
  : true_type
 {
 };

template<>
 struct _Is_integral<signed long>
  : true_type
 {
 };

template<>
 struct _Is_integral<char16_t>
  : true_type
 {
 };

template<>
 struct _Is_integral<char32_t>
  : true_type
 {
 };

template<>
 struct _Is_integral<long long>
  : true_type
 {
 };

template<>
 struct _Is_integral<unsigned long long>
  : true_type
 {
 };


template<class _Ty>
 struct is_integral
  : _Is_integral<typename remove_cv<_Ty>::type>
 {
 };


template<class _Ty>
 constexpr bool is_integral_v = is_integral<_Ty>::value;



template<class _Ty>
 struct _Is_floating_point
  : false_type
 {
 };

template<>
 struct _Is_floating_point<float>
  : true_type
 {
 };

template<>
 struct _Is_floating_point<double>
  : true_type
 {
 };

template<>
 struct _Is_floating_point<long double>
  : true_type
 {
 };


template<class _Ty>
 struct is_floating_point
  : _Is_floating_point<typename remove_cv<_Ty>::type>
 {
 };


template<class _Ty>
 constexpr bool is_floating_point_v = is_floating_point<_Ty>::value;



template<class _Ty>
 struct is_arithmetic
  : _Cat_base<is_integral<_Ty>::value
   || is_floating_point<_Ty>::value>
 {
 };


template<class _Ty>
 constexpr bool is_arithmetic_v = is_arithmetic<_Ty>::value;



template<class _Ty>
 struct remove_reference
 {
 typedef _Ty type;
 };

template<class _Ty>
 struct remove_reference<_Ty&>
 {
 typedef _Ty type;
 };

template<class _Ty>
 struct remove_reference<_Ty&&>
 {
 typedef _Ty type;
 };


struct _Wrap_int
 {
 _Wrap_int(int)
  {
  }
 };

template<class _Ty>
 struct _Identity
 {
 typedef _Ty type;
 };
# 344 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\xtr1common" 3
}

#pragma warning(pop)
#pragma pack(pop)
# 11 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\xstddef" 2 3


#pragma pack(push,8)
#pragma warning(push, 3)
# 24 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\xstddef" 3
namespace std {
# 128 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\xstddef" 3
template<bool,
 class _Ty1,
 class _Ty2>
 struct _If
 {
 typedef _Ty2 type;
 };

template<class _Ty1,
 class _Ty2>
 struct _If<true, _Ty1, _Ty2>
 {
 typedef _Ty1 type;
 };

template<class _Ty>
 struct _Always_false
 {
 static constexpr bool value = false;
 };





template<class _Arg,
 class _Result>
 struct unary_function
 {
 typedef _Arg argument_type;
 typedef _Result result_type;
 };


template<class _Arg1,
 class _Arg2,
 class _Result>
 struct binary_function
 {
 typedef _Arg1 first_argument_type;
 typedef _Arg2 second_argument_type;
 typedef _Result result_type;
 };



template<class _Ty = void>
 struct plus
 {
 typedef _Ty first_argument_type;
 typedef _Ty second_argument_type;
 typedef _Ty result_type;

 constexpr _Ty operator()(const _Ty& _Left, const _Ty& _Right) const
  {
  return (_Left + _Right);
  }
 };


template<class _Ty = void>
 struct minus
 {
 typedef _Ty first_argument_type;
 typedef _Ty second_argument_type;
 typedef _Ty result_type;

 constexpr _Ty operator()(const _Ty& _Left, const _Ty& _Right) const
  {
  return (_Left - _Right);
  }
 };


template<class _Ty = void>
 struct multiplies
 {
 typedef _Ty first_argument_type;
 typedef _Ty second_argument_type;
 typedef _Ty result_type;

 constexpr _Ty operator()(const _Ty& _Left, const _Ty& _Right) const
  {
  return (_Left * _Right);
  }
 };


template<class _Ty = void>
 struct equal_to
 {
 typedef _Ty first_argument_type;
 typedef _Ty second_argument_type;
 typedef bool result_type;

 constexpr bool operator()(const _Ty& _Left, const _Ty& _Right) const
  {
  return (_Left == _Right);
  }
 };


template<class _Ty = void>
 struct less
 {
 typedef _Ty first_argument_type;
 typedef _Ty second_argument_type;
 typedef bool result_type;

 constexpr bool operator()(const _Ty& _Left, const _Ty& _Right) const
  {
  return (_Left < _Right);
  }
 };


template<>
 struct plus<void>
 {
 typedef int is_transparent;

 template<class _Ty1,
  class _Ty2>
  constexpr auto operator()(_Ty1&& _Left, _Ty2&& _Right) const
  -> decltype(static_cast<_Ty1&&>(_Left)
   + static_cast<_Ty2&&>(_Right))
  {
  return (static_cast<_Ty1&&>(_Left)
   + static_cast<_Ty2&&>(_Right));
  }
 };


template<>
 struct minus<void>
 {
 typedef int is_transparent;

 template<class _Ty1,
  class _Ty2>
  constexpr auto operator()(_Ty1&& _Left, _Ty2&& _Right) const
  -> decltype(static_cast<_Ty1&&>(_Left)
   - static_cast<_Ty2&&>(_Right))
  {
  return (static_cast<_Ty1&&>(_Left)
   - static_cast<_Ty2&&>(_Right));
  }
 };


template<>
 struct multiplies<void>
 {
 typedef int is_transparent;

 template<class _Ty1,
  class _Ty2>
  constexpr auto operator()(_Ty1&& _Left, _Ty2&& _Right) const
  -> decltype(static_cast<_Ty1&&>(_Left)
   * static_cast<_Ty2&&>(_Right))
  {
  return (static_cast<_Ty1&&>(_Left)
   * static_cast<_Ty2&&>(_Right));
  }
 };


template<>
 struct equal_to<void>
 {
 typedef int is_transparent;

 template<class _Ty1,
  class _Ty2>
  constexpr auto operator()(_Ty1&& _Left, _Ty2&& _Right) const
  -> decltype(static_cast<_Ty1&&>(_Left)
   == static_cast<_Ty2&&>(_Right))
  {
  return (static_cast<_Ty1&&>(_Left)
   == static_cast<_Ty2&&>(_Right));
  }
 };


template<>
 struct less<void>
 {
 typedef int is_transparent;

 template<class _Ty1,
  class _Ty2>
  constexpr auto operator()(_Ty1&& _Left, _Ty2&& _Right) const
  -> decltype(static_cast<_Ty1&&>(_Left)
   < static_cast<_Ty2&&>(_Right))
  {
  return (static_cast<_Ty1&&>(_Left)
   < static_cast<_Ty2&&>(_Right));
  }
 };


}



namespace std {

inline size_t _Hash_seq(const unsigned char *_First, size_t _Count)
 {






 static_assert(sizeof(size_t) == 4, "This code is for 32-bit size_t.");
 const size_t _FNV_offset_basis = 2166136261U;
 const size_t _FNV_prime = 16777619U;


 size_t _Val = _FNV_offset_basis;
 for (size_t _Next = 0; _Next < _Count; ++_Next)
  {
  _Val ^= (size_t)_First[_Next];
  _Val *= _FNV_prime;
  }
 return (_Val);
 }


template<class _Kty>
 struct _Bitwise_hash
 {
 typedef _Kty argument_type;
 typedef size_t result_type;

 size_t operator()(const _Kty& _Keyval) const
  {
  return (_Hash_seq((const unsigned char *)&_Keyval, sizeof (_Kty)));
  }
 };


template<class _Kty>
 struct hash
  : public _Bitwise_hash<_Kty>
 {
 static constexpr bool _Value = __is_enum(_Kty);
 static_assert(_Value,
  "The C++ Standard doesn't provide a hash for this type.");
 };
template<>
 struct hash<bool>
  : public _Bitwise_hash<bool>
 {
 };

template<>
 struct hash<char>
  : public _Bitwise_hash<char>
 {
 };

template<>
 struct hash<signed char>
  : public _Bitwise_hash<signed char>
 {
 };

template<>
 struct hash<unsigned char>
  : public _Bitwise_hash<unsigned char>
 {
 };

template<>
 struct hash<char16_t>
  : public _Bitwise_hash<char16_t>
 {
 };

template<>
 struct hash<char32_t>
  : public _Bitwise_hash<char32_t>
 {
 };


template<>
 struct hash<wchar_t>
  : public _Bitwise_hash<wchar_t>
 {
 };


template<>
 struct hash<short>
  : public _Bitwise_hash<short>
 {
 };

template<>
 struct hash<unsigned short>
  : public _Bitwise_hash<unsigned short>
 {
 };

template<>
 struct hash<int>
  : public _Bitwise_hash<int>
 {
 };

template<>
 struct hash<unsigned int>
  : public _Bitwise_hash<unsigned int>
 {
 };

template<>
 struct hash<long>
  : public _Bitwise_hash<long>
 {
 };

template<>
 struct hash<unsigned long>
  : public _Bitwise_hash<unsigned long>
 {
 };

template<>
 struct hash<long long>
  : public _Bitwise_hash<long long>
 {
 };

template<>
 struct hash<unsigned long long>
  : public _Bitwise_hash<unsigned long long>
 {
 };

template<>
 struct hash<float>
  : public _Bitwise_hash<float>
 {
 typedef float _Kty;
 typedef _Bitwise_hash<_Kty> _Mybase;

 size_t operator()(const _Kty& _Keyval) const
  {
  return (_Mybase::operator()(
   _Keyval == 0 ? 0 : _Keyval));
  }
 };

template<>
 struct hash<double>
  : public _Bitwise_hash<double>
 {
 typedef double _Kty;
 typedef _Bitwise_hash<_Kty> _Mybase;

 size_t operator()(const _Kty& _Keyval) const
  {
  return (_Mybase::operator()(
   _Keyval == 0 ? 0 : _Keyval));
  }
 };

template<>
 struct hash<long double>
  : public _Bitwise_hash<long double>
 {
 typedef long double _Kty;
 typedef _Bitwise_hash<_Kty> _Mybase;

 size_t operator()(const _Kty& _Keyval) const
  {
  return (_Mybase::operator()(
   _Keyval == 0 ? 0 : _Keyval));
  }
 };

template<class _Ty>
 struct hash<_Ty *>
  : public _Bitwise_hash<_Ty *>
 {
 };
}



namespace std {
namespace tr1 {
using ::std:: hash;
}
}
# 633 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\xstddef" 3
namespace std {

template<class... _Types>
 struct _Arg_types
 {
 };

template<class _Ty1>
 struct _Arg_types<_Ty1>
 {
 typedef _Ty1 argument_type;
 };

template<class _Ty1,
 class _Ty2>
 struct _Arg_types<_Ty1, _Ty2>
 {
 typedef _Ty1 first_argument_type;
 typedef _Ty2 second_argument_type;
 };


template<class _Ty>
 struct _Is_function
 {
 typedef false_type _Bool_type;
 static constexpr bool _Weird = false;
 };
# 673 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\xstddef" 3
template<class _Ret, class... _Types> struct _Is_function<_Ret __cdecl (_Types...) > : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = false; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __fastcall (_Types...) > : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = false; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __stdcall (_Types...) > : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = false; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __vectorcall (_Types...) > : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = false; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __cdecl (_Types...) const> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __fastcall (_Types...) const> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __stdcall (_Types...) const> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __vectorcall (_Types...) const> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __cdecl (_Types...) volatile> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __fastcall (_Types...) volatile> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __stdcall (_Types...) volatile> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __vectorcall (_Types...) volatile> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __cdecl (_Types...) const volatile> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __fastcall (_Types...) const volatile> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __stdcall (_Types...) const volatile> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __vectorcall (_Types...) const volatile> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __cdecl (_Types...) &> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __fastcall (_Types...) &> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __stdcall (_Types...) &> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __vectorcall (_Types...) &> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __cdecl (_Types...) const &> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __fastcall (_Types...) const &> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __stdcall (_Types...) const &> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __vectorcall (_Types...) const &> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __cdecl (_Types...) volatile &> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __fastcall (_Types...) volatile &> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __stdcall (_Types...) volatile &> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __vectorcall (_Types...) volatile &> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __cdecl (_Types...) const volatile &> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __fastcall (_Types...) const volatile &> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __stdcall (_Types...) const volatile &> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __vectorcall (_Types...) const volatile &> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __cdecl (_Types...) &&> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __fastcall (_Types...) &&> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __stdcall (_Types...) &&> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __vectorcall (_Types...) &&> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __cdecl (_Types...) const &&> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __fastcall (_Types...) const &&> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __stdcall (_Types...) const &&> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __vectorcall (_Types...) const &&> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __cdecl (_Types...) volatile &&> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __fastcall (_Types...) volatile &&> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __stdcall (_Types...) volatile &&> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __vectorcall (_Types...) volatile &&> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __cdecl (_Types...) const volatile &&> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __fastcall (_Types...) const volatile &&> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __stdcall (_Types...) const volatile &&> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret __vectorcall (_Types...) const volatile &&> : _Arg_types<_Types...> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; };
# 686 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\xstddef" 3
template<class _Ret, class... _Types> struct _Is_function<_Ret (_Types..., ...) > { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = false; }; template<class _Ret, class... _Types> struct _Is_function<_Ret (_Types..., ...) const> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret (_Types..., ...) volatile> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret (_Types..., ...) const volatile> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret (_Types..., ...) &> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret (_Types..., ...) const &> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret (_Types..., ...) volatile &> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret (_Types..., ...) const volatile &> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret (_Types..., ...) &&> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret (_Types..., ...) const &&> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret (_Types..., ...) volatile &&> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; }; template<class _Ret, class... _Types> struct _Is_function<_Ret (_Types..., ...) const volatile &&> { typedef true_type _Bool_type; typedef _Ret result_type; static constexpr bool _Weird = true; };


template<class _Ty>
 struct is_function
  : _Is_function<_Ty>::_Bool_type
 {
 };


template<class _Ty>
 constexpr bool is_function_v = is_function<_Ty>::value;
# 722 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\xstddef" 3
template<class _Ty> inline
 constexpr _Ty *addressof(_Ty& _Val) noexcept
 {
 return (__builtin_addressof(_Val));
 }




template<class _Ptrty> inline
 auto _Unfancy(_Ptrty _Ptr)
 {
 return (::std:: addressof(*_Ptr));
 }

template<class _Ty> inline
 _Ty * _Unfancy(_Ty * _Ptr)
 {
 return (_Ptr);
 }

}

#pragma warning(pop)
#pragma pack(pop)
# 6 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\type_traits" 2 3


#pragma pack(push,8)
#pragma warning(push, 3)


#pragma warning(disable: 4180 4296)

namespace std {
template<class _Ty>
 struct _Is_memfunptr
 {
 typedef false_type _Bool_type;
 };
# 33 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\type_traits" 3
template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__cdecl _Arg0::*)(_Types...) > : _Arg_types< _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__fastcall _Arg0::*)(_Types...) > : _Arg_types< _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__stdcall _Arg0::*)(_Types...) > : _Arg_types< _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__thiscall _Arg0::*)(_Types...) > : _Arg_types< _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__vectorcall _Arg0::*)(_Types...) > : _Arg_types< _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__cdecl _Arg0::*)(_Types...) const > : _Arg_types<const _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__fastcall _Arg0::*)(_Types...) const > : _Arg_types<const _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__stdcall _Arg0::*)(_Types...) const > : _Arg_types<const _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__thiscall _Arg0::*)(_Types...) const > : _Arg_types<const _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__vectorcall _Arg0::*)(_Types...) const > : _Arg_types<const _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__cdecl _Arg0::*)(_Types...) volatile > : _Arg_types<volatile _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__fastcall _Arg0::*)(_Types...) volatile > : _Arg_types<volatile _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__stdcall _Arg0::*)(_Types...) volatile > : _Arg_types<volatile _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__thiscall _Arg0::*)(_Types...) volatile > : _Arg_types<volatile _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__vectorcall _Arg0::*)(_Types...) volatile > : _Arg_types<volatile _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__cdecl _Arg0::*)(_Types...) const volatile > : _Arg_types<const volatile _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__fastcall _Arg0::*)(_Types...) const volatile > : _Arg_types<const volatile _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__stdcall _Arg0::*)(_Types...) const volatile > : _Arg_types<const volatile _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__thiscall _Arg0::*)(_Types...) const volatile > : _Arg_types<const volatile _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__vectorcall _Arg0::*)(_Types...) const volatile > : _Arg_types<const volatile _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__cdecl _Arg0::*)(_Types...) &> : _Arg_types< _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__fastcall _Arg0::*)(_Types...) &> : _Arg_types< _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__stdcall _Arg0::*)(_Types...) &> : _Arg_types< _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__thiscall _Arg0::*)(_Types...) &> : _Arg_types< _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__vectorcall _Arg0::*)(_Types...) &> : _Arg_types< _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__cdecl _Arg0::*)(_Types...) const &> : _Arg_types<const _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__fastcall _Arg0::*)(_Types...) const &> : _Arg_types<const _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__stdcall _Arg0::*)(_Types...) const &> : _Arg_types<const _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__thiscall _Arg0::*)(_Types...) const &> : _Arg_types<const _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__vectorcall _Arg0::*)(_Types...) const &> : _Arg_types<const _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__cdecl _Arg0::*)(_Types...) volatile &> : _Arg_types<volatile _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__fastcall _Arg0::*)(_Types...) volatile &> : _Arg_types<volatile _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__stdcall _Arg0::*)(_Types...) volatile &> : _Arg_types<volatile _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__thiscall _Arg0::*)(_Types...) volatile &> : _Arg_types<volatile _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__vectorcall _Arg0::*)(_Types...) volatile &> : _Arg_types<volatile _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__cdecl _Arg0::*)(_Types...) const volatile &> : _Arg_types<const volatile _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__fastcall _Arg0::*)(_Types...) const volatile &> : _Arg_types<const volatile _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__stdcall _Arg0::*)(_Types...) const volatile &> : _Arg_types<const volatile _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__thiscall _Arg0::*)(_Types...) const volatile &> : _Arg_types<const volatile _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__vectorcall _Arg0::*)(_Types...) const volatile &> : _Arg_types<const volatile _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__cdecl _Arg0::*)(_Types...) &&> : _Arg_types< _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__fastcall _Arg0::*)(_Types...) &&> : _Arg_types< _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__stdcall _Arg0::*)(_Types...) &&> : _Arg_types< _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__thiscall _Arg0::*)(_Types...) &&> : _Arg_types< _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__vectorcall _Arg0::*)(_Types...) &&> : _Arg_types< _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__cdecl _Arg0::*)(_Types...) const &&> : _Arg_types<const _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__fastcall _Arg0::*)(_Types...) const &&> : _Arg_types<const _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__stdcall _Arg0::*)(_Types...) const &&> : _Arg_types<const _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__thiscall _Arg0::*)(_Types...) const &&> : _Arg_types<const _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__vectorcall _Arg0::*)(_Types...) const &&> : _Arg_types<const _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__cdecl _Arg0::*)(_Types...) volatile &&> : _Arg_types<volatile _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__fastcall _Arg0::*)(_Types...) volatile &&> : _Arg_types<volatile _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__stdcall _Arg0::*)(_Types...) volatile &&> : _Arg_types<volatile _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__thiscall _Arg0::*)(_Types...) volatile &&> : _Arg_types<volatile _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__vectorcall _Arg0::*)(_Types...) volatile &&> : _Arg_types<volatile _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__cdecl _Arg0::*)(_Types...) const volatile &&> : _Arg_types<const volatile _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__fastcall _Arg0::*)(_Types...) const volatile &&> : _Arg_types<const volatile _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__stdcall _Arg0::*)(_Types...) const volatile &&> : _Arg_types<const volatile _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__thiscall _Arg0::*)(_Types...) const volatile &&> : _Arg_types<const volatile _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (__vectorcall _Arg0::*)(_Types...) const volatile &&> : _Arg_types<const volatile _Arg0 *, _Types...> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; };
# 47 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\type_traits" 3
template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (_Arg0::*)(_Types..., ...) > { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (_Arg0::*)(_Types..., ...) const> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (_Arg0::*)(_Types..., ...) volatile> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (_Arg0::*)(_Types..., ...) const volatile> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (_Arg0::*)(_Types..., ...) &> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (_Arg0::*)(_Types..., ...) const &> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (_Arg0::*)(_Types..., ...) volatile &> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (_Arg0::*)(_Types..., ...) const volatile &> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (_Arg0::*)(_Types..., ...) &&> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (_Arg0::*)(_Types..., ...) const &&> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (_Arg0::*)(_Types..., ...) volatile &&> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; }; template<class _Ret, class _Arg0, class... _Types> struct _Is_memfunptr<_Ret (_Arg0::*)(_Types..., ...) const volatile &&> { typedef true_type _Bool_type; typedef _Ret result_type; typedef _Arg0 _Class_type; };



template<class _Ty>
 struct is_void
  : false_type
 {
 };
# 64 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\type_traits" 3
template<> struct is_void< void> : true_type { }; template<> struct is_void<const void> : true_type { }; template<> struct is_void<volatile void> : true_type { }; template<> struct is_void<const volatile void> : true_type { };




template<class _Ty>
 struct add_const
 {
 typedef const _Ty type;
 };


template<class _Ty>
 struct add_volatile
 {
 typedef volatile _Ty type;
 };


template<class _Ty>
 struct add_cv
 {
 typedef const volatile _Ty type;
 };


template<class _Ty,
 bool = _Is_function<_Ty>::_Weird || is_void<_Ty>::value>
 struct _Add_reference
 {
 typedef _Ty _Lvalue;
 typedef _Ty _Rvalue;
 };

template<class _Ty>
 struct _Add_reference<_Ty, false>
 {
 typedef _Ty& _Lvalue;
 typedef _Ty&& _Rvalue;
 };


template<class _Ty>
 struct add_lvalue_reference
 {
 typedef typename _Add_reference<_Ty>::_Lvalue type;
 };


template<class _Ty>
 struct add_rvalue_reference
 {
 typedef typename _Add_reference<_Ty>::_Rvalue type;
 };


template<class _Ty>
 typename add_rvalue_reference<_Ty>::type
  declval() noexcept;


template<class _Ty>
 struct remove_extent
 {
 typedef _Ty type;
 };

template<class _Ty, size_t _Ix>
 struct remove_extent<_Ty[_Ix]>
 {
 typedef _Ty type;
 };

template<class _Ty>
 struct remove_extent<_Ty[]>
 {
 typedef _Ty type;
 };


template<class _Ty>
 struct remove_all_extents
 {
 typedef _Ty type;
 };

template<class _Ty, size_t _Ix>
 struct remove_all_extents<_Ty[_Ix]>
 {
 typedef typename remove_all_extents<_Ty>::type type;
 };

template<class _Ty>
 struct remove_all_extents<_Ty[]>
 {
 typedef typename remove_all_extents<_Ty>::type type;
 };


template<class _Ty>
 struct remove_pointer
 {
 typedef _Ty type;
 };
# 176 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\type_traits" 3
template<class _Ty> struct remove_pointer<_Ty *> { typedef _Ty type; }; template<class _Ty> struct remove_pointer<_Ty *const> { typedef _Ty type; }; template<class _Ty> struct remove_pointer<_Ty *volatile> { typedef _Ty type; }; template<class _Ty> struct remove_pointer<_Ty *const volatile> { typedef _Ty type; };



template<class _Ty,
 bool = _Is_function<_Ty>::_Weird>
 struct _Add_pointer
 {
 typedef _Ty type;
 };

template<class _Ty>
 struct _Add_pointer<_Ty, false>
 {
 typedef typename remove_reference<_Ty>::type *type;
 };

template<class _Ty>
 struct add_pointer
 {
 typedef typename _Add_pointer<_Ty>::type type;
 };



template<class _Ty>
 struct is_array
  : false_type
 {
 };

template<class _Ty, size_t _Nx>
 struct is_array<_Ty[_Nx]>
  : true_type
 {
 };

template<class _Ty>
 struct is_array<_Ty[]>
  : true_type
 {
 };


template<class _Ty>
 struct is_lvalue_reference
  : false_type
 {
 };

template<class _Ty>
 struct is_lvalue_reference<_Ty&>
  : true_type
 {
 };


template<class _Ty>
 struct is_rvalue_reference
  : false_type
 {
 };

template<class _Ty>
 struct is_rvalue_reference<_Ty&&>
  : true_type
 {
 };


template<class _Ty>
 struct is_reference
  : _Cat_base<is_lvalue_reference<_Ty>::value
  || is_rvalue_reference<_Ty>::value>
 {
 };



template<class _Ty,
 bool _Pmf = _Is_memfunptr<_Ty>::_Bool_type::value>
 struct _Is_member_object_pointer
  : false_type
 {
 };

template<class _Ty1,
 class _Ty2>
 struct _Is_member_object_pointer<_Ty1 _Ty2::*, false>
  : true_type
 {
 typedef _Ty2 _Class_type;
 };

template<class _Ty>
 struct is_member_object_pointer
  : _Is_member_object_pointer<typename remove_cv<_Ty>::type>::type
 {
 };


template<class _Ty>
 struct is_member_function_pointer
  : _Is_memfunptr<typename remove_cv<_Ty>::type>::_Bool_type
 {
 };


template<class _Ty>
 struct _Is_pointer
  : false_type
 {
 };

template<class _Ty>
 struct _Is_pointer<_Ty *>
  : _Cat_base<!is_member_object_pointer<_Ty *>::value
  && !is_member_function_pointer<_Ty *>::value>
 {
 };

template<class _Ty>
 struct is_pointer
  : _Is_pointer<typename remove_cv<_Ty>::type>
 {
 };



template<class _Ty>
 struct is_null_pointer
  : _Cat_base<is_same<typename remove_cv<_Ty>::type, nullptr_t>::value>
 {
 };


template<class _Ty>
 struct is_union
  : _Cat_base<__is_union(_Ty)>
 {
 };


template<class _Ty>
 struct is_class
  : _Cat_base<__is_class(_Ty)>
 {
 };


template<class _Ty>
 struct is_fundamental
  : _Cat_base<is_arithmetic<_Ty>::value
  || is_void<_Ty>::value
  || is_null_pointer<_Ty>::value>
 {
 };


template<class _Ty>
 struct is_object
  : _Cat_base<!is_function<_Ty>::value
  && !is_reference<_Ty>::value
  && !is_void<_Ty>::value>
 {
 };



template<class _From,
 class _To>
 struct is_convertible
  : _Cat_base<__is_convertible_to(_From, _To)>
 {
 };


template<class _Ty>
 struct is_enum
  : _Cat_base<__is_enum(_Ty)>
 {
 };


template<class _Ty>
 struct is_compound
  : _Cat_base<!is_fundamental<_Ty>::value>
 {
 };


template<class _Ty>
 struct is_member_pointer
  : _Cat_base<is_member_object_pointer<_Ty>::value
  || is_member_function_pointer<_Ty>::value>
 {
 };


template<class _Ty>
 struct is_scalar
  : _Cat_base<is_arithmetic<_Ty>::value
  || is_enum<_Ty>::value
  || is_pointer<_Ty>::value
  || is_member_pointer<_Ty>::value
  || is_null_pointer<_Ty>::value>
 {
 };


template<class _Ty>
 struct is_const
  : false_type
 {
 };

template<class _Ty>
 struct is_const<const _Ty>
  : true_type
 {
 };


template<class _Ty>
 struct is_volatile
  : false_type
 {
 };

template<class _Ty>
 struct is_volatile<volatile _Ty>
  : true_type
 {
 };


template<class _Ty>
 struct is_pod
  : _Cat_base<__is_pod(_Ty)>
 {
 };


template<class _Ty>
 struct is_empty
  : _Cat_base<__is_empty(_Ty)>
 {
 };


template<class _Ty>
 struct is_polymorphic
  : _Cat_base<__is_polymorphic(_Ty)>
 {
 };


template<class _Ty>
 struct is_abstract
  : _Cat_base<__is_abstract(_Ty)>
 {
 };


template<class _Ty>
 struct is_final
  : _Cat_base<__is_final(_Ty)>
 {
 };


template<class _Ty>
 struct is_standard_layout
  : _Cat_base<__is_standard_layout(_Ty)>
 {
 };


template<class _Ty>
 struct is_literal_type
  : _Cat_base<__is_literal_type(_Ty)>
 {
 };


template<class _Ty>
 struct is_trivial
  : _Cat_base<__is_trivial(_Ty)>
 {
 };


template<class _Ty>
 struct is_trivially_copyable
  : _Cat_base<__is_trivially_copyable(_Ty)>
 {
 };


template<class _Ty>
 struct has_virtual_destructor
  : _Cat_base<__has_virtual_destructor(_Ty)>
 {
 };




template<class _Ty,
 class... _Args>
 struct is_constructible
  : _Cat_base<__is_constructible(_Ty, _Args...)>
 {
 };


template<class _Ty>
 struct is_copy_constructible
  : is_constructible<
   _Ty,
   typename add_lvalue_reference<
    typename add_const<_Ty>::type
   >::type
  >::type
 {
 };


template<class _Ty>
 struct is_default_constructible
  : is_constructible<_Ty>::type
 {
 };


template<class _Ty>
 struct is_move_constructible
  : is_constructible<
   _Ty,
   typename add_rvalue_reference<_Ty>::type
  >::type
 {
 };


template<class _To,
 class _From>
 struct is_assignable
  : integral_constant<bool, __is_assignable(_To, _From)>
 {
 };


template<class _Ty>
 struct is_copy_assignable
  : is_assignable<
   typename add_lvalue_reference<_Ty>::type,
   typename add_lvalue_reference<
    typename add_const<_Ty>::type
   >::type
  >::type
 {
 };


template<class _Ty>
 struct is_move_assignable
  : is_assignable<
   typename add_lvalue_reference<_Ty>::type,
   typename add_rvalue_reference<_Ty>::type
  >::type
 {
 };


template<class _Ty>
 struct is_destructible
  : _Cat_base<__is_destructible(_Ty)>
 {
 };




template<class _Ty,
 class... _Args>
 struct is_trivially_constructible
  : _Cat_base<__is_trivially_constructible(_Ty, _Args...)>
 {
 };


template<class _Ty>
 struct is_trivially_copy_constructible
  : is_trivially_constructible<
   _Ty,
   typename add_lvalue_reference<
    typename add_const<_Ty>::type
   >::type
  >::type
 {
 };


template<class _Ty>
 struct is_trivially_default_constructible
  : is_trivially_constructible<_Ty>::type
 {
 };


template<class _Ty>
 struct is_trivially_move_constructible
  : is_trivially_constructible<
   _Ty,
   typename add_rvalue_reference<_Ty>::type
  >::type
 {
 };


template<class _To,
 class _From>
 struct is_trivially_assignable
  : _Cat_base<__is_trivially_assignable(_To, _From)>
 {
 };


template<class _Ty>
 struct is_trivially_copy_assignable
  : is_trivially_assignable<
   typename add_lvalue_reference<_Ty>::type,
   typename add_lvalue_reference<
    typename add_const<_Ty>::type
   >::type
  >::type
 {
 };


template<class _Ty>
 struct is_trivially_move_assignable
  : is_trivially_assignable<
   typename add_lvalue_reference<_Ty>::type,
   typename add_rvalue_reference<_Ty>::type
  >::type
 {
 };


template<class _Ty>
 struct is_trivially_destructible
  : _Cat_base<__has_trivial_destructor(_Ty)>
 {
 };




template<class _Ty,
 class... _Args>
 struct is_nothrow_constructible
  : _Cat_base<__is_nothrow_constructible(_Ty, _Args...)>
 {
 };


template<class _Ty>
 struct is_nothrow_copy_constructible
  : is_nothrow_constructible<
   _Ty,
   typename add_lvalue_reference<
    typename add_const<_Ty>::type
   >::type
  >::type
 {
 };


template<class _Ty>
 struct is_nothrow_default_constructible
  : is_nothrow_constructible<_Ty>::type
 {
 };


template<class _Ty>
 struct is_nothrow_move_constructible
  : is_nothrow_constructible<
   _Ty,
   typename add_rvalue_reference<_Ty>::type
  >::type
 {
 };


template<class _To,
 class _From>
 struct is_nothrow_assignable
  : _Cat_base<__is_nothrow_assignable(_To, _From)>
 {
 };


template<class _Ty>
 struct is_nothrow_copy_assignable
  : is_nothrow_assignable<
   typename add_lvalue_reference<_Ty>::type,
   typename add_lvalue_reference<
    typename add_const<_Ty>::type
   >::type
  >::type
 {
 };


template<class _Ty>
 struct is_nothrow_move_assignable
  : is_nothrow_assignable<
   typename add_lvalue_reference<_Ty>::type,
   typename add_rvalue_reference<_Ty>::type
  >::type
 {
 };


template<class _Ty>
 struct is_nothrow_destructible
  : _Cat_base<__is_nothrow_destructible(_Ty)>
 {
 };


template<class _Ty,
 bool = is_integral<_Ty>::value>
 struct _Sign_base
 {
 typedef typename remove_cv<_Ty>::type _Uty;
 typedef _Cat_base<_Uty(-1) < _Uty(0)> _Signed;
 typedef _Cat_base<_Uty(0) < _Uty(-1)> _Unsigned;
 };

template<class _Ty>
 struct _Sign_base<_Ty, false>
 {

 typedef is_floating_point<_Ty> _Signed;
 typedef false_type _Unsigned;
 };

template<class _Ty>
 struct is_signed
  : _Sign_base<_Ty>::_Signed
 {
 };


template<class _Ty>
 struct is_unsigned
  : _Sign_base<_Ty>::_Unsigned
 {
 };


template<class _Ty>
 struct _Change_sign
 {
 static_assert(
  ((is_integral<_Ty>::value || is_enum<_Ty>::value)
   && !is_same<_Ty, bool>::value),
  "make_signed<T>/make_unsigned<T> require that T shall be a (possibly "
  "cv-qualified) integral type or enumeration but not a bool type.");

 typedef
  typename _If<is_same<_Ty, signed char>::value
   || is_same<_Ty, unsigned char >::value, signed char,
  typename _If<is_same<_Ty, short >::value
   || is_same<_Ty, unsigned short >::value, short,
  typename _If<is_same<_Ty, int >::value
   || is_same<_Ty, unsigned int >::value, int,
  typename _If<is_same<_Ty, long >::value
   || is_same<_Ty, unsigned long >::value, long,
  typename _If<is_same<_Ty, long long >::value
   || is_same<_Ty, unsigned long long>::value, long long,
  typename _If<sizeof (_Ty) == sizeof (signed char), signed char,
  typename _If<sizeof (_Ty) == sizeof (short ), short,
  typename _If<sizeof (_Ty) == sizeof (int ), int,
  typename _If<sizeof (_Ty) == sizeof (long ), long,
   long long
  >::type>::type>::type>::type>::type>::type>::type>::type>::type
   _Signed;

 typedef
  typename _If<is_same<_Signed, signed char>::value, unsigned char,
  typename _If<is_same<_Signed, short >::value, unsigned short,
  typename _If<is_same<_Signed, int >::value, unsigned int,
  typename _If<is_same<_Signed, long >::value, unsigned long,
   unsigned long long
  >::type>::type>::type>::type
   _Unsigned;
 };

template<class _Ty>
 struct _Change_sign<const _Ty>
 {
 typedef const typename _Change_sign<_Ty>::_Signed _Signed;
 typedef const typename _Change_sign<_Ty>::_Unsigned _Unsigned;
 };

template<class _Ty>
 struct _Change_sign<volatile _Ty>
 {
 typedef volatile typename _Change_sign<_Ty>::_Signed _Signed;
 typedef volatile typename _Change_sign<_Ty>::_Unsigned _Unsigned;
 };

template<class _Ty>
 struct _Change_sign<const volatile _Ty>
 {
 typedef const volatile typename _Change_sign<_Ty>::_Signed _Signed;
 typedef const volatile typename _Change_sign<_Ty>::_Unsigned _Unsigned;
 };


template<class _Ty>
 struct make_signed
 {
 typedef typename _Change_sign<_Ty>::_Signed type;
 };


template<class _Ty>
 struct make_unsigned
 {
 typedef typename _Change_sign<_Ty>::_Unsigned type;
 };



template<class _Ty>
 struct alignment_of
  : integral_constant<size_t, alignof(_Ty)>
 {
 };






template<class _Ty,
 size_t _Len>
 union _Align_type
 {
 _Ty _Val;
 char _Pad[_Len];
 };

template<size_t _Len,
 size_t _Align,
 class _Ty,
 bool _Ok>
 struct _Aligned;

template<size_t _Len,
 size_t _Align,
 class _Ty>
 struct _Aligned<_Len, _Align, _Ty, true>
 {
 typedef _Align_type<_Ty, _Len> type;
 };

template<size_t _Len,
 size_t _Align>
 struct _Aligned<_Len, _Align, double, false>
 {
 typedef _Align_type<max_align_t, _Len> type;
 };

template<size_t _Len,
 size_t _Align>
 struct _Aligned<_Len, _Align, int, false>
 {
 typedef typename _Aligned<_Len, _Align, double, _Align <= alignment_of<double>::value>::type type;
 };

template<size_t _Len,
 size_t _Align>
 struct _Aligned<_Len, _Align, short, false>
 {
 typedef typename _Aligned<_Len, _Align, int, _Align <= alignment_of<int>::value>::type type;
 };

template<size_t _Len,
 size_t _Align>
 struct _Aligned<_Len, _Align, char, false>
 {
 typedef typename _Aligned<_Len, _Align, short, _Align <= alignment_of<short>::value>::type type;
 };

template<size_t _Len,
 size_t _Align = alignment_of<max_align_t>::value>
 struct aligned_storage
 {
 typedef typename _Aligned<_Len, _Align, char, _Align <= alignment_of<char>::value>::type type;
 };





template<size_t... _Vals>
 struct _Maximum;

template<>
 struct _Maximum<>
 {
 static constexpr size_t value = 0;
 };

template<size_t _Val>
 struct _Maximum<_Val>
 {
 static constexpr size_t value = _Val;
 };

template<size_t _First,
 size_t _Second,
 size_t... _Rest>
 struct _Maximum<_First, _Second, _Rest...>
  : _Maximum<(_First < _Second ? _Second : _First), _Rest...>
 {
 };

template<size_t _Len,
 class... _Types>
 struct aligned_union
 {
 static constexpr size_t _Max_len = _Maximum<
  _Len, sizeof(_Types)...>::value;
 static constexpr size_t alignment_value = _Maximum<
  alignment_of<_Types>::value...>::value;
 typedef typename aligned_storage<_Max_len, alignment_value>::type type;
 };


template<class _Ty>
 struct underlying_type
 {
 typedef __underlying_type(_Ty) type;
 };


template<class _Ty>
 struct rank
  : integral_constant<size_t, 0>
 {
 };

template<class _Ty, size_t _Ix>
 struct rank<_Ty[_Ix]>
  : integral_constant<size_t, rank<_Ty>::value + 1>
 {
 };

template<class _Ty>
 struct rank<_Ty[]>
  : integral_constant<size_t, rank<_Ty>::value + 1>
 {
 };


template<class _Ty, unsigned int _Nx>
 struct _Extent
  : integral_constant<size_t, 0>
 {
 };

template<class _Ty, size_t _Ix>
 struct _Extent<_Ty[_Ix], 0>
  : integral_constant<size_t, _Ix>
 {
 };

template<class _Ty, unsigned int _Nx, size_t _Ix>
 struct _Extent<_Ty[_Ix], _Nx>
  : _Extent<_Ty, _Nx - 1>
 {
 };

template<class _Ty, unsigned int _Nx>
 struct _Extent<_Ty[], _Nx>
  : _Extent<_Ty, _Nx - 1>
 {
 };

template<class _Ty, unsigned int _Nx = 0>
 struct extent
  : _Extent<_Ty, _Nx>
 {
 };


template<class _Base,
 class _Der>
 struct is_base_of
  : _Cat_base<__is_base_of(_Base, _Der)>
 {
 };


template<class _Ty>
 struct decay
 {
 typedef typename remove_reference<_Ty>::type _Ty1;

 typedef typename _If<is_array<_Ty1>::value,
  typename remove_extent<_Ty1>::type *,
  typename _If<is_function<_Ty1>::value,
   typename add_pointer<_Ty1>::type,
   typename remove_cv<_Ty1>::type>::type>::type type;
 };


template<class...>
 struct _Conjunction;

template<bool,
 class _Lhs,
 class... _Traits>
 struct _Choose_conjunction
 {
 typedef _Lhs type;
 };

template<class _Lhs,
 class... _Traits>
 struct _Choose_conjunction<true, _Lhs, _Traits...>
 {
 typedef typename _Conjunction<_Traits...>::type type;
 };

template<>
 struct _Conjunction<>
 {
 typedef true_type type;
 };

template<class _Trait>
 struct _Conjunction<_Trait>
 {
 typedef _Trait type;
 };

template<class _Lhs,
 class... _Traits>
 struct _Conjunction<_Lhs, _Traits...>
 {
 typedef typename _Choose_conjunction<_Lhs::value, _Lhs, _Traits...>::type type;
 };

template<class... _Traits>
 struct conjunction
  : _Conjunction<_Traits...>::type
 {


 };


template<class...>
 struct _Disjunction;

template<bool,
 class _Lhs,
 class... _Traits>
 struct _Choose_disjunction
 {
 typedef _Lhs type;
 };

template<class _Lhs,
 class... _Traits>
 struct _Choose_disjunction<false, _Lhs, _Traits...>
 {
 typedef typename _Disjunction<_Traits...>::type type;
 };

template<>
 struct _Disjunction<>
 {
 typedef false_type type;
 };

template<class _Trait>
 struct _Disjunction<_Trait>
 {
 typedef _Trait type;
 };

template<class _Lhs,
 class... _Traits>
 struct _Disjunction<_Lhs, _Traits...>
 {
 typedef typename _Choose_disjunction<_Lhs::value, _Lhs, _Traits...>::type type;
 };

template<class... _Traits>
 struct disjunction
  : _Disjunction<_Traits...>::type
 {


 };


template<class _Trait>
 struct negation
  : bool_constant<!_Trait::value>
 {
 };


namespace tr1 {
using ::std:: add_const;
using ::std:: add_cv;
using ::std:: add_pointer;
using ::std:: add_volatile;
using ::std:: aligned_storage;
using ::std:: alignment_of;
using ::std:: conditional;
using ::std:: decay;
using ::std:: enable_if;
using ::std:: extent;
using ::std:: false_type;
using ::std:: has_virtual_destructor;
using ::std:: integral_constant;
using ::std:: is_abstract;
using ::std:: is_arithmetic;
using ::std:: is_array;
using ::std:: is_base_of;
using ::std:: is_class;
using ::std:: is_compound;
using ::std:: is_const;
using ::std:: is_convertible;
using ::std:: is_empty;
using ::std:: is_enum;
using ::std:: is_floating_point;
using ::std:: is_function;
using ::std:: is_fundamental;
using ::std:: is_integral;
using ::std:: is_member_function_pointer;
using ::std:: is_member_object_pointer;
using ::std:: is_member_pointer;
using ::std:: is_object;
using ::std:: is_pod;
using ::std:: is_pointer;
using ::std:: is_polymorphic;
using ::std:: is_reference;
using ::std:: is_same;
using ::std:: is_scalar;
using ::std:: is_signed;
using ::std:: is_union;
using ::std:: is_unsigned;
using ::std:: is_void;
using ::std:: is_volatile;
using ::std:: make_signed;
using ::std:: make_unsigned;
using ::std:: rank;
using ::std:: remove_all_extents;
using ::std:: remove_const;
using ::std:: remove_cv;
using ::std:: remove_extent;
using ::std:: remove_pointer;
using ::std:: remove_reference;
using ::std:: remove_volatile;
using ::std:: true_type;
 }



template<class... _Ty>
 struct common_type;

template<class _Ty>
 struct common_type<_Ty>
 {
 typedef typename decay<_Ty>::type type;
 };

template<class _Ty0,
 class _Ty1>
 struct common_type<_Ty0, _Ty1>
 {
 typedef typename decay<
  decltype(_Always_false<_Ty0>::value
   ? ::std:: declval<_Ty0>()
   : ::std:: declval<_Ty1>())
 >::type type;
 };

template<class _Ty0,
 class _Ty1,
 class... _Ty>
 struct common_type<_Ty0, _Ty1, _Ty...>
 {
 typedef typename common_type<
  typename common_type<_Ty0, _Ty1>::type, _Ty...
 >::type type;
 };


template<class _Ty,
 _Ty... _Vals>
 struct integer_sequence
 {
 static_assert(is_integral<_Ty>::value,
  "integer_sequence<T, I...> requires T to be an integral type.");

 typedef integer_sequence<_Ty, _Vals...> type;
 typedef _Ty value_type;

 static constexpr size_t size() noexcept
  {
  return (sizeof...(_Vals));
  }
 };
# 1243 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\type_traits" 3
template<class _Ty,
 _Ty _Size>
 using make_integer_sequence = __make_integer_seq<integer_sequence, _Ty, _Size>;


template<size_t... _Vals>
 using index_sequence = integer_sequence<size_t, _Vals...>;

template<size_t _Size>
 using make_index_sequence = make_integer_sequence<size_t, _Size>;

template<class... _Types>
 using index_sequence_for = make_index_sequence<sizeof...(_Types)>;



template<class _Ty>
 struct identity
 {
 typedef _Ty type;

 const _Ty& operator()(const _Ty& _Left) const
  {
  return (_Left);
  }
 };



template<class _Ty> inline
 constexpr _Ty&& forward(
  typename remove_reference<_Ty>::type& _Arg) noexcept
 {
 return (static_cast<_Ty&&>(_Arg));
 }

template<class _Ty> inline
 constexpr _Ty&& forward(
  typename remove_reference<_Ty>::type&& _Arg) noexcept
 {
 static_assert(!is_lvalue_reference<_Ty>::value, "bad forward call");
 return (static_cast<_Ty&&>(_Arg));
 }


template<class _Ty> inline
 constexpr typename remove_reference<_Ty>::type&&
  move(_Ty&& _Arg) noexcept
 {
 return (static_cast<typename remove_reference<_Ty>::type&&>(_Arg));
 }


template<class _Ty> inline
 constexpr typename _If<!is_nothrow_move_constructible<_Ty>::value
  && is_copy_constructible<_Ty>::value,
   const _Ty&, _Ty&&>::type
 move_if_noexcept(_Ty& _Arg) noexcept
 {
 return (::std:: move(_Arg));
 }


template<class...>
 struct _Param_tester
 {
 typedef void type;
 };


template<class... _Types>
 using void_t = typename _Param_tester<_Types...>::type;


struct _Invoker_pmf_object
 {
 template<class _Decayed,
  class _Ty1,
  class... _Types2>
  static auto _Call(_Decayed _Pmf, _Ty1&& _Arg1, _Types2&&... _Args2)
  -> decltype((::std:: forward<_Ty1>(_Arg1).*_Pmf)(
   ::std:: forward<_Types2>(_Args2)...))
  {
  return ((::std:: forward<_Ty1>(_Arg1).*_Pmf)(
   ::std:: forward<_Types2>(_Args2)...));
  }
 };

struct _Invoker_pmf_pointer
 {
 template<class _Decayed,
  class _Ty1,
  class... _Types2>
  static auto _Call(_Decayed _Pmf, _Ty1&& _Arg1, _Types2&&... _Args2)
  -> decltype(((*::std:: forward<_Ty1>(_Arg1)).*_Pmf)(
   ::std:: forward<_Types2>(_Args2)...))
  {
  return (((*::std:: forward<_Ty1>(_Arg1)).*_Pmf)(
   ::std:: forward<_Types2>(_Args2)...));
  }
 };

struct _Invoker_pmd_object
 {
 template<class _Decayed,
  class _Ty1>
  static auto _Call(_Decayed _Pmd, _Ty1&& _Arg1)
  -> decltype(::std:: forward<_Ty1>(_Arg1).*_Pmd)
  {
  return (::std:: forward<_Ty1>(_Arg1).*_Pmd);
  }
 };

struct _Invoker_pmd_pointer
 {
 template<class _Decayed,
  class _Ty1>
  static auto _Call(_Decayed _Pmd, _Ty1&& _Arg1)
  -> decltype((*::std:: forward<_Ty1>(_Arg1)).*_Pmd)
  {
  return ((*::std:: forward<_Ty1>(_Arg1)).*_Pmd);
  }
 };

struct _Invoker_functor
 {
 template<class _Callable,
  class... _Types>
  static auto _Call(_Callable&& _Obj, _Types&&... _Args)
  -> decltype(::std:: forward<_Callable>(_Obj)(
   ::std:: forward<_Types>(_Args)...))
  {
  return (::std:: forward<_Callable>(_Obj)(
   ::std:: forward<_Types>(_Args)...));
  }
 };

template<class _Callable,
 class _Ty1,
 class _Decayed = typename decay<_Callable>::type,
 bool _Is_pmf = is_member_function_pointer<_Decayed>::value,
 bool _Is_pmd = is_member_object_pointer<_Decayed>::value>
 struct _Invoker1;

template<class _Callable,
 class _Ty1,
 class _Decayed>
 struct _Invoker1<_Callable, _Ty1, _Decayed, true, false>
  : _If<is_base_of<
   typename _Is_memfunptr<_Decayed>::_Class_type,
   typename decay<_Ty1>::type>::value,
  _Invoker_pmf_object,
  _Invoker_pmf_pointer>::type
 {
 };

template<class _Callable,
 class _Ty1,
 class _Decayed>
 struct _Invoker1<_Callable, _Ty1, _Decayed, false, true>
  : _If<is_base_of<
   typename _Is_member_object_pointer<_Decayed>::_Class_type,
   typename decay<_Ty1>::type>::value,
  _Invoker_pmd_object,
  _Invoker_pmd_pointer>::type
 {
 };

template<class _Callable,
 class _Ty1,
 class _Decayed>
 struct _Invoker1<_Callable, _Ty1, _Decayed, false, false>
  : _Invoker_functor
 {
 };

template<class _Callable,
 class... _Types>
 struct _Invoker;

template<class _Callable>
 struct _Invoker<_Callable>
  : _Invoker_functor
 {
 };

template<class _Callable,
 class _Ty1,
 class... _Types2>
 struct _Invoker<_Callable, _Ty1, _Types2...>
  : _Invoker1<_Callable, _Ty1>
 {
 };

template<class _Callable,
 class... _Types> inline
 auto invoke(_Callable&& _Obj, _Types&&... _Args)
 -> decltype(_Invoker<_Callable, _Types...>::_Call(
  ::std:: forward<_Callable>(_Obj), ::std:: forward<_Types>(_Args)...))
 {
 return (_Invoker<_Callable, _Types...>::_Call(
  ::std:: forward<_Callable>(_Obj), ::std:: forward<_Types>(_Args)...));
 }

template<class _Rx,
 bool = is_void<_Rx>::value>
 struct _Forced
 {
 };

struct _Unforced
 {
 };

template<class _Cv_void,
 class... _Valtys> inline
 void _Invoke_ret(_Forced<_Cv_void, true>, _Valtys&&... _Vals)
 {
 ::std:: invoke(::std:: forward<_Valtys>(_Vals)...);
 }

template<class _Rx,
 class... _Valtys> inline
 _Rx _Invoke_ret(_Forced<_Rx, false>, _Valtys&&... _Vals)
 {
 return (::std:: invoke(::std:: forward<_Valtys>(_Vals)...));
 }

template<class... _Valtys> inline
 auto _Invoke_ret(_Forced<_Unforced, false>, _Valtys&&... _Vals)
 -> decltype(::std:: invoke(::std:: forward<_Valtys>(_Vals)...))
 {
 return (::std:: invoke(::std:: forward<_Valtys>(_Vals)...));
 }


struct _Unique_tag_result_of
 {
 };

template<class _Void,
 class... _Types>
 struct _Result_of
 {
 };

template<class... _Types>
 struct _Result_of<
  void_t<
   _Unique_tag_result_of,
   decltype(::std:: invoke(::std:: declval<_Types>()...))>,
  _Types...>
 {
 typedef decltype(::std:: invoke(::std:: declval<_Types>()...)) type;
 };

template<class _Fty>
 struct result_of
 {
 static_assert(_Always_false<_Fty>::value,
  "result_of<CallableType> is invalid; use "
  "result_of<CallableType(zero or more argument types)> instead.");
 };
# 1515 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\type_traits" 3
template<class _Fty, class... _Args> struct result_of<_Fty __cdecl (_Args...)> : _Result_of<void, _Fty, _Args...> { }; template<class _Fty, class... _Args> struct result_of<_Fty __fastcall (_Args...)> : _Result_of<void, _Fty, _Args...> { }; template<class _Fty, class... _Args> struct result_of<_Fty __stdcall (_Args...)> : _Result_of<void, _Fty, _Args...> { }; template<class _Fty, class... _Args> struct result_of<_Fty __vectorcall (_Args...)> : _Result_of<void, _Fty, _Args...> { };



template<class _Ty,
 class = void>
 struct _Weak_result_type
 {
 };

template<class _Ty>
 struct _Weak_result_type<_Ty, void_t<
  typename _Ty::result_type> >
 {
 typedef typename _Ty::result_type result_type;
 };

template<class _Ty,
 class = void>
 struct _Weak_argument_type
  : _Weak_result_type<_Ty>
 {
 };

template<class _Ty>
 struct _Weak_argument_type<_Ty, void_t<
  typename _Ty::argument_type> >
  : _Weak_result_type<_Ty>
 {
 typedef typename _Ty::argument_type argument_type;
 };

template<class _Ty,
 class = void>
 struct _Weak_binary_args
  : _Weak_argument_type<_Ty>
 {
 };

template<class _Ty>
 struct _Weak_binary_args<_Ty, void_t<
  typename _Ty::first_argument_type,
  typename _Ty::second_argument_type> >
  : _Weak_argument_type<_Ty>
 {
 typedef typename _Ty::first_argument_type first_argument_type;
 typedef typename _Ty::second_argument_type second_argument_type;
 };

template<class _Ty>
 struct _Weak_types
 {
 typedef _Is_function<typename remove_pointer<_Ty>::type> _Is_f_or_pf;
 typedef _Is_memfunptr<typename remove_cv<_Ty>::type> _Is_pmf;
 typedef typename _If<_Is_f_or_pf::_Bool_type::value, _Is_f_or_pf,
  typename _If<_Is_pmf::_Bool_type::value, _Is_pmf,
  _Weak_binary_args<_Ty> >::type>::type type;
 };


template<class _Ty>
 class reference_wrapper
  : public _Weak_types<_Ty>::type
 {
public:
 static_assert(is_object<_Ty>::value || is_function<_Ty>::value,
  "reference_wrapper<T> requires T to be an object type "
  "or a function type.");

 typedef _Ty type;

 reference_wrapper(_Ty& _Val) noexcept
  : _Ptr(::std:: addressof(_Val))
  {
  }

 operator _Ty&() const noexcept
  {
  return (*_Ptr);
  }

 _Ty& get() const noexcept
  {
  return (*_Ptr);
  }

 template<class... _Types>
  auto operator()(_Types&&... _Args) const
  -> decltype(::std:: invoke(get(), ::std:: forward<_Types>(_Args)...))
  {
  return (::std:: invoke(get(), ::std:: forward<_Types>(_Args)...));
  }

 reference_wrapper(_Ty&&) = delete;

private:
 _Ty *_Ptr;
 };


template<class _Ty> inline
 reference_wrapper<_Ty>
  ref(_Ty& _Val) noexcept
 {
 return (reference_wrapper<_Ty>(_Val));
 }

template<class _Ty>
 void ref(const _Ty&&) = delete;

template<class _Ty> inline
 reference_wrapper<_Ty>
  ref(reference_wrapper<_Ty> _Val) noexcept
 {
 return (::std:: ref(_Val.get()));
 }

template<class _Ty> inline
 reference_wrapper<const _Ty>
  cref(const _Ty& _Val) noexcept
 {
 return (reference_wrapper<const _Ty>(_Val));
 }

template<class _Ty>
 void cref(const _Ty&&) = delete;

template<class _Ty> inline
 reference_wrapper<const _Ty>
  cref(reference_wrapper<_Ty> _Val) noexcept
 {
 return (::std:: cref(_Val.get()));
 }


template<class _Ty>
 struct _Unrefwrap_helper
 {
 typedef _Ty type;
 static constexpr bool _Is_refwrap = false;
 };

template<class _Ty>
 struct _Unrefwrap_helper<reference_wrapper<_Ty> >
 {
 typedef _Ty& type;
 static constexpr bool _Is_refwrap = true;
 };

template<class _Ty>
 struct _Unrefwrap
 {
 typedef typename decay<_Ty>::type _Ty1;
 typedef typename _Unrefwrap_helper<_Ty1>::type type;
 static constexpr bool _Is_refwrap = _Unrefwrap_helper<_Ty1>::_Is_refwrap;
 };


namespace tr1 {
using ::std:: cref;
using ::std:: ref;
using ::std:: reference_wrapper;
using ::std:: result_of;
 }



template<class _Ty>
 struct _Is_swappable;


template<class _Ty>
 struct _Is_nothrow_swappable;







template<class _Ty,
 class = void> inline

 void swap(_Ty&, _Ty&)
  noexcept(is_nothrow_move_constructible<_Ty>::value && is_nothrow_move_assignable<_Ty>::value);


template<class _Ty,
 size_t _Size,
 class = typename enable_if<_Is_swappable<_Ty>::value>::type> inline
 void swap(_Ty (&)[_Size], _Ty (&)[_Size])
  noexcept(_Is_nothrow_swappable<_Ty>::value);


template<class _Ty1,
 class _Ty2,
 class = void>
 struct _Swappable_with_helper
  : false_type
 {
 };

struct _Swappable_with_helper_unique_type {};
template<class _Ty1,
 class _Ty2>
 struct _Swappable_with_helper<_Ty1, _Ty2, void_t<
  _Swappable_with_helper_unique_type,
  decltype(swap(::std:: declval<_Ty1>(), ::std:: declval<_Ty2>()))>>
  : true_type
 {
 };


template<class _Ty1,
 class _Ty2>
 struct _Is_swappable_with
  : conjunction<
   _Swappable_with_helper<_Ty1, _Ty2>,
   _Swappable_with_helper<_Ty2, _Ty1>>::type
 {

 };


template<class _Ty>
 struct _Is_swappable
  : _Is_swappable_with<
   typename add_lvalue_reference<_Ty>::type,
   typename add_lvalue_reference<_Ty>::type>::type
 {
 };


template<class _Ty1,
 class _Ty2>
 struct _Swap_cannot_throw
 {



 static constexpr bool value =
  noexcept(swap(::std:: declval<_Ty1>(), ::std:: declval<_Ty2>()))
  && noexcept(swap(::std:: declval<_Ty2>(), ::std:: declval<_Ty1>()));



 using type = bool_constant<value>;
 };


template<class _Ty1,
 class _Ty2>
 struct _Is_nothrow_swappable_with
  : conjunction<
   _Is_swappable_with<_Ty1, _Ty2>,
   _Swap_cannot_throw<_Ty1, _Ty2>>::type
 {

 };


template<class _Ty>
 struct _Is_nothrow_swappable
  : _Is_nothrow_swappable_with<
   typename add_lvalue_reference<_Ty>::type,
   typename add_lvalue_reference<_Ty>::type>::type
 {
 };
# 1819 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\type_traits" 3
template<class _Ty>
 using remove_const_t = typename remove_const<_Ty>::type;

template<class _Ty>
 using remove_volatile_t = typename remove_volatile<_Ty>::type;

template<class _Ty>
 using remove_cv_t = typename remove_cv<_Ty>::type;

template<class _Ty>
 using add_const_t = typename add_const<_Ty>::type;

template<class _Ty>
 using add_volatile_t = typename add_volatile<_Ty>::type;

template<class _Ty>
 using add_cv_t = typename add_cv<_Ty>::type;

template<class _Ty>
 using remove_reference_t = typename remove_reference<_Ty>::type;

template<class _Ty>
 using add_lvalue_reference_t = typename add_lvalue_reference<_Ty>::type;

template<class _Ty>
 using add_rvalue_reference_t = typename add_rvalue_reference<_Ty>::type;

template<class _Ty>
 using make_signed_t = typename make_signed<_Ty>::type;

template<class _Ty>
 using make_unsigned_t = typename make_unsigned<_Ty>::type;

template<class _Ty>
 using remove_extent_t = typename remove_extent<_Ty>::type;

template<class _Ty>
 using remove_all_extents_t = typename remove_all_extents<_Ty>::type;

template<class _Ty>
 using remove_pointer_t = typename remove_pointer<_Ty>::type;

template<class _Ty>
 using add_pointer_t = typename add_pointer<_Ty>::type;

template<size_t _Len,
 size_t _Align = alignment_of<max_align_t>::value>
 using aligned_storage_t = typename aligned_storage<_Len, _Align>::type;

template<size_t _Len,
 class... _Types>
 using aligned_union_t = typename aligned_union<_Len, _Types...>::type;

template<class _Ty>
 using decay_t = typename decay<_Ty>::type;

template<bool _Test,
 class _Ty = void>
 using enable_if_t = typename enable_if<_Test, _Ty>::type;

template<bool _Test,
 class _Ty1,
 class _Ty2>
 using conditional_t = typename conditional<_Test, _Ty1, _Ty2>::type;

template<class... _Ty>
 using common_type_t = typename common_type<_Ty...>::type;

template<class _Ty>
 using underlying_type_t = typename underlying_type<_Ty>::type;

template<class _Ty>
 using result_of_t = typename result_of<_Ty>::type;



template<class _Ty>
 constexpr bool is_void_v = is_void<_Ty>::value;
template<class _Ty>
 constexpr bool is_null_pointer_v = is_null_pointer<_Ty>::value;
template<class _Ty>
 constexpr bool is_array_v = is_array<_Ty>::value;
template<class _Ty>
 constexpr bool is_pointer_v = is_pointer<_Ty>::value;
template<class _Ty>
 constexpr bool is_lvalue_reference_v = is_lvalue_reference<_Ty>::value;
template<class _Ty>
 constexpr bool is_rvalue_reference_v = is_rvalue_reference<_Ty>::value;
template<class _Ty>
 constexpr bool is_member_object_pointer_v = is_member_object_pointer<_Ty>::value;
template<class _Ty>
 constexpr bool is_member_function_pointer_v = is_member_function_pointer<_Ty>::value;
template<class _Ty>
 constexpr bool is_enum_v = is_enum<_Ty>::value;
template<class _Ty>
 constexpr bool is_union_v = is_union<_Ty>::value;
template<class _Ty>
 constexpr bool is_class_v = is_class<_Ty>::value;
template<class _Ty>
 constexpr bool is_reference_v = is_reference<_Ty>::value;
template<class _Ty>
 constexpr bool is_fundamental_v = is_fundamental<_Ty>::value;
template<class _Ty>
 constexpr bool is_object_v = is_object<_Ty>::value;
template<class _Ty>
 constexpr bool is_scalar_v = is_scalar<_Ty>::value;
template<class _Ty>
 constexpr bool is_compound_v = is_compound<_Ty>::value;
template<class _Ty>
 constexpr bool is_member_pointer_v = is_member_pointer<_Ty>::value;
template<class _Ty>
 constexpr bool is_const_v = is_const<_Ty>::value;
template<class _Ty>
 constexpr bool is_volatile_v = is_volatile<_Ty>::value;
template<class _Ty>
 constexpr bool is_trivial_v = is_trivial<_Ty>::value;
template<class _Ty>
 constexpr bool is_trivially_copyable_v = is_trivially_copyable<_Ty>::value;
template<class _Ty>
 constexpr bool is_standard_layout_v = is_standard_layout<_Ty>::value;
template<class _Ty>
 constexpr bool is_pod_v = is_pod<_Ty>::value;
template<class _Ty>
 constexpr bool is_literal_type_v = is_literal_type<_Ty>::value;
template<class _Ty>
 constexpr bool is_empty_v = is_empty<_Ty>::value;
template<class _Ty>
 constexpr bool is_polymorphic_v = is_polymorphic<_Ty>::value;
template<class _Ty>
 constexpr bool is_abstract_v = is_abstract<_Ty>::value;
template<class _Ty>
 constexpr bool is_final_v = is_final<_Ty>::value;
template<class _Ty>
 constexpr bool is_signed_v = is_signed<_Ty>::value;
template<class _Ty>
 constexpr bool is_unsigned_v = is_unsigned<_Ty>::value;
template<class _Ty,
 class... _Args>
 constexpr bool is_constructible_v = is_constructible<_Ty, _Args...>::value;
template<class _Ty>
 constexpr bool is_default_constructible_v = is_default_constructible<_Ty>::value;
template<class _Ty>
 constexpr bool is_copy_constructible_v = is_copy_constructible<_Ty>::value;
template<class _Ty>
 constexpr bool is_move_constructible_v = is_move_constructible<_Ty>::value;
template<class _Ty,
 class _Uty>
 constexpr bool is_assignable_v = is_assignable<_Ty, _Uty>::value;
template<class _Ty>
 constexpr bool is_copy_assignable_v = is_copy_assignable<_Ty>::value;
template<class _Ty>
 constexpr bool is_move_assignable_v = is_move_assignable<_Ty>::value;







template<class _Ty>
 constexpr bool is_destructible_v = is_destructible<_Ty>::value;
template<class _Ty,
 class... _Args>
 constexpr bool is_trivially_constructible_v = is_trivially_constructible<_Ty, _Args...>::value;
template<class _Ty>
 constexpr bool is_trivially_default_constructible_v = is_trivially_default_constructible<_Ty>::value;
template<class _Ty>
 constexpr bool is_trivially_copy_constructible_v = is_trivially_copy_constructible<_Ty>::value;
template<class _Ty>
 constexpr bool is_trivially_move_constructible_v = is_trivially_move_constructible<_Ty>::value;
template<class _Ty,
 class _Uty>
 constexpr bool is_trivially_assignable_v = is_trivially_assignable<_Ty, _Uty>::value;
template<class _Ty>
 constexpr bool is_trivially_copy_assignable_v = is_trivially_copy_assignable<_Ty>::value;
template<class _Ty>
 constexpr bool is_trivially_move_assignable_v = is_trivially_move_assignable<_Ty>::value;
template<class _Ty>
 constexpr bool is_trivially_destructible_v = is_trivially_destructible<_Ty>::value;
template<class _Ty,
 class... _Args>
 constexpr bool is_nothrow_constructible_v = is_nothrow_constructible<_Ty, _Args...>::value;
template<class _Ty>
 constexpr bool is_nothrow_default_constructible_v = is_nothrow_default_constructible<_Ty>::value;
template<class _Ty>
 constexpr bool is_nothrow_copy_constructible_v = is_nothrow_copy_constructible<_Ty>::value;
template<class _Ty>
 constexpr bool is_nothrow_move_constructible_v = is_nothrow_move_constructible<_Ty>::value;
template<class _Ty,
 class _Uty>
 constexpr bool is_nothrow_assignable_v = is_nothrow_assignable<_Ty, _Uty>::value;
template<class _Ty>
 constexpr bool is_nothrow_copy_assignable_v = is_nothrow_copy_assignable<_Ty>::value;
template<class _Ty>
 constexpr bool is_nothrow_move_assignable_v = is_nothrow_move_assignable<_Ty>::value;







template<class _Ty>
 constexpr bool is_nothrow_destructible_v = is_nothrow_destructible<_Ty>::value;
template<class _Ty>
 constexpr bool has_virtual_destructor_v = has_virtual_destructor<_Ty>::value;
template<class _Ty>
 constexpr size_t alignment_of_v = alignment_of<_Ty>::value;
template<class _Ty>
 constexpr size_t rank_v = rank<_Ty>::value;
template<class _Ty,
 unsigned int _Ix = 0>
 constexpr size_t extent_v = extent<_Ty, _Ix>::value;
template<class _Base,
 class _Derived>
 constexpr bool is_base_of_v = is_base_of<_Base, _Derived>::value;
template<class _From,
 class _To>
 constexpr bool is_convertible_v = is_convertible<_From, _To>::value;
template<class... _Traits>
 constexpr bool conjunction_v = conjunction<_Traits...>::value;
template<class... _Traits>
 constexpr bool disjunction_v = disjunction<_Traits...>::value;
template<class _Trait>
 constexpr bool negation_v = negation<_Trait>::value;


}


#pragma warning(pop)
#pragma pack(pop)
# 7 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\exception" 2 3


#pragma pack(push,8)
#pragma warning(push, 3)



namespace std {
# 33 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\exception" 3
__declspec(dllimport) bool __cdecl uncaught_exception() noexcept;
__declspec(dllimport) int __cdecl uncaught_exceptions() noexcept;

}




# 1 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\malloc.h" 1 3
# 14 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\malloc.h" 3
#pragma pack(push, 8)
# 14 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\malloc.h" 3
 extern "C" {
# 39 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\malloc.h" 3
typedef struct _heapinfo
{
    int* _pentry;
    size_t _size;
    int _useflag;
} _HEAPINFO;
# 54 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\malloc.h" 3
void* __cdecl _alloca( size_t _Size);





    __declspec(dllimport) intptr_t __cdecl _get_heap_handle(void);


    __declspec(dllimport) int __cdecl _heapmin(void);


        __declspec(dllimport) int __cdecl _heapwalk( _HEAPINFO* _EntryInfo);



                       __declspec(dllimport) int __cdecl _heapchk(void);
        __declspec(dllimport) int __cdecl _resetstkoflw(void);
# 84 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\malloc.h" 3
    typedef char __static_assert_t[(sizeof(unsigned int) <= 8) != 0];


#pragma warning(push)
#pragma warning(disable: 6540)

 __inline void* _MarkAllocaS( void* _Ptr, unsigned int _Marker)
    {
        if (_Ptr)
        {
            *((unsigned int*)_Ptr) = _Marker;
            _Ptr = (char*)_Ptr + 8;
        }
        return _Ptr;
    }

    __inline size_t _MallocaComputeSize(size_t _Size)
    {
        size_t _MarkedSize = _Size + 8;
        return _MarkedSize > _Size ? _MarkedSize : 0;
    }

#pragma warning(pop)
# 144 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\malloc.h" 3
#pragma warning(push)
#pragma warning(disable: 6014)
 __inline void __cdecl _freea( void* _Memory)
    {
        unsigned int _Marker;
        if (_Memory)
        {
            _Memory = (char*)_Memory - 8;
            _Marker = *(unsigned int*)_Memory;
            if (_Marker == 0xDDDD)
            {
                free(_Memory);
            }






        }
    }
#pragma warning(pop)
# 177 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\malloc.h" 3
}
# 177 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\malloc.h" 3
#pragma pack(pop)
# 40 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\exception" 2 3

# 1 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vcruntime_exception.h" 1 3
# 10 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vcruntime_exception.h" 3
# 1 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\eh.h" 1 3
# 11 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\eh.h" 3
# 1 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_terminate.h" 1 3
# 14 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_terminate.h" 3
#pragma pack(push, 8)
# 14 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_terminate.h" 3
 extern "C" {



typedef void (__cdecl* terminate_handler )();
typedef void (__cdecl* terminate_function)();
# 28 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_terminate.h" 3
    __declspec(dllimport) __declspec(noreturn) void __cdecl abort();
    __declspec(dllimport) __declspec(noreturn) void __cdecl terminate() throw();



        __declspec(dllimport) terminate_handler __cdecl set_terminate(
                     terminate_handler _NewTerminateHandler
            ) throw();

        __declspec(dllimport) terminate_handler __cdecl _get_terminate();





}
# 43 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_terminate.h" 3
#pragma pack(pop)
# 11 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\eh.h" 2 3




#pragma pack(push, 8)
# 15 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\eh.h" 3
 extern "C" {



typedef void (__cdecl* unexpected_handler )();
typedef void (__cdecl* unexpected_function)();






struct _EXCEPTION_POINTERS;



    __declspec(dllimport) __declspec(noreturn) void __cdecl unexpected() throw(...);



        __declspec(dllimport) unexpected_handler __cdecl set_unexpected(
                     unexpected_handler _NewUnexpectedHandler
            ) throw();

        __declspec(dllimport) unexpected_handler __cdecl _get_unexpected();

        typedef void (__cdecl* _se_translator_function)(unsigned int, struct _EXCEPTION_POINTERS*);

        __declspec(dllimport) _se_translator_function __cdecl _set_se_translator(
                     _se_translator_function _NewSETranslator
            );



    class type_info;

    __declspec(dllimport) int __cdecl _is_exception_typeof(
             type_info const& _Type,
             _EXCEPTION_POINTERS* _ExceptionPtr
        );

    __declspec(dllimport) bool __cdecl __uncaught_exception();
    __declspec(dllimport) int __cdecl __uncaught_exceptions();



}
# 61 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\eh.h" 3
#pragma pack(pop)
# 10 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vcruntime_exception.h" 2 3






#pragma pack(push, 8)


#pragma pack(push, 8)
# 19 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vcruntime_exception.h" 3
 extern "C" {

struct __std_exception_data
{
    char const* _What;
    bool _DoFree;
};

__declspec(dllimport) void __cdecl __std_exception_copy(
          __std_exception_data const* _From,
          __std_exception_data* _To
    );

__declspec(dllimport) void __cdecl __std_exception_destroy(
            __std_exception_data* _Data
    );

}
# 36 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vcruntime_exception.h" 3
#pragma pack(pop)



namespace std {

class exception
{
public:

    exception() throw()
        : _Data()
    {
    }

    explicit exception(char const* const _Message) throw()
        : _Data()
    {
        __std_exception_data _InitData = { _Message, true };
        __std_exception_copy(&_InitData, &_Data);
    }

    exception(char const* const _Message, int) throw()
        : _Data()
    {
        _Data._What = _Message;
    }

    exception(exception const& _Other) throw()
        : _Data()
    {
        __std_exception_copy(&_Other._Data, &_Data);
    }

    exception& operator=(exception const& _Other) throw()
    {
        if (this == &_Other)
        {
            return *this;
        }

        __std_exception_destroy(&_Data);
        __std_exception_copy(&_Other._Data, &_Data);
        return *this;
    }

    virtual ~exception() throw()
    {
        __std_exception_destroy(&_Data);
    }

    virtual char const* what() const
    {
        return _Data._What ? _Data._What : "Unknown exception";
    }

private:

    __std_exception_data _Data;
};

class bad_exception
    : public exception
{
public:

    bad_exception() throw()
        : exception("bad exception", 1)
    {
    }
};

class bad_alloc
    : public exception
{
public:

    bad_alloc() throw()
        : exception("bad allocation", 1)
    {
    }

private:

    friend class bad_array_new_length;

    bad_alloc(char const* const _Message) throw()
        : exception(_Message, 1)
    {
    }
};

class bad_array_new_length
    : public bad_alloc
{
public:

    bad_array_new_length() throw()
        : bad_alloc("bad array new length")
    {
    }
};

}


#pragma pack(pop)
# 41 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\exception" 2 3


namespace std {

using ::set_terminate; using ::terminate_handler; using ::terminate; using ::set_unexpected; using ::unexpected_handler; using ::unexpected;

typedef void (__cdecl *_Prhand)(const exception&);


inline terminate_handler __cdecl get_terminate() noexcept
 {
 return (_get_terminate());
 }

inline unexpected_handler __cdecl get_unexpected() noexcept
 {
 return (_get_unexpected());
 }


}
# 240 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\exception" 3
__declspec(dllimport) void __cdecl __ExceptionPtrCreate( void*);
__declspec(dllimport) void __cdecl __ExceptionPtrDestroy( void*);
__declspec(dllimport) void __cdecl __ExceptionPtrCopy( void*, const void*);
__declspec(dllimport) void __cdecl __ExceptionPtrAssign( void*, const void*);
__declspec(dllimport) bool __cdecl __ExceptionPtrCompare( const void*, const void*);
__declspec(dllimport) bool __cdecl __ExceptionPtrToBool( const void*);
__declspec(dllimport) void __cdecl __ExceptionPtrSwap( void*, void*);
__declspec(dllimport) void __cdecl __ExceptionPtrCurrentException( void*);
[[noreturn]] __declspec(dllimport) void __cdecl __ExceptionPtrRethrow( const void*);
__declspec(dllimport) void __cdecl __ExceptionPtrCopyException(
         void*, const void*, const void*);

namespace std {

class exception_ptr
 {
public:
 exception_ptr() throw ()
  {
  __ExceptionPtrCreate(this);
  }

 exception_ptr(nullptr_t) throw ()
  {
  __ExceptionPtrCreate(this);
  }

 ~exception_ptr() throw ()
  {
  __ExceptionPtrDestroy(this);
  }

 exception_ptr(const exception_ptr& _Rhs) throw ()
  {
  __ExceptionPtrCopy(this, &_Rhs);
  }

 exception_ptr& operator=(const exception_ptr& _Rhs) throw ()
  {
  __ExceptionPtrAssign(this, &_Rhs);
  return *this;
  }

 exception_ptr& operator=(nullptr_t) throw ()
  {
  exception_ptr _Ptr;
  __ExceptionPtrAssign(this, &_Ptr);
  return *this;
  }

 explicit operator bool() const throw ()
  {
  return __ExceptionPtrToBool(this);
  }

 [[noreturn]] void _RethrowException() const
  {
  __ExceptionPtrRethrow(this);
  }

 static exception_ptr _Current_exception() throw ()
  {
  exception_ptr _Retval;
  __ExceptionPtrCurrentException(&_Retval);
  return _Retval;
  }

 static exception_ptr _Copy_exception( void* _Except, const void* _Ptr)
  {
  exception_ptr _Retval = 0;
  if (!_Ptr)
   {

   return _Retval;
   }
  __ExceptionPtrCopyException(&_Retval, _Except, _Ptr);
  return _Retval;
  }

private:
 void* _Data1;
 void* _Data2;
 };

inline void swap(exception_ptr& _Lhs, exception_ptr& _Rhs) throw ()
 {
 __ExceptionPtrSwap(&_Lhs, &_Rhs);
 }

inline bool operator==(const exception_ptr& _Lhs, const exception_ptr& _Rhs) throw ()
 {
 return __ExceptionPtrCompare(&_Lhs, &_Rhs);
 }

inline bool operator==(nullptr_t, const exception_ptr& _Rhs) throw ()
 {
 return !_Rhs;
 }

inline bool operator==(const exception_ptr& _Lhs, nullptr_t) throw ()
 {
 return !_Lhs;
 }

inline bool operator!=(const exception_ptr& _Lhs, const exception_ptr& _Rhs) throw ()
 {
 return !(_Lhs == _Rhs);
 }

inline bool operator!=(nullptr_t _Lhs, const exception_ptr& _Rhs) throw ()
 {
 return !(_Lhs == _Rhs);
 }

inline bool operator!=(const exception_ptr& _Lhs, nullptr_t _Rhs) throw ()
 {
 return !(_Lhs == _Rhs);
 }

inline exception_ptr current_exception() noexcept
 {
 return exception_ptr::_Current_exception();
 }

[[noreturn]] inline void rethrow_exception( exception_ptr _Ptr)
 {
 _Ptr._RethrowException();
 }

template<class _Ex> void *__GetExceptionInfo(_Ex);

template<class _Ex> exception_ptr make_exception_ptr(_Ex _Except) noexcept
 {
 return exception_ptr::_Copy_exception(::std:: addressof(_Except), __GetExceptionInfo(_Except));
 }


class nested_exception
 {
public:
 nested_exception() noexcept
  : _Exc(::std:: current_exception())
  {
  }

 nested_exception(const nested_exception&) noexcept = default;
 nested_exception& operator=(const nested_exception&) noexcept = default;
 virtual ~nested_exception() noexcept = default;

 [[noreturn]] void rethrow_nested() const
  {
  if (_Exc)
   ::std:: rethrow_exception(_Exc);
  else
   ::std:: terminate();
  }

 ::std:: exception_ptr nested_ptr() const noexcept
  {
  return (_Exc);
  }

private:
 ::std:: exception_ptr _Exc;
 };


template<class _Ty,
 class _Uty>
 struct _With_nested
  : _Uty, nested_exception
 {
 explicit _With_nested(_Ty&& _Arg)
  : _Uty(::std:: forward<_Ty>(_Arg)), nested_exception()
  {
  }
 };

template<class _Ty>
 [[noreturn]] inline void _Throw_with_nested(_Ty&& _Arg, true_type)
 {
 typedef typename remove_reference<_Ty>::type _Uty;
 typedef _With_nested<_Ty, _Uty> _Glued;

 throw _Glued(::std:: forward<_Ty>(_Arg));
 }

template<class _Ty>
 [[noreturn]] inline void _Throw_with_nested(_Ty&& _Arg, false_type)
 {
 typedef typename decay<_Ty>::type _Decayed;

 throw _Decayed(::std:: forward<_Ty>(_Arg));
 }

template<class _Ty>
 [[noreturn]] inline void throw_with_nested(_Ty&& _Arg)
 {
 typedef typename remove_reference<_Ty>::type _Uty;

 integral_constant<bool,
  is_class<_Uty>::value
  && !is_base_of<nested_exception, _Uty>::value
  && !is_final<_Uty>::value> _Tag;

 _Throw_with_nested(::std:: forward<_Ty>(_Arg), _Tag);
 }


template<class _Ty> inline
 void _Rethrow_if_nested(const _Ty *_Ptr, true_type)
 {
 const auto _Nested = dynamic_cast<const nested_exception *>(_Ptr);

 if (_Nested)
  _Nested->rethrow_nested();
 }

template<class _Ty> inline
 void _Rethrow_if_nested(const _Ty *, false_type)
 {
 }

template<class _Ty> inline
 void rethrow_if_nested(const _Ty& _Arg)
 {
 integral_constant<bool,
  is_polymorphic<_Ty>::value
  && (!is_base_of<nested_exception, _Ty>::value
   || is_convertible<_Ty *, nested_exception *>::value)> _Tag;

 _Rethrow_if_nested(::std:: addressof(_Arg), _Tag);
 }
}


#pragma warning(pop)
#pragma pack(pop)
# 6 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\new" 2 3

# 1 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vcruntime_new.h" 1 3
# 10 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vcruntime_new.h" 3
# 1 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vcruntime.h" 1 3
# 10 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vcruntime_new.h" 2 3



extern "C++" {

#pragma pack(push, 8)

#pragma warning(push)
#pragma warning(disable: 4985)






 namespace std
    {
        struct nothrow_t { };

        extern nothrow_t const nothrow;
    }



__declspec(allocator) void* __cdecl operator new(
    size_t _Size
    );


__declspec(allocator) void* __cdecl operator new(
    size_t _Size,
    std::nothrow_t const&
    ) throw();


__declspec(allocator) void* __cdecl operator new[](
    size_t _Size
    );


__declspec(allocator) void* __cdecl operator new[](
    size_t _Size,
    std::nothrow_t const&
    ) throw();

void __cdecl operator delete(
    void* _Block
    ) throw();

void __cdecl operator delete(
    void* _Block,
    std::nothrow_t const&
    ) throw();

void __cdecl operator delete[](
    void* _Block
    ) throw();

void __cdecl operator delete[](
    void* _Block,
    std::nothrow_t const&
    ) throw();

void __cdecl operator delete(
    void* _Block,
    size_t _Size
    ) throw();

void __cdecl operator delete[](
    void* _Block,
    size_t _Size
    ) throw();




    inline void* __cdecl operator new(size_t _Size, void* _Where) throw()
    {
        (void)_Size;
        return _Where;
    }

    inline void __cdecl operator delete(void*, void*) throw()
    {
        return;
    }





    inline void* __cdecl operator new[](size_t _Size, void* _Where) throw()
    {
        (void)_Size;
        return _Where;
    }

    inline void __cdecl operator delete[](void*, void*) throw()
    {
    }




#pragma warning(pop)
#pragma pack(pop)

}
# 7 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\new" 2 3


#pragma pack(push,8)
#pragma warning(push, 3)






namespace std {




typedef void (__cdecl * new_handler) ();



__declspec(dllimport) new_handler __cdecl set_new_handler( new_handler)
 noexcept;

__declspec(dllimport) new_handler __cdecl get_new_handler()
 noexcept;
}


#pragma warning(pop)
#pragma pack(pop)
# 21 "f:\\projects\\cocos\\inventory\\cocos2d\\external\\box2d\\collision\\shapes\\b2edgeshape.cpp" 2

void b2EdgeShape::Set(const b2Vec2& v1, const b2Vec2& v2)
{
 m_vertex1 = v1;
 m_vertex2 = v2;
 m_hasVertex0 = false;
 m_hasVertex3 = false;
}

b2Shape* b2EdgeShape::Clone(b2BlockAllocator* allocator) const
{
 void* mem = allocator->Allocate(sizeof(b2EdgeShape));
 b2EdgeShape* clone = new (mem) b2EdgeShape;
 *clone = *this;
 return clone;
}

int32 b2EdgeShape::GetChildCount() const
{
 return 1;
}

bool b2EdgeShape::TestPoint(const b2Transform& xf, const b2Vec2& p) const
{
 ((void)(xf));
 ((void)(p));
 return false;
}





bool b2EdgeShape::RayCast(b2RayCastOutput* output, const b2RayCastInput& input,
       const b2Transform& xf, int32 childIndex) const
{
 ((void)(childIndex));


 b2Vec2 p1 = b2MulT(xf.q, input.p1 - xf.p);
 b2Vec2 p2 = b2MulT(xf.q, input.p2 - xf.p);
 b2Vec2 d = p2 - p1;

 b2Vec2 v1 = m_vertex1;
 b2Vec2 v2 = m_vertex2;
 b2Vec2 e = v2 - v1;
 b2Vec2 normal(e.y, -e.x);
 normal.Normalize();




 float32 numerator = b2Dot(normal, v1 - p1);
 float32 denominator = b2Dot(normal, d);

 if (denominator == 0.0f)
 {
  return false;
 }

 float32 t = numerator / denominator;
 if (t < 0.0f || input.maxFraction < t)
 {
  return false;
 }

 b2Vec2 q = p1 + t * d;



 b2Vec2 r = v2 - v1;
 float32 rr = b2Dot(r, r);
 if (rr == 0.0f)
 {
  return false;
 }

 float32 s = b2Dot(q - v1, r) / rr;
 if (s < 0.0f || 1.0f < s)
 {
  return false;
 }

 output->fraction = t;
 if (numerator > 0.0f)
 {
  output->normal = -b2Mul(xf.q, normal);
 }
 else
 {
  output->normal = b2Mul(xf.q, normal);
 }
 return true;
}

void b2EdgeShape::ComputeAABB(b2AABB* aabb, const b2Transform& xf, int32 childIndex) const
{
 ((void)(childIndex));

 b2Vec2 v1 = b2Mul(xf, m_vertex1);
 b2Vec2 v2 = b2Mul(xf, m_vertex2);

 b2Vec2 lower = b2Min(v1, v2);
 b2Vec2 upper = b2Max(v1, v2);

 b2Vec2 r(m_radius, m_radius);
 aabb->lowerBound = lower - r;
 aabb->upperBound = upper + r;
}

void b2EdgeShape::ComputeMass(b2MassData* massData, float32 density) const
{
 ((void)(density));

 massData->mass = 0.0f;
 massData->center = 0.5f * (m_vertex1 + m_vertex2);
 massData->I = 0.0f;
}
