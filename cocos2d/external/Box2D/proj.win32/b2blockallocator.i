# 1 "f:\\projects\\cocos\\inventory\\cocos2d\\external\\box2d\\common\\b2blockallocator.cpp"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 337 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "f:\\projects\\cocos\\inventory\\cocos2d\\external\\box2d\\common\\b2blockallocator.cpp" 2
# 19 "f:\\projects\\cocos\\inventory\\cocos2d\\external\\box2d\\common\\b2blockallocator.cpp"
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
# 20 "f:\\projects\\cocos\\inventory\\cocos2d\\external\\box2d\\common\\b2blockallocator.cpp" 2
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
# 21 "f:\\projects\\cocos\\inventory\\cocos2d\\external\\box2d\\common\\b2blockallocator.cpp" 2
# 1 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\memory.h" 1
# 11 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\memory.h"
# 1 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_memory.h" 1
# 14 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_memory.h"
# 1 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_memcpy_s.h" 1
# 11 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_memcpy_s.h"
# 1 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\errno.h" 1
# 13 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\errno.h"
#pragma pack(push, 8)
# 13 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\errno.h"
 extern "C" {



__declspec(dllimport) extern int* __cdecl _errno(void);


__declspec(dllimport) errno_t __cdecl _set_errno( int _Value);
__declspec(dllimport) errno_t __cdecl _get_errno( int* _Value);



__declspec(dllimport) unsigned long* __cdecl __doserrno(void);


__declspec(dllimport) errno_t __cdecl _set_doserrno( unsigned long _Value);
__declspec(dllimport) errno_t __cdecl _get_doserrno( unsigned long * _Value);
# 129 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\errno.h"
}
# 129 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\errno.h"
#pragma pack(pop)
# 11 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_memcpy_s.h" 2

# 1 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vcruntime_string.h" 1 3
# 10 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vcruntime_string.h" 3
# 1 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vcruntime.h" 1 3
# 10 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vcruntime_string.h" 2 3




#pragma pack(push, 8)
# 14 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vcruntime_string.h" 3
 extern "C" {




__declspec(dllimport) void const* __cdecl memchr(
                                    void const* _Buf,
                                    int _Val,
                                    size_t _MaxCount
    );


int __cdecl memcmp(
                            void const* _Buf1,
                            void const* _Buf2,
                            size_t _Size
    );
# 40 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vcruntime_string.h" 3
void* __cdecl memcpy(
                                  void* _Dst,
                                  void const* _Src,
                                  size_t _Size
    );


__declspec(dllimport) void* __cdecl memmove(
                                      void* _Dst,
                                      void const* _Src,
                                      size_t _Size
    );
# 60 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vcruntime_string.h" 3
void* __cdecl memset(
                                  void* _Dst,
                                  int _Val,
                                  size_t _Size
    );


__declspec(dllimport) char const* __cdecl strchr(
           char const* _Str,
           int _Val
    );


__declspec(dllimport) char const* __cdecl strrchr(
           char const* _Str,
           int _Ch
    );


__declspec(dllimport) char const* __cdecl strstr(
           char const* _Str,
           char const* _SubStr
    );



__declspec(dllimport) wchar_t const* __cdecl wcschr(
           wchar_t const* _Str,
           wchar_t _Ch
    );


__declspec(dllimport) wchar_t const* __cdecl wcsrchr(
           wchar_t const* _Str,
           wchar_t _Ch
    );



__declspec(dllimport) wchar_t const* __cdecl wcsstr(
           wchar_t const* _Str,
           wchar_t const* _SubStr
    );



}
# 106 "C:\\Program Files (x86)\\Microsoft Visual Studio 14.0\\VC\\include\\vcruntime_string.h" 3
#pragma pack(pop)
# 12 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_memcpy_s.h" 2


#pragma pack(push, 8)
# 14 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_memcpy_s.h"
 extern "C" {
# 35 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_memcpy_s.h"
    static __inline errno_t __cdecl memcpy_s(
                                                                 void* const _Destination,
                                                                 rsize_t const _DestinationSize,
                                                                 void const* const _Source,
                                                                 rsize_t const _SourceSize
        )
    {
        if (_SourceSize == 0)
        {
            return 0;
        }

        { int _Expr_val=!!(_Destination != 0); if (!(_Expr_val)) { (*_errno()) = 22; _invalid_parameter_noinfo(); return 22; } };
        if (_Source == 0 || _DestinationSize < _SourceSize)
        {
            memset(_Destination, 0, _DestinationSize);

            { int _Expr_val=!!(_Source != 0); if (!(_Expr_val)) { (*_errno()) = 22; _invalid_parameter_noinfo(); return 22; } };
            { int _Expr_val=!!(_DestinationSize >= _SourceSize); if (!(_Expr_val)) { (*_errno()) = 34; _invalid_parameter_noinfo(); return 34; } };


            return 22;
        }

        memcpy(_Destination, _Source, _SourceSize);
        return 0;
    }


    static __inline errno_t __cdecl memmove_s(
                                                                 void* const _Destination,
                                                                 rsize_t const _DestinationSize,
                                                                 void const* const _Source,
                                                                 rsize_t const _SourceSize
        )
    {
        if (_SourceSize == 0)
        {
            return 0;
        }

        { int _Expr_val=!!(_Destination != 0); if (!(_Expr_val)) { (*_errno()) = 22; _invalid_parameter_noinfo(); return 22; } };
        { int _Expr_val=!!(_Source != 0); if (!(_Expr_val)) { (*_errno()) = 22; _invalid_parameter_noinfo(); return 22; } };
        { int _Expr_val=!!(_DestinationSize >= _SourceSize); if (!(_Expr_val)) { (*_errno()) = 34; _invalid_parameter_noinfo(); return 34; } };

        memmove(_Destination, _Source, _SourceSize);
        return 0;
    }





}
# 88 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_memcpy_s.h"
#pragma pack(pop)
# 14 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_memory.h" 2





