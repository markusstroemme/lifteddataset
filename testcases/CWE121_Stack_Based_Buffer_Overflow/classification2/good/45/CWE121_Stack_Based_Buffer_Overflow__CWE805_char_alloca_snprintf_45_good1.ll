@global_var_1000 = external global ptr
@global_var_8148e = external constant [3 x i8]
@CWE121_Stack_Based_Buffer_Overflow__CWE805_char_alloca_snprintf_45_goodG2BData = external local_unnamed_addr global i64
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_3e061:
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i64, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE805_char_alloca_snprintf_45_goodG2BData, align 8
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = inttoptr i64 %1 to ptr
  %4 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr %3, i32 100, ptr @global_var_8148e, ptr nonnull %stack_var_-120)
  call void @printLine(ptr %3)
  %5 = call i64 @__readfsqword(i64 40)
  %6 = icmp eq i64 %0, %5
  br i1 %6, label %dec_label_pc_3e0e6, label %dec_label_pc_3e0e1

dec_label_pc_3e0e1:                               ; preds = %dec_label_pc_3e061
  call void @__stack_chk_fail()
  br label %dec_label_pc_3e0e6

dec_label_pc_3e0e6:                               ; preds = %dec_label_pc_3e0e1, %dec_label_pc_3e061
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_3e0e8:
  %rsp.1.reg2mem = alloca i64, align 8
  %rsp.0.reg2mem = alloca i64, align 8
  %dataGoodBuffer_-40 = alloca ptr, align 8
  %0 = ptrtoint ptr %dataGoodBuffer_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_3e131

dec_label_pc_3e131:                               ; preds = %dec_label_pc_3e131, %dec_label_pc_3e0e8
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %2 = icmp eq i64 %rsp.0.reload, %0
  %3 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br i1 %2, label %dec_label_pc_3e148, label %dec_label_pc_3e131

dec_label_pc_3e148:                               ; preds = %dec_label_pc_3e131
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr1 = and i64 %constexpr, 64
  %4 = sub i64 %0, %constexpr1
  %5 = add i64 %4, 15
  %6 = and i64 %5, -16
  %7 = inttoptr i64 %6 to ptr
  store ptr %7, ptr %dataGoodBuffer_-40, align 8
  store i64 %4, ptr %rsp.1.reg2mem, align 8
  br label %dec_label_pc_3e1b3

dec_label_pc_3e1b3:                               ; preds = %dec_label_pc_3e1b3, %dec_label_pc_3e148
  %rsp.1.reload = load i64, ptr %rsp.1.reg2mem, align 8
  %8 = icmp eq i64 %rsp.1.reload, %4
  %9 = sub i64 %rsp.1.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %9, ptr %rsp.1.reg2mem, align 8
  br i1 %8, label %dec_label_pc_3e1ca, label %dec_label_pc_3e1b3

dec_label_pc_3e1ca:                               ; preds = %dec_label_pc_3e1b3
  %constexpr2 = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %constexpr3 = and i64 %constexpr2, 112
  %constexpr4 = sub i64 0, %constexpr3
  %constexpr5 = add i64 %constexpr4, 15
  %10 = add i64 %4, %constexpr5
  %11 = and i64 %10, -16
  %12 = inttoptr i64 %11 to ptr
  store i8 0, ptr %12, align 16
  store i64 %11, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE805_char_alloca_snprintf_45_goodG2BData, align 8
  call void @anon0()
  %13 = call i64 @__readfsqword(i64 40)
  %14 = icmp eq i64 %1, %13
  br i1 %14, label %dec_label_pc_3e240, label %dec_label_pc_3e23b

dec_label_pc_3e23b:                               ; preds = %dec_label_pc_3e1ca
  call void @__stack_chk_fail()
  br label %dec_label_pc_3e240

dec_label_pc_3e240:                               ; preds = %dec_label_pc_3e23b, %dec_label_pc_3e1ca
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_6d99d:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_6d9c0, label %dec_label_pc_6d9b4

dec_label_pc_6d9b4:                               ; preds = %dec_label_pc_6d99d
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_6d9c0

dec_label_pc_6d9c0:                               ; preds = %dec_label_pc_6d9b4, %dec_label_pc_6d99d
  ret void
}

declare ptr @memset(ptr, i32, i32) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i32 @snprintf(ptr, i32, ptr, ...) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

