@global_var_1000 = external global ptr
@CWE121_Stack_Based_Buffer_Overflow__CWE135_45_goodG2BData = external local_unnamed_addr global i64
@global_var_bab28 = external constant [43 x i8]
@global_var_fff = external global i32

define void @anon0() local_unnamed_addr {
dec_label_pc_638fb:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-40 = alloca i64, align 8
  %0 = ptrtoint ptr %stack_var_-40 to i64
  %1 = call i64 @__readfsqword(i64 40)
  %2 = load i64, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE135_45_goodG2BData, align 8
  store i64 %2, ptr %stack_var_-40, align 8
  %3 = inttoptr i64 %2 to ptr
  %4 = call i32 @strlen(ptr %3)
  %5 = sext i32 %4 to i64
  %6 = add nsw i64 %5, 24
  %7 = udiv i64 %6, 16
  %8 = mul i64 %7, 16
  %9 = and i64 %8, -4096
  %10 = sub i64 %0, %9
  store i64 %0, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_6396a

dec_label_pc_6396a:                               ; preds = %dec_label_pc_6396a, %dec_label_pc_638fb
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %11 = icmp eq i64 %rsp.0.reload, %10
  %12 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %12, ptr %rsp.0.reg2mem, align 8
  br i1 %11, label %dec_label_pc_63981, label %dec_label_pc_6396a

dec_label_pc_63981:                               ; preds = %dec_label_pc_6396a
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %13 = and i64 %8, %constexpr
  %14 = sub nsw i64 15, %13
  %15 = add i64 %14, %10
  %16 = and i64 %15, -16
  %17 = load i64, ptr %stack_var_-40, align 8
  %18 = inttoptr i64 %16 to ptr
  %19 = inttoptr i64 %17 to ptr
  %20 = call ptr @strcpy(ptr %18, ptr %19)
  call void @printLine(ptr %18)
  %21 = call i64 @__readfsqword(i64 40)
  %22 = icmp eq i64 %1, %21
  br i1 %22, label %dec_label_pc_639f2, label %dec_label_pc_639ed

dec_label_pc_639ed:                               ; preds = %dec_label_pc_63981
  call void @__stack_chk_fail()
  br label %dec_label_pc_639f2

dec_label_pc_639f2:                               ; preds = %dec_label_pc_639ed, %dec_label_pc_63981
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_639f4:
  store i64 ptrtoint (ptr @global_var_bab28 to i64), ptr @CWE121_Stack_Based_Buffer_Overflow__CWE135_45_goodG2BData, align 8
  call void @anon0()
  ret void
}

define void @printLine(ptr %line) local_unnamed_addr {
dec_label_pc_a06bb:
  %0 = icmp eq ptr %line, null
  br i1 %0, label %dec_label_pc_a06de, label %dec_label_pc_a06d2

dec_label_pc_a06d2:                               ; preds = %dec_label_pc_a06bb
  %1 = call i32 @puts(ptr nonnull %line)
  br label %dec_label_pc_a06de

dec_label_pc_a06de:                               ; preds = %dec_label_pc_a06d2, %dec_label_pc_a06bb
  ret void
}

declare i32 @strlen(ptr) local_unnamed_addr

declare ptr @strcpy(ptr, ptr) local_unnamed_addr

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

