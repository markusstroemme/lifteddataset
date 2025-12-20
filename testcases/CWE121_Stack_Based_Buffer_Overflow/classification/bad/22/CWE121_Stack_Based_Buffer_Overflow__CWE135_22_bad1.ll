@global_var_1000 = external global ptr
@CWE121_Stack_Based_Buffer_Overflow__CWE135_22_badGlobal = external local_unnamed_addr global i32
@global_var_fff = external global i32
@global_var_ba448 = external constant [2 x i8]

define void @anon0() local_unnamed_addr {
dec_label_pc_61d6f:
  store i32 1, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE135_22_badGlobal, align 4
  call void @anon1(ptr @global_var_ba448)
  ret void
}

define void @anon1(ptr %data) local_unnamed_addr {
dec_label_pc_61e78:
  %rsp.0.reg2mem = alloca i64, align 8
  %stack_var_-56 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i32, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE135_22_badGlobal, align 4
  %2 = icmp eq i32 %1, 0
  br i1 %2, label %dec_label_pc_61f65, label %dec_label_pc_61ea5

dec_label_pc_61ea5:                               ; preds = %dec_label_pc_61e78
  %3 = ptrtoint ptr %stack_var_-56 to i64
  %4 = call i32 @strlen(ptr %data)
  %5 = sext i32 %4 to i64
  %6 = mul i64 %5, 4
  %7 = add nsw i64 %6, 27
  %8 = udiv i64 %7, 16
  %9 = mul i64 %8, 16
  %10 = and i64 %9, -4096
  %11 = sub i64 %3, %10
  store i64 %3, ptr %rsp.0.reg2mem, align 8
  br label %dec_label_pc_61ef2

dec_label_pc_61ef2:                               ; preds = %dec_label_pc_61ef2, %dec_label_pc_61ea5
  %rsp.0.reload = load i64, ptr %rsp.0.reg2mem, align 8
  %12 = icmp eq i64 %rsp.0.reload, %11
  %13 = sub i64 %rsp.0.reload, ptrtoint (ptr @global_var_1000 to i64)
  store i64 %13, ptr %rsp.0.reg2mem, align 8
  br i1 %12, label %dec_label_pc_61f09, label %dec_label_pc_61ef2

dec_label_pc_61f09:                               ; preds = %dec_label_pc_61ef2
  %constexpr = zext i32 ptrtoint (ptr @global_var_fff to i32) to i64
  %14 = and i64 %9, %constexpr
  %15 = sub nsw i64 15, %14
  %16 = add i64 %15, %11
  %17 = and i64 %16, -16
  %18 = inttoptr i64 %17 to ptr
  %19 = bitcast ptr %data to ptr
  %20 = call ptr @wcscpy(ptr %18, ptr %19)
  %21 = inttoptr i64 %17 to ptr
  call void @printLine(ptr %21)
  br label %dec_label_pc_61f65

dec_label_pc_61f65:                               ; preds = %dec_label_pc_61f09, %dec_label_pc_61e78
  %22 = call i64 @__readfsqword(i64 40)
  %23 = icmp eq i64 %0, %22
  br i1 %23, label %dec_label_pc_61f7a, label %dec_label_pc_61f75

dec_label_pc_61f75:                               ; preds = %dec_label_pc_61f65
  call void @__stack_chk_fail()
  br label %dec_label_pc_61f7a

dec_label_pc_61f7a:                               ; preds = %dec_label_pc_61f75, %dec_label_pc_61f65
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

declare void @__stack_chk_fail() local_unnamed_addr

declare i32 @puts(ptr) local_unnamed_addr

declare ptr @wcscpy(ptr, ptr) local_unnamed_addr

declare i64 @__readfsqword(i64) local_unnamed_addr

