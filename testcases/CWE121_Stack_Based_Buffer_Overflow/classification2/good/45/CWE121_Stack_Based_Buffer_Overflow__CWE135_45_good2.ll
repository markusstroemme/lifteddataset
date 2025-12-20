@global_var_1000 = external global ptr
@CWE121_Stack_Based_Buffer_Overflow__CWE135_45_goodB2GData = external local_unnamed_addr global i64
@global_var_fff = external global i32
@global_var_baa78 = external constant i64
@global_var_c074c = external constant [5 x i32]

define void @anon0() local_unnamed_addr {
dec_label_pc_63a2b:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-40 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = load i64, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE135_45_goodB2GData, align 8
  store i64 %2, ptr %stack_var_-40, align 8
  %3 = inttoptr i64 %2 to ptr
  %4 = call i32 @wcslen(ptr %3)
  %5 = sext i32 %4 to i64
  %6 = mul i64 %5, 4
  %7 = add nsw i64 %6, 27
  %8 = udiv i64 %7, 16
  %9 = mul i64 %8, 16
  %10 = and i64 %9, -4096
  %11 = sub i64 %0, %10
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_63a9e

dec_label_pc_63a9e:                               ; preds = %dec_label_pc_63a9e, %dec_label_pc_63a2b
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %12 = icmp eq i64 %rsp.0.reload, %11
  %13 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %13, ptr %rsp.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_63ab5, label %dec_label_pc_63a9e

dec_label_pc_63ab5:                               ; preds = %dec_label_pc_63a9e
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %14 = and i64 %9, %constexpr
  %15 = sub nsw i64 15, %14
  %16 = add i64 %15, %11
  %17 = and i64 %16, -16
  %18 = load i64, ptr %stack_var_-40, align 8
  %19 = inttoptr i64 %17 to ptr
  %20 = inttoptr i64 %18 to ptr
  %21 = call ptr @wcscpy(ptr %19, ptr %20)
  call void @printWLine(ptr %19)
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %1, %22
  br i1 %23, label %dec_label_pc_63b26, label %dec_label_pc_63b21

dec_label_pc_63b21:                               ; preds = %dec_label_pc_63ab5
  call void @__stack_chk_fail()
  br label %dec_label_pc_63b26

dec_label_pc_63b26:                               ; preds = %dec_label_pc_63b21, %dec_label_pc_63ab5
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_63b28:
  store i64 ptrtoint (ptr @global_var_baa78 to i64), ptr @CWE121_Stack_Based_Buffer_Overflow__CWE135_45_goodB2GData, align 8
  call void @anon0()
  ret void
}

define void @printWLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06e1:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a0713, label %dec_label_pc_a06f8

dec_label_pc_a06f8:                               ; preds = %dec_label_pc_a06e1
  %1 = call i32 (ptr, ...) @wprintf(ptr @global_var_c074c)
  br label %dec_label_pc_a0713

dec_label_pc_a0713:                               ; preds = %dec_label_pc_a06f8, %dec_label_pc_a06e1
  ret void
}

declare i32 @wcslen(ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @wprintf(ptr, ...) local_unnamed_addr

declare ptr @wcscpy(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

