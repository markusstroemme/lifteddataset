@CWE121_Stack_Based_Buffer_Overflow__CWE805_char_declare_loop_68_goodG2BData = external local_unnamed_addr global i64

define void @anon1() local_unnamed_addr {
dec_label_pc_4550e:
  %dataBadBuffer_-128 = alloca [50 x i8], align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-120 to i64
  %2 = trunc i64 %1 to i8
  %3 = insertvalue [50 x i8] undef, i8 %2, 0
  store [50 x i8] %3, ptr %dataBadBuffer_-128, align 8
  %4 = bitcast ptr %dataBadBuffer_-128 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = inttoptr i64 %5 to ptr
  store i8 0, ptr %6, align 1
  %7 = load i64, ptr %4, align 8
  store i64 %7, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE805_char_declare_loop_68_goodG2BData, align 8
  call void @anon0()
  %8 = call i64 @__readfsqword(i64 40)
  %9 = icmp eq i64 %0, %8
  br i1 %9, label %dec_label_pc_45562, label %dec_label_pc_4555d

dec_label_pc_4555d:                               ; preds = %dec_label_pc_4550e
  call void @__stack_chk_fail()
  br label %dec_label_pc_45562

dec_label_pc_45562:                               ; preds = %dec_label_pc_4555d, %dec_label_pc_4550e
  ret void
}

define void @anon0() local_unnamed_addr {
dec_label_pc_45618:
  %storemerge1.reg2mem = alloca ptr, align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i64, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE805_char_declare_loop_68_goodG2BData, align 8
  %2 = call ptr @memset(ptr nonnull %stack_var_-120, i32 67, i32 99)
  %3 = ptrtoint ptr %stack_var_-120 to i64
  store ptr null, ptr %storemerge1.reg2mem, align 8
  br label %dec_label_pc_45662

dec_label_pc_45662:                               ; preds = %dec_label_pc_45618, %dec_label_pc_45662
  %storemerge1.reload = load ptr, ptr %storemerge1.reg2mem, align 8
  %4 = ptrtoint ptr %storemerge1.reload to i64
  %5 = add i64 %1, %4
  %6 = add i64 %4, %3
  %7 = inttoptr i64 %6 to ptr
  %8 = load i8, ptr %7, align 1
  %9 = inttoptr i64 %5 to ptr
  store i8 %8, ptr %9, align 1
  %10 = add i64 %4, 1
  %11 = inttoptr i64 %10 to ptr
  %12 = icmp ugt ptr %11, inttoptr (i64 99 to ptr)
  store ptr %11, ptr %storemerge1.reg2mem, align 8
  br i1 %12, label %dec_label_pc_45689, label %dec_label_pc_45662

dec_label_pc_45689:                               ; preds = %dec_label_pc_45662
  %13 = add i64 %1, 99
  %14 = inttoptr i64 %13 to ptr
  store i8 0, ptr %14, align 1
  %15 = inttoptr i64 %1 to ptr
  call void @printLine(ptr %15)
  %16 = call i64 @__readfsqword(i64 40)
  %17 = icmp eq i64 %0, %16
  br i1 %17, label %dec_label_pc_456b5, label %dec_label_pc_456b0

dec_label_pc_456b0:                               ; preds = %dec_label_pc_45689
  call void @__stack_chk_fail()
  br label %dec_label_pc_456b5

dec_label_pc_456b5:                               ; preds = %dec_label_pc_456b0, %dec_label_pc_45689
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

declare i64 @__readfsqword(i64) local_unnamed_addr