#pragma pack(push, 8)
# 19 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_memory.h"
 extern "C" {




__declspec(dllimport) int __cdecl _memicmp(
                                void const* _Buf1,
                                void const* _Buf2,
                                size_t _Size
    );


__declspec(dllimport) int __cdecl _memicmp_l(
                                void const* _Buf1,
                                void const* _Buf2,
                                size_t _Size,
                                _locale_t _Locale
    );
# 77 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_memory.h"
    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_memccpy" ". See online help for details."))
    __declspec(dllimport) void* __cdecl memccpy(
                                      void* _Dst,
                                      void const* _Src,
                                      int _Val,
                                      size_t _Size
        );

                   __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_memicmp" ". See online help for details."))
    __declspec(dllimport) int __cdecl memicmp(
                                    void const* _Buf1,
                                    void const* _Buf2,
                                    size_t _Size
        );





    extern "C++"
    inline void* __cdecl memchr(
                                 void* _Pv,
                                 int _C,
                                 size_t _N
        )
    {
        void const* const _Pvc = _Pv;
        return const_cast<void*>(memchr(_Pvc, _C, _N));
    }




}
# 110 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_memory.h"
#pragma pack(pop)
# 11 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\memory.h" 2
# 22 "f:\\projects\\cocos\\inventory\\cocos2d\\external\\box2d\\common\\b2blockallocator.cpp" 2

