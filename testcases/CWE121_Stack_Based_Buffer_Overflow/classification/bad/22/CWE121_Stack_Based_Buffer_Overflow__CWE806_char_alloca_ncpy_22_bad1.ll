@global_var_fff = external global ptr
@CWE121_Stack_Based_Buffer_Overflow__CWE806_char_alloca_ncpy_22_badGlobal = external local_unnamed_addr global i32
@global_var_1000 = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_2f6ad:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-72 = alloca i64, align 8
  %data_-88 = alloca ptr, align 8
  %0 = ptrtoint ptr %data_-88 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_2f6f6

dec_label_pc_2f6f6:                               ; preds = %dec_label_pc_2f6f6, %dec_label_pc_2f6ad
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_2f70d, label %dec_label_pc_2f6f6

dec_label_pc_2f70d:                               ; preds = %dec_label_pc_2f6f6
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 112
  %constexpr2 = sub i64 0, %constexpr1
  %constexpr3 = add i64 %constexpr2, 15
  %4 = add i64 %0, %constexpr3
  %5 = and i64 %4, -16
  %6 = inttoptr i64 %5 to ptr
  store ptr %6, ptr %data_-88, align 8
  store i32 1, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE806_char_alloca_ncpy_22_badGlobal, align 4
  %7 = call ptr @anon1(ptr %6)
  store i64 0, ptr %stack_var_-72, align 8
  %8 = call i32 @strlen(ptr %7)
  %9 = bitcast ptr %stack_var_-72 to ptr
  %10 = call ptr @strncpy(ptr nonnull %9, ptr %7, i32 %8)
  call void @printLine(ptr %7)
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %1, %11
  br i1 %12, label %dec_label_pc_2f7e9, label %dec_label_pc_2f7e4

dec_label_pc_2f7e4:                               ; preds = %dec_label_pc_2f70d
  call void @__stack_chk_fail()
  br label %dec_label_pc_2f7e9

dec_label_pc_2f7e9:                               ; preds = %dec_label_pc_2f7e4, %dec_label_pc_2f70d
  ret void
}

define ptr @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_2fa86:
  %0 = load i32, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE806_char_alloca_ncpy_22_badGlobal, align 4
  %1 = icmp eq i32 %0, 0
  br i1 %1, label %dec_label_pc_2fac1, label %dec_label_pc_2faa0

dec_label_pc_2faa0:                               ; preds = %dec_label_pc_2fa86
  %2 = bitcast ptr %data to ptr
  %3 = call ptr @memset(ptr %2, i32 65, i32 99)
  %4 = ptrtoint ptr %data to i64
  %5 = add i64 %4, 99
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  br label %dec_label_pc_2fac1

dec_label_pc_2fac1:                               ; preds = %dec_label_pc_2faa0, %dec_label_pc_2fa86
  ret ptr %data
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_79be7:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_79c0a, label %dec_label_pc_79bfe

dec_label_pc_79bfe:                               ; preds = %dec_label_pc_79be7
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_79c0a

dec_label_pc_79c0a:                               ; preds = %dec_label_pc_79bfe, %dec_label_pc_79be7
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @strncpy(ptr, ptr, i32) local_unnamed_addr

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

