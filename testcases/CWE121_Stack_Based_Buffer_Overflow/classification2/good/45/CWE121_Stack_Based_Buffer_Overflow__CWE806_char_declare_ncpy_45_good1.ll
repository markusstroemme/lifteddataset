@CWE121_Stack_Based_Buffer_Overflow__CWE806_char_declare_ncpy_45_goodG2BData = external local_unnamed_addr global i64

define void @anon0() local_unnamed_addr {
dec_label_pc_5a214:
  %stack_var_-72 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = load i64, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE806_char_declare_ncpy_45_goodG2BData, align 8
  store i64 0, ptr %stack_var_-72, align 8
  %2 = inttoptr i64 %1 to ptr
  %3 = call i32 @strlen(ptr %2)
  %4 = bitcast ptr %stack_var_-72 to ptr
  %5 = call ptr @strncpy(ptr nonnull %4, ptr %2, i32 %3)
  call void @printLine(ptr %2)
  %6 = call i64 @__readfsqword(i64 40)
  %7 = icmp eq i64 %0, %6
  br i1 %7, label %dec_label_pc_5a2b7, label %dec_label_pc_5a2b2

dec_label_pc_5a2b2:                               ; preds = %dec_label_pc_5a214
  call void @__stack_chk_fail()
  br label %dec_label_pc_5a2b7

dec_label_pc_5a2b7:                               ; preds = %dec_label_pc_5a2b2, %dec_label_pc_5a214
  ret void
}

define void @anon1() local_unnamed_addr {
dec_label_pc_5a2b9:
  %dataBuffer_-128 = alloca [100 x i8], align 8
  %stack_var_-120 = alloca i64, align 8
  %0 = call i64 @__readfsqword(i64 40)
  %1 = ptrtoint ptr %stack_var_-120 to i64
  %2 = trunc i64 %1 to i8
  %3 = insertvalue [100 x i8] undef, i8 %2, 0
  store [100 x i8] %3, ptr %dataBuffer_-128, align 8
  %4 = bitcast ptr %dataBuffer_-128 to ptr
  %5 = load i64, ptr %4, align 8
  %6 = inttoptr i64 %5 to ptr
  %7 = call ptr @memset(ptr %6, i32 65, i32 49)
  %8 = add i64 %5, 49
  %9 = inttoptr i64 %8 to ptr
  store i8 0, ptr %9, align 1
  %10 = load i64, ptr %4, align 8
  store i64 %10, ptr @CWE121_Stack_Based_Buffer_Overflow__CWE806_char_declare_ncpy_45_goodG2BData, align 8
  call void @anon0()
  %11 = call i64 @__readfsqword(i64 40)
  %12 = icmp eq i64 %0, %11
  br i1 %12, label %dec_label_pc_5a327, label %dec_label_pc_5a322

dec_label_pc_5a322:                               ; preds = %dec_label_pc_5a2b9
  call void @__stack_chk_fail()
  br label %dec_label_pc_5a327

dec_label_pc_5a327:                               ; preds = %dec_label_pc_5a322, %dec_label_pc_5a2b9
  ret void
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