# 1 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\string.h" 1
# 13 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\string.h"
# 1 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_wstring.h" 1
# 16 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_wstring.h"
#pragma pack(push, 8)
# 16 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_wstring.h"
 extern "C" {
# 28 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_wstring.h"
    __declspec(dllimport) errno_t __cdecl wcscat_s(
                                        wchar_t* _Destination,
             rsize_t _SizeInWords,
               wchar_t const* _Source
        );


    __declspec(dllimport) errno_t __cdecl wcscpy_s(
                                     wchar_t* _Destination,
             rsize_t _SizeInWords,
               wchar_t const* _Source
        );


    __declspec(dllimport) errno_t __cdecl wcsncat_s(
                                        wchar_t* _Destination,
                                        rsize_t _SizeInWords,
                                        wchar_t const* _Source,
                                        rsize_t _MaxCount
        );


    __declspec(dllimport) errno_t __cdecl wcsncpy_s(
                                     wchar_t* _Destination,
                                     rsize_t _SizeInWords,
                                     wchar_t const* _Source,
                                     rsize_t _MaxCount
        );


    __declspec(dllimport) wchar_t* __cdecl wcstok_s(
                                      wchar_t* _String,
                                      wchar_t const* _Delimiter,
                                      wchar_t** _Context
        );
# 79 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_wstring.h"
__declspec(dllimport) __declspec(allocator) wchar_t* __cdecl _wcsdup(
           wchar_t const* _String
    );







extern "C++" { template <size_t _Size> inline errno_t __cdecl wcscat_s(wchar_t (&_Destination)[_Size], wchar_t const* _Source) throw() { return wcscat_s(_Destination, _Size, _Source); } }







    __declspec(deprecated("This function or variable may be unsafe. Consider using " "wcscat_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __declspec(dllimport) wchar_t* __cdecl wcscat( wchar_t *_Destination, wchar_t const* _Source);
# 106 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_wstring.h"
__declspec(dllimport) int __cdecl wcscmp(
           wchar_t const* _String1,
           wchar_t const* _String2
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl wcscpy_s(wchar_t (&_Destination)[_Size], wchar_t const* _Source) throw() { return wcscpy_s(_Destination, _Size, _Source); } }





__declspec(deprecated("This function or variable may be unsafe. Consider using " "wcscpy_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __declspec(dllimport) wchar_t* __cdecl wcscpy( wchar_t *_Destination, wchar_t const* _Source);






__declspec(dllimport) size_t __cdecl wcscspn(
           wchar_t const* _String,
           wchar_t const* _Control
    );


__declspec(dllimport) size_t __cdecl wcslen(
           wchar_t const* _String
    );
# 143 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_wstring.h"
__declspec(dllimport) size_t __cdecl wcsnlen(
                               wchar_t const* _Source,
                               size_t _MaxCount
    );
# 159 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_wstring.h"
    static __inline size_t __cdecl wcsnlen_s(
                                   wchar_t const* _Source,
                                   size_t _MaxCount
        )
    {
        return (_Source == 0) ? 0 : wcsnlen(_Source, _MaxCount);
    }



extern "C++" { template <size_t _Size> inline errno_t __cdecl wcsncat_s(wchar_t (&_Destination)[_Size], wchar_t const* _Source, size_t _Count) throw() { return wcsncat_s(_Destination, _Size, _Source, _Count); } }






__declspec(deprecated("This function or variable may be unsafe. Consider using " "wcsncat_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __declspec(dllimport) wchar_t* __cdecl wcsncat( wchar_t *_Destination, wchar_t const* _Source, size_t _Count);
# 185 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_wstring.h"
__declspec(dllimport) int __cdecl wcsncmp(
                               wchar_t const* _String1,
                               wchar_t const* _String2,
                               size_t _MaxCount
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl wcsncpy_s(wchar_t (&_Destination)[_Size], wchar_t const* _Source, size_t _Count) throw() { return wcsncpy_s(_Destination, _Size, _Source, _Count); } }






__declspec(deprecated("This function or variable may be unsafe. Consider using " "wcsncpy_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __declspec(dllimport) wchar_t* __cdecl wcsncpy( wchar_t *_Destination, wchar_t const* _Source, size_t _Count);
# 207 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_wstring.h"
__declspec(dllimport) wchar_t const* __cdecl wcspbrk(
           wchar_t const* _String,
           wchar_t const* _Control
    );


__declspec(dllimport) size_t __cdecl wcsspn(
           wchar_t const* _String,
           wchar_t const* _Control
    );

               __declspec(deprecated("This function or variable may be unsafe. Consider using " "wcstok_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
__declspec(dllimport) wchar_t* __cdecl wcstok(
                                      wchar_t* _String,
                                      wchar_t const* _Delimiter,
                                      wchar_t** _Context
    );
# 236 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_wstring.h"
#pragma warning(push)
#pragma warning(disable: 4141 4996)

 __declspec(deprecated("This function or variable may be unsafe. Consider using " "wcstok_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
    static __inline wchar_t* __cdecl _wcstok(
                      wchar_t* const _String,
                      wchar_t const* const _Delimiter
        )
    {
        return wcstok(_String, _Delimiter, 0);
    }






        extern "C++" __declspec(deprecated("wcstok has been changed to conform with the ISO C standard, " "adding an extra context parameter. To use the legacy Microsoft " "wcstok, define _CRT_NON_CONFORMING_WCSTOK."))
        inline wchar_t* __cdecl wcstok(
                          wchar_t* _String,
                          wchar_t const* _Delimiter
            ) throw()
        {
            return wcstok(_String, _Delimiter, 0);
        }


#pragma warning(pop)






 __declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcserror_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
__declspec(dllimport) wchar_t* __cdecl _wcserror(
         int _ErrorNumber
    );


__declspec(dllimport) errno_t __cdecl _wcserror_s(
                                     wchar_t* _Buffer,
                                     size_t _SizeInWords,
                                     int _ErrorNumber
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcserror_s(wchar_t (&_Buffer)[_Size], int _Error) throw() { return _wcserror_s(_Buffer, _Size, _Error); } }







               __declspec(deprecated("This function or variable may be unsafe. Consider using " "__wcserror_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
__declspec(dllimport) wchar_t* __cdecl __wcserror(
               wchar_t const* _String
    );

                   __declspec(dllimport) errno_t __cdecl __wcserror_s(
                                     wchar_t* _Buffer,
                                     size_t _SizeInWords,
                                     wchar_t const* _ErrorMessage
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl __wcserror_s(wchar_t (&_Buffer)[_Size], wchar_t const* _ErrorMessage) throw() { return __wcserror_s(_Buffer, _Size, _ErrorMessage); } }





               __declspec(dllimport) int __cdecl _wcsicmp(
           wchar_t const* _String1,
           wchar_t const* _String2
    );

               __declspec(dllimport) int __cdecl _wcsicmp_l(
             wchar_t const* _String1,
             wchar_t const* _String2,
             _locale_t _Locale
    );

               __declspec(dllimport) int __cdecl _wcsnicmp(
                               wchar_t const* _String1,
                               wchar_t const* _String2,
                               size_t _MaxCount
    );

               __declspec(dllimport) int __cdecl _wcsnicmp_l(
                               wchar_t const* _String1,
                               wchar_t const* _String2,
                               size_t _MaxCount,
                               _locale_t _Locale
    );

                   __declspec(dllimport) errno_t __cdecl _wcsnset_s(
                                    wchar_t* _Destination,
                                    size_t _SizeInWords,
                                    wchar_t _Value,
                                    size_t _MaxCount
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcsnset_s(wchar_t (&_Destination)[_Size], wchar_t _Value, size_t _MaxCount) throw() { return _wcsnset_s(_Destination, _Size, _Value, _MaxCount); } }






__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcsnset_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __declspec(dllimport) wchar_t* __cdecl _wcsnset( wchar_t *_String, wchar_t _Value, size_t _MaxCount);







__declspec(dllimport) wchar_t* __cdecl _wcsrev(
              wchar_t* _String
    );

                   __declspec(dllimport) errno_t __cdecl _wcsset_s(
                                    wchar_t* _Destination,
                                    size_t _SizeInWords,
                                    wchar_t _Value
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcsset_s(wchar_t (&_String)[_Size], wchar_t _Value) throw() { return _wcsset_s(_String, _Size, _Value); } }





__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcsset_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __declspec(dllimport) wchar_t* __cdecl _wcsset( wchar_t *_String, wchar_t _Value);






                   __declspec(dllimport) errno_t __cdecl _wcslwr_s(
                                    wchar_t* _String,
                                    size_t _SizeInWords
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcslwr_s(wchar_t (&_String)[_Size]) throw() { return _wcslwr_s(_String, _Size); } }




__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcslwr_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __declspec(dllimport) wchar_t* __cdecl _wcslwr( wchar_t *_String);





__declspec(dllimport) errno_t __cdecl _wcslwr_s_l(
                                    wchar_t* _String,
                                    size_t _SizeInWords,
                                    _locale_t _Locale
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcslwr_s_l(wchar_t (&_String)[_Size], _locale_t _Locale) throw() { return _wcslwr_s_l(_String, _Size, _Locale); } }





__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcslwr_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __declspec(dllimport) wchar_t* __cdecl _wcslwr_l( wchar_t *_String, _locale_t _Locale);







__declspec(dllimport) errno_t __cdecl _wcsupr_s(
                             wchar_t* _String,
                             size_t _Size
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcsupr_s(wchar_t (&_String)[_Size]) throw() { return _wcsupr_s(_String, _Size); } }




__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcsupr_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __declspec(dllimport) wchar_t* __cdecl _wcsupr( wchar_t *_String);





__declspec(dllimport) errno_t __cdecl _wcsupr_s_l(
                             wchar_t* _String,
                             size_t _Size,
                             _locale_t _Locale
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _wcsupr_s_l(wchar_t (&_String)[_Size], _locale_t _Locale) throw() { return _wcsupr_s_l(_String, _Size, _Locale); } }





__declspec(deprecated("This function or variable may be unsafe. Consider using " "_wcsupr_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __declspec(dllimport) wchar_t* __cdecl _wcsupr_l( wchar_t *_String, _locale_t _Locale);
# 449 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_wstring.h"
__declspec(dllimport) size_t __cdecl wcsxfrm(
                                              wchar_t* _Destination,
                                              wchar_t const* _Source,
                                              size_t _MaxCount
    );



__declspec(dllimport) size_t __cdecl _wcsxfrm_l(
                                              wchar_t* _Destination,
                                              wchar_t const* _Source,
                                              size_t _MaxCount,
                                              _locale_t _Locale
    );


__declspec(dllimport) int __cdecl wcscoll(
           wchar_t const* _String1,
           wchar_t const* _String2
    );


__declspec(dllimport) int __cdecl _wcscoll_l(
             wchar_t const* _String1,
             wchar_t const* _String2,
             _locale_t _Locale
    );


__declspec(dllimport) int __cdecl _wcsicoll(
           wchar_t const* _String1,
           wchar_t const* _String2
    );


__declspec(dllimport) int __cdecl _wcsicoll_l(
             wchar_t const* _String1,
             wchar_t const* _String2,
             _locale_t _Locale
    );


__declspec(dllimport) int __cdecl _wcsncoll(
                               wchar_t const* _String1,
                               wchar_t const* _String2,
                               size_t _MaxCount
    );


__declspec(dllimport) int __cdecl _wcsncoll_l(
                               wchar_t const* _String1,
                               wchar_t const* _String2,
                               size_t _MaxCount,
                               _locale_t _Locale
    );


__declspec(dllimport) int __cdecl _wcsnicoll(
                               wchar_t const* _String1,
                               wchar_t const* _String2,
                               size_t _MaxCount
    );


__declspec(dllimport) int __cdecl _wcsnicoll_l(
                               wchar_t const* _String1,
                               wchar_t const* _String2,
                               size_t _MaxCount,
                               _locale_t _Locale
    );
# 528 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_wstring.h"
extern "C++" {



    inline wchar_t* __cdecl wcschr( wchar_t* _String, wchar_t _C)
    {
        return const_cast<wchar_t*>(wcschr(static_cast<wchar_t const*>(_String), _C));
    }


    inline wchar_t* __cdecl wcspbrk( wchar_t* _String, wchar_t const* _Control)
    {
        return const_cast<wchar_t*>(wcspbrk(static_cast<wchar_t const*>(_String), _Control));
    }


    inline wchar_t* __cdecl wcsrchr( wchar_t* _String, wchar_t _C)
    {
        return const_cast<wchar_t*>(wcsrchr(static_cast<wchar_t const*>(_String), _C));
    }



    inline wchar_t* __cdecl wcsstr( wchar_t* _String, wchar_t const*_SubStr)
    {
        return const_cast<wchar_t*>(wcsstr(static_cast<wchar_t const*>(_String), _SubStr));
    }

}
# 572 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_wstring.h"
                   __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_wcsdup" ". See online help for details."))
    __declspec(dllimport) wchar_t* __cdecl wcsdup(
               wchar_t const* _String
        );
# 584 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_wstring.h"
                   __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_wcsicmp" ". See online help for details."))
    __declspec(dllimport) int __cdecl wcsicmp(
               wchar_t const* _String1,
               wchar_t const* _String2
        );

                   __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_wcsnicmp" ". See online help for details."))
    __declspec(dllimport) int __cdecl wcsnicmp(
                                   wchar_t const* _String1,
                                   wchar_t const* _String2,
                                   size_t _MaxCount
        );

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_wcsnset" ". See online help for details."))

    __declspec(dllimport) wchar_t* __cdecl wcsnset(
                                     wchar_t* _String,
                                     wchar_t _Value,
                                     size_t _MaxCount
        );

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_wcsrev" ". See online help for details."))

    __declspec(dllimport) wchar_t* __cdecl wcsrev(
                  wchar_t* _String
        );

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_wcsset" ". See online help for details."))

    __declspec(dllimport) wchar_t* __cdecl wcsset(
                  wchar_t* _String,
                  wchar_t _Value
        );

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_wcslwr" ". See online help for details."))

    __declspec(dllimport) wchar_t* __cdecl wcslwr(
                  wchar_t* _String
        );

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_wcsupr" ". See online help for details."))

    __declspec(dllimport) wchar_t* __cdecl wcsupr(
                  wchar_t* _String
        );

                   __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_wcsicoll" ". See online help for details."))
    __declspec(dllimport) int __cdecl wcsicoll(
               wchar_t const* _String1,
               wchar_t const* _String2
        );





}
# 640 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\corecrt_wstring.h"
#pragma pack(pop)
# 13 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\string.h" 2





#pragma pack(push, 8)
# 18 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\string.h"
 extern "C" {
# 27 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\string.h"
    __declspec(dllimport) errno_t __cdecl strcpy_s(
                                     char* _Destination,
                                     rsize_t _SizeInBytes,
                                     char const* _Source
        );


    __declspec(dllimport) errno_t __cdecl strcat_s(
                                        char* _Destination,
                                        rsize_t _SizeInBytes,
                                        char const* _Source
        );


    __declspec(dllimport) errno_t __cdecl strerror_s(
                                     char* _Buffer,
                                     size_t _SizeInBytes,
                                     int _ErrorNumber);


    __declspec(dllimport) errno_t __cdecl strncat_s(
                                        char* _Destination,
                                        rsize_t _SizeInBytes,
                                        char const* _Source,
                                        rsize_t _MaxCount
        );


    __declspec(dllimport) errno_t __cdecl strncpy_s(
                                     char* _Destination,
                                     rsize_t _SizeInBytes,
                                     char const* _Source,
                                     rsize_t _MaxCount
        );


    __declspec(dllimport) char* __cdecl strtok_s(
                                      char* _String,
                                      char const* _Delimiter,
                                      char** _Context
        );



__declspec(dllimport) void* __cdecl _memccpy(
                                      void* _Dst,
                                      void const* _Src,
                                      int _Val,
                                      size_t _MaxCount
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl strcat_s(char (&_Destination)[_Size], char const* _Source) throw() { return strcat_s(_Destination, _Size, _Source); } }







    __declspec(deprecated("This function or variable may be unsafe. Consider using " "strcat_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) char* __cdecl strcat( char *_Destination, char const* _Source);
# 95 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\string.h"
int __cdecl strcmp(
           char const* _Str1,
           char const* _Str2
    );


__declspec(dllimport) int __cdecl _strcmpi(
           char const* _String1,
           char const* _String2
    );


__declspec(dllimport) int __cdecl strcoll(
           char const* _String1,
           char const* _String2
    );


__declspec(dllimport) int __cdecl _strcoll_l(
             char const* _String1,
             char const* _String2,
             _locale_t _Locale
    );

char* __cdecl strcpy(
                                                 char* _Dest,
                                                 char const* _Source
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl strcpy_s(char (&_Destination)[_Size], char const* _Source) throw() { return strcpy_s(_Destination, _Size, _Source); } }





__declspec(deprecated("This function or variable may be unsafe. Consider using " "strcpy_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) char* __cdecl strcpy( char *_Destination, char const* _Source);






__declspec(dllimport) size_t __cdecl strcspn(
           char const* _Str,
           char const* _Control
    );







__declspec(dllimport) __declspec(allocator) char* __cdecl _strdup(
               char const* _Source
    );







               __declspec(deprecated("This function or variable may be unsafe. Consider using " "_strerror_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
__declspec(dllimport) char* __cdecl _strerror(
               char const* _ErrorMessage
    );


__declspec(dllimport) errno_t __cdecl _strerror_s(
                                 char* _Buffer,
                                 size_t _SizeInBytes,
                                 char const* _ErrorMessage
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _strerror_s(char (&_Buffer)[_Size], char const* _ErrorMessage) throw() { return _strerror_s(_Buffer, _Size, _ErrorMessage); } }






               __declspec(deprecated("This function or variable may be unsafe. Consider using " "strerror_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
__declspec(dllimport) char* __cdecl strerror(
         int _ErrorMessage
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl strerror_s(char (&_Buffer)[_Size], int _ErrorMessage) throw() { return strerror_s(_Buffer, _Size, _ErrorMessage); } }






__declspec(dllimport) int __cdecl _stricmp(
           char const* _String1,
           char const* _String2
    );


__declspec(dllimport) int __cdecl _stricoll(
           char const* _String1,
           char const* _String2
    );


__declspec(dllimport) int __cdecl _stricoll_l(
             char const* _String1,
             char const* _String2,
             _locale_t _Locale
    );


__declspec(dllimport) int __cdecl _stricmp_l(
             char const* _String1,
             char const* _String2,
             _locale_t _Locale
    );


size_t __cdecl strlen(
           char const* _Str
    );


__declspec(dllimport) errno_t __cdecl _strlwr_s(
                             char* _String,
                             size_t _Size
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _strlwr_s(char (&_String)[_Size]) throw() { return _strlwr_s(_String, _Size); } }




__declspec(deprecated("This function or variable may be unsafe. Consider using " "_strlwr_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __declspec(dllimport) char* __cdecl _strlwr( char *_String);





__declspec(dllimport) errno_t __cdecl _strlwr_s_l(
                             char* _String,
                             size_t _Size,
                             _locale_t _Locale
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _strlwr_s_l(char (&_String)[_Size], _locale_t _Locale) throw() { return _strlwr_s_l(_String, _Size, _Locale); } }





__declspec(deprecated("This function or variable may be unsafe. Consider using " "_strlwr_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __declspec(dllimport) char* __cdecl _strlwr_l( char *_String, _locale_t _Locale);






__declspec(dllimport) char* __cdecl strncat(
                              char* _Dest,
                              char const* _Source,
                              size_t _Count
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl strncat_s(char (&_Destination)[_Size], char const* _Source, size_t _Count) throw() { return strncat_s(_Destination, _Size, _Source, _Count); } }






__declspec(deprecated("This function or variable may be unsafe. Consider using " "strncat_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __declspec(dllimport) char* __cdecl strncat( char *_Destination, char const* _Source, size_t _Count);
# 277 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\string.h"
__declspec(dllimport) int __cdecl strncmp(
                               char const* _Str1,
                               char const* _Str2,
                               size_t _MaxCount
    );


__declspec(dllimport) int __cdecl _strnicmp(
                               char const* _String1,
                               char const* _String2,
                               size_t _MaxCount
    );


__declspec(dllimport) int __cdecl _strnicmp_l(
                               char const* _String1,
                               char const* _String2,
                               size_t _MaxCount,
                               _locale_t _Locale
    );


__declspec(dllimport) int __cdecl _strnicoll(
                               char const* _String1,
                               char const* _String2,
                               size_t _MaxCount
    );


__declspec(dllimport) int __cdecl _strnicoll_l(
                               char const* _String1,
                               char const* _String2,
                               size_t _MaxCount,
                               _locale_t _Locale
    );


__declspec(dllimport) int __cdecl _strncoll(
                               char const* _String1,
                               char const* _String2,
                               size_t _MaxCount
    );


__declspec(dllimport) int __cdecl _strncoll_l(
                               char const* _String1,
                               char const* _String2,
                               size_t _MaxCount,
                               _locale_t _Locale
    );

__declspec(dllimport) size_t __cdecl __strncnt(
                            char const* _String,
                            size_t _Count
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl strncpy_s(char (&_Destination)[_Size], char const* _Source, size_t _Count) throw() { return strncpy_s(_Destination, _Size, _Source, _Count); } }






__declspec(deprecated("This function or variable may be unsafe. Consider using " "strncpy_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __declspec(dllimport) char* __cdecl strncpy( char *_Destination, char const* _Source, size_t _Count);
# 357 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\string.h"
__declspec(dllimport) size_t __cdecl strnlen(
                               char const* _String,
                               size_t _MaxCount
    );
# 373 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\string.h"
    static __inline size_t __cdecl strnlen_s(
                                   char const* _String,
                                   size_t _MaxCount
        )
    {
        return _String == 0 ? 0 : strnlen(_String, _MaxCount);
    }



__declspec(dllimport) char* __cdecl _strnset(
                              char* _Dest,
                              int _Val,
                              size_t _Count
    );


__declspec(dllimport) errno_t __cdecl _strnset_s(
                                    char* _String,
                                    size_t _SizeInBytes,
                                    int _Value,
                                    size_t _MaxCount
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _strnset_s(char (&_Destination)[_Size], int _Value, size_t _Count) throw() { return _strnset_s(_Destination, _Size, _Value, _Count); } }






__declspec(deprecated("This function or variable may be unsafe. Consider using " "_strnset_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __declspec(dllimport) char* __cdecl _strnset( char *_Destination, int _Value, size_t _Count);
# 413 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\string.h"
__declspec(dllimport) char const* __cdecl strpbrk(
           char const* _Str,
           char const* _Control
    );

__declspec(dllimport) char* __cdecl _strrev(
              char* _Str
    );


__declspec(dllimport) errno_t __cdecl _strset_s(
                                        char* _Destination,
                                        size_t _DestinationSize,
                                        int _Value
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _strset_s(char (&_Destination)[_Size], int _Value) throw() { return _strset_s(_Destination, _Size, _Value); } }





__declspec(deprecated("This function or variable may be unsafe. Consider using " "_strset_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) char* __cdecl _strset( char *_Destination, int _Value);





char* __cdecl _strset(
              char* _Dest,
              int _Value
    );


__declspec(dllimport) size_t __cdecl strspn(
           char const* _Str,
           char const* _Control
    );

               __declspec(deprecated("This function or variable may be unsafe. Consider using " "strtok_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details."))
__declspec(dllimport) char* __cdecl strtok(
                  char* _String,
                  char const* _Delimiter
    );


__declspec(dllimport) errno_t __cdecl _strupr_s(
                             char* _String,
                             size_t _Size
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _strupr_s(char (&_String)[_Size]) throw() { return _strupr_s(_String, _Size); } }




__declspec(deprecated("This function or variable may be unsafe. Consider using " "_strupr_s" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __declspec(dllimport) char* __cdecl _strupr( char *_String);





__declspec(dllimport) errno_t __cdecl _strupr_s_l(
                             char* _String,
                             size_t _Size,
                             _locale_t _Locale
    );

extern "C++" { template <size_t _Size> inline errno_t __cdecl _strupr_s_l(char (&_String)[_Size], _locale_t _Locale) throw() { return _strupr_s_l(_String, _Size, _Locale); } }





__declspec(deprecated("This function or variable may be unsafe. Consider using " "_strupr_s_l" " instead. To disable deprecation, use _CRT_SECURE_NO_WARNINGS. " "See online help for details.")) __declspec(dllimport) char* __cdecl _strupr_l( char *_String, _locale_t _Locale);
# 496 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\string.h"
__declspec(dllimport) size_t __cdecl strxfrm(
                                              char* _Destination,
                                              char const* _Source,
                                              size_t _MaxCount
    );



__declspec(dllimport) size_t __cdecl _strxfrm_l(
                                              char* _Destination,
                                              char const* _Source,
                                              size_t _MaxCount,
                                              _locale_t _Locale
    );




extern "C++"
{

    inline char* __cdecl strchr( char* const _String, int const _Ch)
    {
        return const_cast<char*>(strchr(static_cast<char const*>(_String), _Ch));
    }


    inline char* __cdecl strpbrk( char* const _String, char const* const _Control)
    {
        return const_cast<char*>(strpbrk(static_cast<char const*>(_String), _Control));
    }


    inline char* __cdecl strrchr( char* const _String, int const _Ch)
    {
        return const_cast<char*>(strrchr(static_cast<char const*>(_String), _Ch));
    }


    inline char* __cdecl strstr( char* const _String, char const* const _SubString)
    {
        return const_cast<char*>(strstr(static_cast<char const*>(_String), _SubString));
    }
}
# 551 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\string.h"
                   __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_strdup" ". See online help for details."))
    __declspec(dllimport) char* __cdecl strdup(
                   char const* _String
        );






                   __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_strcmpi" ". See online help for details."))
    __declspec(dllimport) int __cdecl strcmpi(
               char const* _String1,
               char const* _String2
        );

                   __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_stricmp" ". See online help for details."))
    __declspec(dllimport) int __cdecl stricmp(
               char const* _String1,
               char const* _String2
        );

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_strlwr" ". See online help for details."))
    __declspec(dllimport) char* __cdecl strlwr(
                  char* _String
        );

                   __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_strnicmp" ". See online help for details."))
    __declspec(dllimport) int __cdecl strnicmp(
                                   char const* _String1,
                                   char const* _String2,
                                   size_t _MaxCount
        );

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_strnset" ". See online help for details."))
    __declspec(dllimport) char* __cdecl strnset(
                                     char* _String,
                                     int _Value,
                                     size_t _MaxCount
        );

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_strrev" ". See online help for details."))
    __declspec(dllimport) char* __cdecl strrev(
                  char* _String
        );

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_strset" ". See online help for details."))
    char* __cdecl strset(
                  char* _String,
                  int _Value);

    __declspec(deprecated("The POSIX name for this item is deprecated. Instead, use the ISO C " "and C++ conformant name: " "_strupr" ". See online help for details."))
    __declspec(dllimport) char* __cdecl strupr(
                  char* _String
        );





}
# 611 "C:\\Program Files (x86)\\Windows Kits\\10\\Include\\10.0.10240.0\\ucrt\\string.h"
#pragma pack(pop)
# 24 "f:\\projects\\cocos\\inventory\\cocos2d\\external\\box2d\\common\\b2blockallocator.cpp" 2

int32 b2BlockAllocator::s_blockSizes[b2_blockSizes] =
{
 16,
 32,
 64,
 96,
 128,
 160,
 192,
 224,
 256,
 320,
 384,
 448,
 512,
 640,
};
uint8 b2BlockAllocator::s_blockSizeLookup[b2_maxBlockSize + 1];
bool b2BlockAllocator::s_blockSizeLookupInitialized;

struct b2Chunk
{
 int32 blockSize;
 b2Block* blocks;
};

struct b2Block
{
 b2Block* next;
};

b2BlockAllocator::b2BlockAllocator()
{
 (void)( (!!(b2_blockSizes < 0xff)) || (_wassert(L"b2_blockSizes < 0xff", L"f:\\projects\\cocos\\inventory\\cocos2d\\external\\box2d\\common\\b2blockallocator.cpp", (unsigned)(58)), 0) );

 m_chunkSpace = b2_chunkArrayIncrement;
 m_chunkCount = 0;
 m_chunks = (b2Chunk*)b2Alloc(m_chunkSpace * sizeof(b2Chunk));

 memset(m_chunks, 0, m_chunkSpace * sizeof(b2Chunk));
 memset(m_freeLists, 0, sizeof(m_freeLists));

 if (s_blockSizeLookupInitialized == false)
 {
  int32 j = 0;
  for (int32 i = 1; i <= b2_maxBlockSize; ++i)
  {
   (void)( (!!(j < b2_blockSizes)) || (_wassert(L"j < b2_blockSizes", L"f:\\projects\\cocos\\inventory\\cocos2d\\external\\box2d\\common\\b2blockallocator.cpp", (unsigned)(72)), 0) );
   if (i <= s_blockSizes[j])
   {
    s_blockSizeLookup[i] = (uint8)j;
   }
   else
   {
    ++j;
    s_blockSizeLookup[i] = (uint8)j;
   }
  }

  s_blockSizeLookupInitialized = true;
 }
}

b2BlockAllocator::~b2BlockAllocator()
{
 for (int32 i = 0; i < m_chunkCount; ++i)
 {
  b2Free(m_chunks[i].blocks);
 }

 b2Free(m_chunks);
}

void* b2BlockAllocator::Allocate(int32 size)
{
 if (size == 0)
  return 0;

 (void)( (!!(0 < size)) || (_wassert(L"0 < size", L"f:\\projects\\cocos\\inventory\\cocos2d\\external\\box2d\\common\\b2blockallocator.cpp", (unsigned)(103)), 0) );

 if (size > b2_maxBlockSize)
 {
  return b2Alloc(size);
 }

 int32 index = s_blockSizeLookup[size];
 (void)( (!!(0 <= index && index < b2_blockSizes)) || (_wassert(L"0 <= index && index < b2_blockSizes", L"f:\\projects\\cocos\\inventory\\cocos2d\\external\\box2d\\common\\b2blockallocator.cpp", (unsigned)(111)), 0) );

 if (m_freeLists[index])
 {
  b2Block* block = m_freeLists[index];
  m_freeLists[index] = block->next;
  return block;
 }
 else
 {
  if (m_chunkCount == m_chunkSpace)
  {
   b2Chunk* oldChunks = m_chunks;
   m_chunkSpace += b2_chunkArrayIncrement;
   m_chunks = (b2Chunk*)b2Alloc(m_chunkSpace * sizeof(b2Chunk));
   memcpy(m_chunks, oldChunks, m_chunkCount * sizeof(b2Chunk));
   memset(m_chunks + m_chunkCount, 0, b2_chunkArrayIncrement * sizeof(b2Chunk));
   b2Free(oldChunks);
  }

  b2Chunk* chunk = m_chunks + m_chunkCount;
  chunk->blocks = (b2Block*)b2Alloc(b2_chunkSize);

  memset(chunk->blocks, 0xcd, b2_chunkSize);

  int32 blockSize = s_blockSizes[index];
  chunk->blockSize = blockSize;
  int32 blockCount = b2_chunkSize / blockSize;
  (void)( (!!(blockCount * blockSize <= b2_chunkSize)) || (_wassert(L"blockCount * blockSize <= b2_chunkSize", L"f:\\projects\\cocos\\inventory\\cocos2d\\external\\box2d\\common\\b2blockallocator.cpp", (unsigned)(139)), 0) );
  for (int32 i = 0; i < blockCount - 1; ++i)
  {
   b2Block* block = (b2Block*)((int8*)chunk->blocks + blockSize * i);
   b2Block* next = (b2Block*)((int8*)chunk->blocks + blockSize * (i + 1));
   block->next = next;
  }
  b2Block* last = (b2Block*)((int8*)chunk->blocks + blockSize * (blockCount - 1));
  last->next = 0;

  m_freeLists[index] = chunk->blocks->next;
  ++m_chunkCount;

  return chunk->blocks;
 }
}

void b2BlockAllocator::Free(void* p, int32 size)
{
 if (size == 0)
 {
  return;
 }

 (void)( (!!(0 < size)) || (_wassert(L"0 < size", L"f:\\projects\\cocos\\inventory\\cocos2d\\external\\box2d\\common\\b2blockallocator.cpp", (unsigned)(163)), 0) );

 if (size > b2_maxBlockSize)
 {
  b2Free(p);
  return;
 }

 int32 index = s_blockSizeLookup[size];
 (void)( (!!(0 <= index && index < b2_blockSizes)) || (_wassert(L"0 <= index && index < b2_blockSizes", L"f:\\projects\\cocos\\inventory\\cocos2d\\external\\box2d\\common\\b2blockallocator.cpp", (unsigned)(172)), 0) );



 int32 blockSize = s_blockSizes[index];
 bool found = false;
 for (int32 i = 0; i < m_chunkCount; ++i)
 {
  b2Chunk* chunk = m_chunks + i;
  if (chunk->blockSize != blockSize)
  {
   (void)( (!!((int8*)p + blockSize <= (int8*)chunk->blocks || (int8*)chunk->blocks + b2_chunkSize <= (int8*)p)) || (_wassert(L"(int8*)p + blockSize <= (int8*)chunk->blocks || (int8*)chunk->blocks + b2_chunkSize <= (int8*)p", L"f:\\projects\\cocos\\inventory\\cocos2d\\external\\box2d\\common\\b2blockallocator.cpp", (unsigned)(184)), 0) );

  }
  else
  {
   if ((int8*)chunk->blocks <= (int8*)p && (int8*)p + blockSize <= (int8*)chunk->blocks + b2_chunkSize)
   {
    found = true;
   }
  }
 }

 (void)( (!!(found)) || (_wassert(L"found", L"f:\\projects\\cocos\\inventory\\cocos2d\\external\\box2d\\common\\b2blockallocator.cpp", (unsigned)(195)), 0) );

 memset(p, 0xfd, blockSize);


 b2Block* block = (b2Block*)p;
 block->next = m_freeLists[index];
 m_freeLists[index] = block;
}

void b2BlockAllocator::Clear()
{
 for (int32 i = 0; i < m_chunkCount; ++i)
 {
  b2Free(m_chunks[i].blocks);
 }

 m_chunkCount = 0;
 memset(m_chunks, 0, m_chunkSpace * sizeof(b2Chunk));

 memset(m_freeLists, 0, sizeof(m_freeLists));
}
